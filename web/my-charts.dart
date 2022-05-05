// Dart JS示例
// AntV可视化组件（https://antv.antfin.com/zh-cn/g2/3.x/demo/pie/color-rose.html#）
// Dart JS文档（https://api.dart.cn/stable/2.16.2/dart-js/dart-js-library.html）

import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#dart-status') as DivElement;
  dartStatus.text = 'Dart is running!';

  var myData = JsObject.jsify([
    {'year': '2000 年', 'sales': 138},
    {'year': '2001 年', 'sales': 352},
    {'year': '2002 年', 'sales': 361},
    {'year': '2003 年', 'sales': 145},
    {'year': '2004 年', 'sales': 408},
    {'year': '2005 年', 'sales': 308},
    {'year': '2006 年', 'sales': 38},
    {'year': '2007 年', 'sales': 380},
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}
