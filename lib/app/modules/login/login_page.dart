import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:template_app/app/modules/login/login_store.dart';
import 'package:template_app/app/modules/login/widgets/custom_textfield_widget.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends ModularState<LoginPage, LoginStore> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Username"),
                  ),
                  CustomTextfieldWidget(
                    onChange: controller.onChangeUserName,
                    editingController: _usernameController,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Password"),
                  ),
                  CustomTextfieldWidget(
                    onChange: controller.onChangePassword,
                    obscure: true,
                    editingController: _passwordController,
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  final String? token = await controller.doLogin();
                  if (token != null) {
                    _usernameController.text = "";
                    controller.onChangeUserName("");
                    _passwordController.text = "";
                    controller.onChangePassword("");
                    Modular.to.pushNamed("/home");
                  }
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Username or password is invalid!"),
                    action: SnackBarAction(
                      label: "close",
                      onPressed: () =>
                          ScaffoldMessenger.of(context).hideCurrentSnackBar(),
                    ),
                  ));
                },
                child: Text("Sign in"))
          ],
        ),
      ),
    );
  }
}
