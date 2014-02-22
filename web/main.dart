library phonecat;

import 'package:angular/angular.dart';

@NgController(
  selector: '[phone-list]',
  publishAs: 'ctrl'
)
class PhoneListCtrl {
    HTTP _http;
    List<Map> phones = [];
    String orderProp = "age";

    PhoneListCtrl(this._http) {
        this._http.get("./phones/phones.json").then((resp) {
            this.phones = resp.data;
        });
    }
}

main() {
  Module phoneCatModule = new Module()..type(PhoneListCtrl);
  ngBootstrap(module: phoneCatModule);
}
