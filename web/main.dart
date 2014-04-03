import 'package:di/di.dart';
import 'package:angular/angular.dart';
import 'package:angular/core_dom/module_internal.dart';
import 'package:angular/angular_dynamic.dart';

import 'package:benchmark_harness/benchmark_harness.dart';


import 'dart:html';

/* Gen 100 different directives */
@NgDirective(selector:'[dX]') class DirX { DirX(Scope s) { s.context['x']++;}}

@NgDirective(selector:'[d1]') class Dir1 { Dir1(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d2]') class Dir2 { Dir2(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d3]') class Dir3 { Dir3(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d4]') class Dir4 { Dir4(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d5]') class Dir5 { Dir5(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d6]') class Dir6 { Dir6(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d7]') class Dir7 { Dir7(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d8]') class Dir8 { Dir8(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d9]') class Dir9 { Dir9(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d10]') class Dir10 { Dir10(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d11]') class Dir11 { Dir11(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d12]') class Dir12 { Dir12(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d13]') class Dir13 { Dir13(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d14]') class Dir14 { Dir14(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d15]') class Dir15 { Dir15(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d16]') class Dir16 { Dir16(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d17]') class Dir17 { Dir17(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d18]') class Dir18 { Dir18(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d19]') class Dir19 { Dir19(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d20]') class Dir20 { Dir20(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d21]') class Dir21 { Dir21(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d22]') class Dir22 { Dir22(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d23]') class Dir23 { Dir23(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d24]') class Dir24 { Dir24(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d25]') class Dir25 { Dir25(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d26]') class Dir26 { Dir26(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d27]') class Dir27 { Dir27(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d28]') class Dir28 { Dir28(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d29]') class Dir29 { Dir29(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d30]') class Dir30 { Dir30(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d31]') class Dir31 { Dir31(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d32]') class Dir32 { Dir32(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d33]') class Dir33 { Dir33(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d34]') class Dir34 { Dir34(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d35]') class Dir35 { Dir35(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d36]') class Dir36 { Dir36(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d37]') class Dir37 { Dir37(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d38]') class Dir38 { Dir38(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d39]') class Dir39 { Dir39(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d40]') class Dir40 { Dir40(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d41]') class Dir41 { Dir41(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d42]') class Dir42 { Dir42(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d43]') class Dir43 { Dir43(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d44]') class Dir44 { Dir44(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d45]') class Dir45 { Dir45(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d46]') class Dir46 { Dir46(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d47]') class Dir47 { Dir47(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d48]') class Dir48 { Dir48(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d49]') class Dir49 { Dir49(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d50]') class Dir50 { Dir50(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d51]') class Dir51 { Dir51(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d52]') class Dir52 { Dir52(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d53]') class Dir53 { Dir53(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d54]') class Dir54 { Dir54(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d55]') class Dir55 { Dir55(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d56]') class Dir56 { Dir56(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d57]') class Dir57 { Dir57(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d58]') class Dir58 { Dir58(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d59]') class Dir59 { Dir59(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d60]') class Dir60 { Dir60(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d61]') class Dir61 { Dir61(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d62]') class Dir62 { Dir62(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d63]') class Dir63 { Dir63(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d64]') class Dir64 { Dir64(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d65]') class Dir65 { Dir65(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d66]') class Dir66 { Dir66(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d67]') class Dir67 { Dir67(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d68]') class Dir68 { Dir68(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d69]') class Dir69 { Dir69(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d70]') class Dir70 { Dir70(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d71]') class Dir71 { Dir71(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d72]') class Dir72 { Dir72(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d73]') class Dir73 { Dir73(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d74]') class Dir74 { Dir74(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d75]') class Dir75 { Dir75(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d76]') class Dir76 { Dir76(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d77]') class Dir77 { Dir77(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d78]') class Dir78 { Dir78(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d79]') class Dir79 { Dir79(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d80]') class Dir80 { Dir80(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d81]') class Dir81 { Dir81(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d82]') class Dir82 { Dir82(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d83]') class Dir83 { Dir83(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d84]') class Dir84 { Dir84(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d85]') class Dir85 { Dir85(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d86]') class Dir86 { Dir86(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d87]') class Dir87 { Dir87(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d88]') class Dir88 { Dir88(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d89]') class Dir89 { Dir89(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d90]') class Dir90 { Dir90(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d91]') class Dir91 { Dir91(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d92]') class Dir92 { Dir92(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d93]') class Dir93 { Dir93(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d94]') class Dir94 { Dir94(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d95]') class Dir95 { Dir95(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d96]') class Dir96 { Dir96(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d97]') class Dir97 { Dir97(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d98]') class Dir98 { Dir98(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d99]') class Dir99 { Dir99(Scope s) { s.context['x']++;}}
@NgDirective(selector:'[d100]') class Dir100 { Dir100(Scope s) { s.context['x']++;}}



class ViewBenchmark extends BenchmarkBase {
  ViewBenchmark() : super("ViewBenchmark");

  Injector _injector;
  Compiler _compiler;
  DirectiveMap _dm;
  NgZone _zone;
  Scope _scope;
  var _ts;
  var _viewFactory;

  var html;

  // Run a single Angular expression inside of the Angular Zone.
  void eval(String exp) {
    _zone.run(() {
      var elt = document.body;
      elt.setInnerHtml('nope', treeSanitizer: _ts);
      _scope.context['x'] = 0;
      _viewFactory(_injector).nodes.forEach((n) => elt.append(n));

    });
  }

  // Run all the expressions.
  void run() => eval('');

  void setup() {

    var htmlBits = [];
    htmlBits.add('<span');
    for (var i = 1; i <= 100; i++) {
      htmlBits.add('d$i');
    }
    htmlBits.add('>- {{x}} - </span>');
    var once = htmlBits.join(' ');
    var all = [];
    for (var i = 0; i < 100; i++) {
      all.add(once);
    }
    html = all.join('');
    var module = new Module()
      ..type(DirX)
        ..type(Dir1)
        ..type(Dir2)
        ..type(Dir3)
        ..type(Dir4)
        ..type(Dir5)
        ..type(Dir6)
        ..type(Dir7)
        ..type(Dir8)
        ..type(Dir9)
        ..type(Dir10)
        ..type(Dir11)
        ..type(Dir12)
        ..type(Dir13)
        ..type(Dir14)
        ..type(Dir15)
        ..type(Dir16)
        ..type(Dir17)
        ..type(Dir18)
        ..type(Dir19)
        ..type(Dir20)
        ..type(Dir21)
        ..type(Dir22)
        ..type(Dir23)
        ..type(Dir24)
        ..type(Dir25)
        ..type(Dir26)
        ..type(Dir27)
        ..type(Dir28)
        ..type(Dir29)
        ..type(Dir30)
        ..type(Dir31)
        ..type(Dir32)
        ..type(Dir33)
        ..type(Dir34)
        ..type(Dir35)
        ..type(Dir36)
        ..type(Dir37)
        ..type(Dir38)
        ..type(Dir39)
        ..type(Dir40)
        ..type(Dir41)
        ..type(Dir42)
        ..type(Dir43)
        ..type(Dir44)
        ..type(Dir45)
        ..type(Dir46)
        ..type(Dir47)
        ..type(Dir48)
        ..type(Dir49)
        ..type(Dir50)
        ..type(Dir51)
        ..type(Dir52)
        ..type(Dir53)
        ..type(Dir54)
        ..type(Dir55)
        ..type(Dir56)
        ..type(Dir57)
        ..type(Dir58)
        ..type(Dir59)
        ..type(Dir60)
        ..type(Dir61)
        ..type(Dir62)
        ..type(Dir63)
        ..type(Dir64)
        ..type(Dir65)
        ..type(Dir66)
        ..type(Dir67)
        ..type(Dir68)
        ..type(Dir69)
        ..type(Dir70)
        ..type(Dir71)
        ..type(Dir72)
        ..type(Dir73)
        ..type(Dir74)
        ..type(Dir75)
        ..type(Dir76)
        ..type(Dir77)
        ..type(Dir78)
        ..type(Dir79)
        ..type(Dir80)
        ..type(Dir81)
        ..type(Dir82)
        ..type(Dir83)
        ..type(Dir84)
        ..type(Dir85)
        ..type(Dir86)
        ..type(Dir87)
        ..type(Dir88)
        ..type(Dir89)
        ..type(Dir90)
        ..type(Dir91)
        ..type(Dir92)
        ..type(Dir93)
        ..type(Dir94)
        ..type(Dir95)
        ..type(Dir96)
        ..type(Dir97)
        ..type(Dir98)
        ..type(Dir99)
        ..type(Dir100)

    ;
    
    var app = dynamicApplication();
    app.addModule(module);

    var injector = app.run();
    _injector = injector;
    _zone = injector.get(NgZone);
    _dm = injector.get(DirectiveMap);
    _ts = injector.get(NodeTreeSanitizer);
    _compiler = injector.get(Compiler);
    _scope = injector.get(Scope);

    var elt = document.createElement('div');
    elt.setInnerHtml(html, treeSanitizer: _ts);
    _viewFactory = _compiler([elt], _dm);

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

  var benchmark = new ViewBenchmark();

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