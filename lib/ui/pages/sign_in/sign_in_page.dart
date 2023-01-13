import 'package:bui_managers/ui/widgets/app_text_field.dart';
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
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      MaterialButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/sign_up'),
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
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
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
                        const AppTextField(hintText: 'Email'),
                        const SizedBox(
                          height: 10,
                        ),
                        AppTextField(
                          hintText: 'Password',
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.visibility)),
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
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Forget Password?  Terms and Conditions',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
