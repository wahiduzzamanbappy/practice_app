import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TravelerApp());
}

class TravelerApp extends StatelessWidget {
  const TravelerApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Travel App',
      //home: Home(),
    );
  }

}


class Home extends StatefulWidget {
  const Home({super.key});

  @override

  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void showSnackBarMessage(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.deepPurpleAccent,
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  final TextEditingController _MobileNumberTEController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Create an Account",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Enter Mobile Number:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CountryCodePicker(
                    onChanged: (code) => print(code),
                    initialSelection: 'BD',
                    favorite: const ['+880', 'BD'],
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: 'Mobile Number',
                          hintStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 16.0),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          /* focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(color: Colors.red),
                          ),*/
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100.0, vertical: 8.0),
                  ),
                  onPressed: () {
                    String MB = _MobileNumberTEController.text;
                    if (MB.isNotEmpty) {
                      showSnackBarMessage(context, 'Logged in');
                    } else {
                      showSnackBarMessage(
                          context, 'Logged Failed, Missing Data!');
                    }
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Center(child: Text('Or')),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Continue with Apple'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Continue with Facebook',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Continue with Google',
                    style: TextStyle(
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Center(
                child: Container(
                    height: 100,
                    width: 180,
                    child: const Text(
                      'By Signing up, you agree to our terms of service and Privacy Policy.',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    )),
              ),
              const SizedBox(height: 80),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already had an account?'),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
