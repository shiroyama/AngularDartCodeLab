library phonecat;

import 'package:angular/angular.dart';

@NgController(
  selector: '[phone-list]',
  publishAs: 'ctrl'
)
class PhoneListCtrl {
  List<Map> phones = [
{'name': 'Nexus S',
 'snippet': 'Fast just got faster with Nexus S.'},
{'name': 'Motorola XOOM™ with Wi-Fi',
 'snippet': 'The Next, Next Generation tablet.'},
{'name': 'MOTOROLA XOOM™',
 'snippet': 'The Next, Next Generation tablet.'},
  ];
}

main() {
  Module phoneCatModule = new Module()..type(PhoneListCtrl);
  ngBootstrap(module: phoneCatModule);
}
