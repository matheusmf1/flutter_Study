import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {

  _LoginStore(){
    autorun((_) {
      print(email);
      print(password);
      print(isFormValid);
    });
  }

  @observable
  String email = "";

  @action
  void setEmail( String value ) => email = value;

  @observable
  String password = "";

  @action
  void setPassword( String value ) => password = value;

  //Vamos combinar o estado desses dois observables
  // @computed
  // bool get isFormValid => email.length > 6 && password.length > 6;

  @computed
  bool get isPasswordValid => password.length >= 6;

  @computed
  bool get isEmailValid => RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);

  @computed
  bool get isFormValid => isPasswordValid && isEmailValid;
}
