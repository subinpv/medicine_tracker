import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:medicine_tracker/screens/home.dart';
import 'package:medicine_tracker/widgets/inputfield.dart';
                                                               
class Registration extends StatefulWidget {   
  const Registration({super.key});       
                                                                                                                                                                                
  @override       
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff04516f),
      appBar: AppBar(
        title: const Text(
          "Registration",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff04516f),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Gap(50),
                  CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.white60,
                    child: Image.asset(
                      "asset/pillspng.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Gap(50),
                  InputFields(inputController: _username, hintTxt: 'user name'),
                  const SizedBox(
                    height: 20,
                  ),
                  InputFields(inputController: _email, hintTxt: 'email'),
                  const SizedBox(
                    height: 20,
                  ),
                  InputFields(inputController: _password, hintTxt: 'password'),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 45,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.red,
                              behavior: SnackBarBehavior.floating,
                              margin: EdgeInsets.all(20),
                              content: Text("login....."),
                            ),
                          );

                          // route
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) {
                                return const Home();
                              },
                            ),
                          );
                        } else {}
                      },
                      // ignore: sort_child_properties_last
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff15c79a)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
