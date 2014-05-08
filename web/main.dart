import 'package:di/di.dart';
import 'package:angular/angular.dart';
import 'package:angular/core_dom/module_internal.dart';
import 'package:angular/application_factory.dart';

import 'package:benchmark_harness/benchmark_harness.dart';


import 'dart:html';
import 'dart:math';
import 'dart:js' as js;


@Component(
  selector: 'comp',
  templateUrl: 'comp.html',
  cssUrl: 'comp.css',
  publishAs: 'ctrl')
class TreeComponenet {
  @NgTwoWay('data')
  var data;

}

@Component(
  selector: 'boot-comp',
  templateUrl: 'comp.html',
  cssUrl: const ['bootstrap.css', 'comp.css'],
  publishAs: 'ctrl')
class Bootstrap {
  @NgTwoWay('data')
  var data;

}

class ViewBenchmark extends BenchmarkBase {
  ViewBenchmark(this.numDirs, this.numElements) : super("ViewBenchmark");

  num numDirs;
  num numElements;
  Injector _injector;
  Compiler _compiler;
  DirectiveMap _dm;
  VmTurnZone _zone;
  Scope _scope;
  var _ts;
  var _viewFactory;
  var _linkArgs;

  var _baseNum = 0;

  var html;

  var cleanup, createDom;


  // Run a single Angular expression inside of the Angular Zone.
  void eval(String exp) {
    _zone.run(() {

    });
  }

  // Run all the expressions.
  void run() => eval('');

  void setup() {

    
    var module = new Module()
      ..type(TreeComponenet)
      ..type(Bootstrap)
      
    ;
    
    

    var injector = applicationFactory().addModule(module).run();
    _injector = injector;
    _zone = injector.get(VmTurnZone);
    _dm = injector.get(DirectiveMap);
    _ts = injector.get(NodeTreeSanitizer);
    _compiler = injector.get(Compiler);
    _scope = injector.get(Scope);

    _scope.context['components'] = ['Hello'];

   
      cleanup = (_) => _zone.run(() {
        _scope.context['components'] = [];
      });

      var count = 0;
      createDom = (_) => _zone.run(() {
        var maxDepth = 9;
        var values = [];
        for (var i = 0; i < 100; i++) {
          values.add('C$i');
        }
        _scope.context['components'] = values;

      });

      js.context['benchmarkSteps'].add(new js.JsObject.jsify({
        "name": "cleanup", "fn": new js.JsFunction.withThis(cleanup)
        }));
      js.context['benchmarkSteps'].add(new js.JsObject.jsify({
        "name": "createDom", "fn": new js.JsFunction.withThis(createDom)
        }));

    

  }

  void teardown() { }
}

// Main function runs the benchmark.
main() {
 var query = window.location.search;
  var args = query.split(',');

  var numElements = args.length > 2 ? int.parse(args[2]) : 30;
  var numDirs = args.length > 1 ? int.parse(args[1]) : 30;

  var benchmark = new ViewBenchmark(numDirs, numElements);

  
  var evalCmds = ['a', 'b'];
  // Use the continuous animated runner if for '?show'
  if (args.length > 0 && args[0] == '?show') {
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
    benchmark.setup();
  }
}