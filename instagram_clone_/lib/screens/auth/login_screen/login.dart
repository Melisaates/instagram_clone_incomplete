import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/home_screen.dart';

import '../../../app/const/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.only(left: 340.0),
              child: Icon(
                Icons.close_sharp,
                color: Color.fromARGB(255, 66, 64, 64),
                size: 40.0,
              ),
            ),
            const SizedBox(height: 150),
            const Padding(
              padding:
                  EdgeInsets.only(left: 95.0, right: 95.0, top: 5, bottom: 2),
              child: Image(
                image: NetworkImage(
                    'https://marka-logo.com/wp-content/uploads/2020/04/Instagram-Logo.png'),
              ),
            ),
            const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone number, username or email',
                )),
            const SizedBox(height: 10),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 231.5,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                  child: const Text('Forgot password?'),
                ),
              ],
            ),
            //const SizedBox(height: 20),
            ElevatedButton(
              child: Text('Log In'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(20, 48),
                  //backgroundColor: Color.fromARGB(255, 110, 196, 236),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  'OR',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 80),
                  child: Icon(
                    Icons.facebook,
                    color: instagramBlue,
                    size: 24.0,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold), //kalınlaştırır.
                  ),
                  onPressed: () {},
                  child: const Text('Continue as Dave Johnson'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 5,
              color: Color.fromARGB(255, 229, 229, 229),
            ),
            Row(
              children: [
                const SizedBox(width: 90),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Align(
                        child: Text(
                      'Don\'t have an account?',
                      style: Theme.of(context).textTheme.caption,
                    ))),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                  child: const Text('Sign Up.'),
                ),
              ],
            ),
          ]),

      //floatingActionButton: FloatingActionButton(
      //onPressed: _incrementCounter,
      //tooltip: 'Increment',
      //child: const Icon(Icons.add),
      //), // This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}
