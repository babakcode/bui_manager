import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffbec5d9),
              Color(0xff616a7e),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'BUI',
                        style: TextStyle(
                            color: Color(0xff5f687d),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                              color: Color(0xff5f687d),
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .08,
                ),
                const Text(
                  'Sign in',
                  style: TextStyle(
                      color: Color(0xff5f687d),
                      fontSize: 70,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Hello there! Sign in and start managing\nyour Store items',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff5f687d),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'Email',
                        fillColor: Colors.transparent,
                        filled: true),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        fillColor: Colors.transparent,
                        suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.visibility)),
                        filled: true),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                MaterialButton(
                  color: Colors.white,
                  onPressed: () {},
                  minWidth: 100,
                  height: 46,
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      color: Color(0xff5f687d),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .2),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Forget Password?  Terms and Conditions',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
