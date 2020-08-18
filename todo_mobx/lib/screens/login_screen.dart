import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:todomobx/widgets/custom_icon_button.dart';
import 'package:todomobx/widgets/custom_text_field.dart';

import '../stores/login_store.dart';

import '../stores/login_store.dart';
import 'list_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  LoginStore loginStore;

  // Serve para limpar a memoria, pois o reaction fica rodando para sempre
  ReactionDisposer disposer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // autorun( (_) {

    //   if( loginStore.loggedIn ){
    //      Navigator.of(context).pushReplacement(
    //       MaterialPageRoute( builder: (context) => ListScreen() ) );
    //   }

    // });

    loginStore = Provider.of<LoginStore>(context);

// duas func, primeira para monitorar um valor
// a segunda é efeito, que recebe o valor modificado da primeira

// a reaction diferenre do autorun nao olha para o valor na primeira vez que inicia,
// ela espera uma troca do valor para poder executar
    disposer = reaction( (_) => loginStore.loggedIn, (logged) {

       if ( logged ) {
         Navigator.of(context).pushReplacement(
          MaterialPageRoute( builder: (context) => ListScreen() ) );
       }
    
     }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(32),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 16,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  
                  Observer( builder: (_) {
                    return CustomTextField(
                      hint: 'E-mail',
                      prefix: Icon(Icons.account_circle),
                      textInputType: TextInputType.emailAddress,
                      onChanged: loginStore.setEmail,
                      enabled: !loginStore.loading,
                    );
                  }
                  ),

                  const SizedBox(
                    height: 16,
                  ),

                  Observer(
                    builder: (_) {
                      return CustomTextField(
                        hint: 'Senha',
                        prefix: Icon(Icons.lock),
                        obscure: !loginStore.passwordVisible,
                        onChanged: loginStore.setPassword,
                        enabled: !loginStore.loading,
                        suffix: CustomIconButton(
                          radius: 32,
                          iconData: loginStore.passwordVisible ? Icons.visibility_off : Icons.visibility,
                          onTap: loginStore.isPasswordVisible,
                        ),
                      );
                    },
                  ),

                  const SizedBox(
                    height: 16,
                  ),
                  Observer(builder: (_) {
                    return SizedBox(
                      height: 44,
                      child: RaisedButton(

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),

                        child: loginStore.loading ? CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Colors.white),
                        ) : Text('Login'),

                        color: Theme.of(context).primaryColor,
                        disabledColor: Theme.of(context).primaryColor.withAlpha(100),
                        textColor: Colors.white,

                        onPressed: loginStore.loginPressed
                      ),
                    );
                  }),
                ],
              ),
            )),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    disposer();
  }
}