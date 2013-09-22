import 'dart:html';
import 'package:polymer/polymer.dart';

class Model extends Object with ObservableMixin {
  @observable
  String value = "Initial value";
  
  // bind an event method to a custom attribute
  var myBlur;
  
  Model() {
    myBlur = onBlur;
  }
  
  void onBlur(e) {
    // this prints the wrong value because value is not updated
    // see comment in index.html
    window.alert(value);
  }
}

main() {
  query('#tmpl').model = new Model();
}