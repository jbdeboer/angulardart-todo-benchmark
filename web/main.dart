import 'package:di/di.dart';
import 'package:angular/angular.dart';
import 'package:angular/playback/playback_http.dart';
import 'package:benchmark_harness/benchmark_harness.dart';

import 'todo.dart';

import 'dart:html';

// Everything in the 'todo' library should be preserved by MirrorsUsed
@MirrorsUsed(
    targets: const['todo'],
    override: '*')
import 'dart:mirrors';


class TodoBenchmark extends BenchmarkBase {
  TodoBenchmark(this._evalCmds) : super("AngularDart Todo");

  List<String> _evalCmds;
  Scope _scope;
  NgZone _zone;

  // Run a single Angular expression inside of the Angular Zone.
  void eval(String exp) {
    _zone.run(() => _scope.eval(exp));
  }

  // Run all the expressions.
  void run() => _evalCmds.forEach(eval);

  void setup() {
    var getterCache = new GetterCache({
      "done" : (o) => o.done,
      "length" : (o) => o.length,
      "items" : (o) => o.items,
      "text" : (o) => o.text,
      "newItem" : (o) => o.newItem,
      "isEmpty" : (o) => o.isEmpty
    });
    var module = new Module()
      ..type(TodoController)
      ..type(PlaybackHttpBackendConfig)
      ..type(ServerController, implementedBy: NoServerController)
      ..value(GetterCache, getterCache);

    var injector = ngBootstrap(module:module);
    _zone = injector.get(NgZone);
    _scope = ngScope(ngQuery(window.document, '[todo-controller]')[0]);
  }

  void teardown() { }
}

// Main function runs the benchmark.
main() {
  var evalCmds = [
    'todo.markAllDone()',
    'todo.archiveDone()'
  ];
  var NUM_ITEMS = 20;
  // Add 20 items
  for (var i = 0; i < NUM_ITEMS; i++) {
    evalCmds.add('todo.newItem.text="item $i"');
    evalCmds.add('todo.add()');
  }
  // Check off each item from item 19 to item 0.
  for (var i = NUM_ITEMS - 1; i >= 0; i--) {
    evalCmds.add('todo.items[$i].done=true');
  }

  var benchmark = new TodoBenchmark(evalCmds);

  // Use the continuous animated runner if for '?show'
  var query = window.location.search;
  if (query == '?show') {
      benchmark.setup();
      var cmdPos = 0;
      var cmdLen = evalCmds.length;
      var rAFCallback;
      rAFCallback = (timer) {
        var cmd = evalCmds[cmdPos++];
        if (cmdPos == cmdLen) cmdPos = 0;


        benchmark.eval(cmd);
        // Add a tick to the console so we know which expression
        // was run in the requestAnimationFrame.
        window.console.timeStamp(cmd);
        
        window.requestAnimationFrame(rAFCallback);
      };
      window.requestAnimationFrame(rAFCallback);
  } else {
    benchmark.report();
  }
}
