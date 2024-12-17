import 'package:factory_abstract_pattern/factory_abstract_pattern.dart' as factory_abstract_pattern;
abstract class Button{
  void render();
}

abstract class Dialog{
  void show();
}

class IosButton extends Button{
  @override
  void render() {
    print('ios button');
  }

}
class AndroidButton extends Button{
  @override
  void render() {
    print('android button');
  }

}

class IosDialog extends Dialog{
  @override
  void show() {
    print('show ios dialog');
  }

}
class AndroidDialog extends Dialog{
  @override
  void show() {
   print('show android dialog');
  }

}



abstract class FactoryWidget{
  Button button();
  Dialog dialog();
}


class Ios extends FactoryWidget{
  @override
  Button button() =>IosButton();

  @override
  Dialog dialog() =>IosDialog();
}
class Android extends FactoryWidget{
  @override
  Button button() =>AndroidButton();

  @override
  Dialog dialog() =>AndroidDialog();
}

void renderUI(FactoryWidget factory){
  Button button = factory.button();
  Dialog dialog = factory.dialog();

  button.render();
  dialog.show();
}
void main(List<String> arguments) {

  //android
  FactoryWidget android = Android();
  renderUI(android);


  //ios
  FactoryWidget ios = Ios();
  renderUI(ios);
}
