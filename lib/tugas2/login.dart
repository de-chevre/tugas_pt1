import 'package:flutter/material.dart';
import 'package:tugas_pt1/tugas%201/hal2.dart';

String name = 'admin';
String password = 'admin';

TextEditingController getUser = TextEditingController();
TextEditingController getPass = TextEditingController();
final formKey = GlobalKey<FormState>();
// final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 300,
          ),
          // const Padding(padding: EdgeInsets.all(12)),
          TextFormField(
            controller: getUser,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Username',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            ),
          ),
          TextFormField(
            controller: getPass,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  // String uname = 'admin';
                  // String pass = 'admin';

                  if (getUser.text.toString() == name) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecPage()));
                  }
                },
                child: const Text('Login'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
