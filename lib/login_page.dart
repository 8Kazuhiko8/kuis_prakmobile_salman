import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = true;
  bool isPasswordVisible = true;

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 3));

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage(username: username,)
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('BELA NEGARA'),
            centerTitle: true,
            titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            automaticallyImplyLeading: false,
          ),
          body: Column(
            children: [
              Image.asset('images/logo_upn.png'),
              _usernameField(),
              _passwordField(),
              _loginButton(context),
            ],
          ),
        ));
  }

  Widget _usernameField(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        onChanged: (value){
          username = value;
        },
        decoration: const InputDecoration(
            hintText: 'Username',
            contentPadding: const EdgeInsets.all(8.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.green),
            )
        ),
      ),
    );
  }

  Widget _passwordField(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        onChanged: (value){
          password = value;
          isPasswordVisible = true;
        },
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password',
            contentPadding: const EdgeInsets.all(8.0),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.green)
            )
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(onPressed: () {
        String text = "";
        if (username == "akina" && password == "123"){
          _navigateToHome();

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Mengarahkan ke HomePage"),
            ),
          );
          setState(() {
            text = "Login Sukses";
            isLoginSuccess = true;
          });
        } else {
          setState(() {
            text = "Login Gagal";
            isLoginSuccess = false;
          });
        }


        SnackBar snackBar = SnackBar(
          content: Text(text),
          backgroundColor: isLoginSuccess ? Colors.green : Colors.red,
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }, child: const Text('Login')),
    );
  }
}
