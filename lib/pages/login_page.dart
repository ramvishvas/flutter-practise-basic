import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/home_page.dart';
import 'package:flutter_basic/utils/constants.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/coder.jpg',
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.darken,
            color: Colors.black.withOpacity(0.7),
          ),
          Center(
            child: SingleChildScrollView(
              child: _MyForm(
                  formKey: formKey,
                  usernameController: _usernameController,
                  passwordController: _passwordController),
            ),
          ),
        ],
      ),
    );
  }
}

class _MyForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController _usernameController;
  final TextEditingController _passwordController;

  const _MyForm({
    Key key,
    @required this.formKey,
    @required TextEditingController usernameController,
    @required TextEditingController passwordController,
  })  : _usernameController = usernameController,
        _passwordController = passwordController,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Card(
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _usernameController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your email',
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your password',
                  labelText: 'Password',
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {
                    Constants.prefs.setBool('loggedIn', true);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => HomePage(),
                    //   ),
                    // );

                    // Navigator.pushNamed(
                    //   context,
                    //   HomePage.routeName,
                    // );

                    Navigator.pushReplacementNamed(
                      context,
                      HomePage.routeName,
                    );
                  },
                  color: Colors.orange,
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
