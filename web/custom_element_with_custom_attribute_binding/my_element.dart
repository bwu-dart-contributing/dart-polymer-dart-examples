import 'package:polymer/polymer.dart';

@CustomTag('my-element')
class MyElement extends PolymerElement with ObservableMixin {
  @observable String value;
  
  // bind an event method to a custom attribute
  var myblur;
  
  inserted(){
    super.inserted();
    this.onBlur.listen((e) => myblur(e));
  }
}