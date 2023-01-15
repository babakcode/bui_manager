import 'package:bui_managers/ui/widgets/app_material_button.dart';
import 'package:bui_managers/ui/widgets/app_text_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String gender = 'Gender';
  bool isExpandedPanelList = false;
  String typeRadio = '';

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
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'BUI',
                      style: TextStyle(
                          color: Color(0xff5f687d),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .04,
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Sign up',
                          style: TextStyle(
                              color: Color(0xff5f687d),
                              fontSize: 70,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        /// todo should change text value
                        const Text(
                          'Hello there! Sign in and start managing\nyour Store items',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff5f687d),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .04,
                        ),
                        const AppTextField(hintText: 'Email'),
                        const SizedBox(
                          height: 10,
                        ),
                        AppTextField(
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.visibility),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const AppTextField(hintText: 'Full name'),
                        const SizedBox(
                          height: 10,
                        ),
                        const AppTextField(hintText: 'PhoneNumber', keyboardType: TextInputType.number),
                        const SizedBox(
                          height: 10,
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 400),
                          child: ExpansionPanelList(
                            expansionCallback: (panelIndex, isExpanded) {
                              setState(() {
                                isExpandedPanelList = !isExpanded;
                              });
                            },
                            elevation: 0,
                            expandedHeaderPadding: EdgeInsets.zero,
                            children: [
                              ExpansionPanel(
                                  backgroundColor: Colors.transparent,
                                  headerBuilder: (context, isExpanded) {
                                    return Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(14.0),
                                        child: Text(
                                          gender,
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ),
                                    );
                                  },
                                  body: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: Column(
                                      children: [
                                        ListTile(
                                          title: const Text(
                                            'Male',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              gender = 'Male';
                                              isExpandedPanelList = false;
                                            });
                                          },
                                        ),
                                        ListTile(
                                          title: const Text(
                                            'Female',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              gender = 'Female';
                                              isExpandedPanelList = false;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  isExpanded: isExpandedPanelList),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 400),
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Radio(
                                value: 'student',
                                groupValue: typeRadio,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      typeRadio = value!;
                                    },
                                  );
                                },
                              ),
                              const Text(
                                "I'm a student",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Radio(
                                value: 'designer',
                                groupValue: typeRadio,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      typeRadio = value!;
                                    },
                                  );
                                },
                              ),
                              const Text(
                                'Designer',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Radio(
                                value: 'developer',
                                groupValue: typeRadio,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      typeRadio = value!;
                                    },
                                  );
                                },
                              ),
                              const Text(
                                'Developer',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 10,
                        ),
                        const AppTextField(hintText: 'Company name'),
                        const SizedBox(
                          height: 10,
                        ),
                        const AppTextField(hintText: 'Country'),
                        const SizedBox(
                          height: 10,
                        ),
                        const AppTextField(hintText: 'City'),
                        const SizedBox(
                          height: 40,
                        ),

                        AppMaterialButton(text: 'Sign up'),

                        MaterialButton(
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          minWidth: 100,
                          height: 46,
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                                color: Color(0xff5f687d),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
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
