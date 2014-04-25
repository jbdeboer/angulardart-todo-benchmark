import 'package:di/di.dart';
import 'package:angular/angular.dart';
import 'package:angular/core_dom/module_internal.dart';
import 'package:angular/application_factory.dart';

import 'package:benchmark_harness/benchmark_harness.dart';


import 'dart:html';
import 'dart:math';
import 'dart:js' as js;

/* Gen 100 different directives */
@Component(
  selector: 'tree',
  template: '<span> {{ctrl.data.value}}'
  '<span ng-if="ctrl.data.right != null"><tree data=ctrl.data.right></span>'
  '<span ng-if="ctrl.data.left != null"><tree data=ctrl.data.left></span>'
  '</span>',
  publishAs: 'ctrl')
class TreeComponenet {
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
      
    ;
    
    

    var injector = applicationFactory().addModule(module).run();
    _injector = injector;
    _zone = injector.get(VmTurnZone);
    _dm = injector.get(DirectiveMap);
    _ts = injector.get(NodeTreeSanitizer);
    _compiler = injector.get(Compiler);
    _scope = injector.get(Scope);

    _scope.context['initData'] = {
      "value": "top",
      "right": {
        "value": "right"
      },
      "left": {
        "value": "left"
      }
    };

    buildTree(maxDepth, values, curDepth) {
      if (maxDepth == curDepth) return {};
      return {
        "value": values[curDepth],
        "right": buildTree(maxDepth, values, curDepth+1),
        "left": buildTree(maxDepth, values, curDepth+1)
         
      };
    }
      cleanup = (_) => _zone.run(() {
        _scope.context['initData'] = {};
      });

      var count = 0;
      createDom = (_) => _zone.run(() {
        var maxDepth = 9;
        var values = count++ % 2 == 0 ?
            ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '*'] :
            ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', '-'];
        _scope.context['initData'] = buildTree(maxDepth, values, 0);

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