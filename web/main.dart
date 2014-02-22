library phonecat;

import 'package:angular/angular.dart';

@NgController(
  selector: '[phone-list]',
  publishAs: 'ctrl'
)
class PhoneListCtrl {
  List<Map> phones = [
    {'name': 'Nexus S',
     'snippet': 'Fast just got faster with Nexus S.',
     'age' : 1,
    },
    {'name': 'Motorola XOOM™ with Wi-Fi',
     'snippet': 'The Next, Next Generation tablet.',
     'age' : 2,
    },
    {'name': 'MOTOROLA XOOM™',
     'snippet': 'The Next, Next Generation tablet.',
     'age' : 3,
    },
  ];
  String orderProp = "age";
}

main() {
  Module phoneCatModule = new Module()..type(PhoneListCtrl);
  ngBootstrap(module: phoneCatModule);
}
