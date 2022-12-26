import 'package:all_shared_preference/home_screen.dart';
import 'package:all_shared_preference/student_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final List<String> items = [
    'admin',
    'teacher',
    'student',
  ];
  String? selectedValue;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: const TextStyle(fontFamily: 'Rubik Regular'),
                  fillColor: const Color(0xfff8f9fa),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffe4e7eb)),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffe4e7eb)),
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: const Icon(
                    Icons.alternate_email_outlined,
                    color: Color(0xff323f4b),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: TextFormField(
              controller: passwordController,
              obscureText: true,
              enableSuggestions: true,
              autocorrect: true,
              decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: const TextStyle(fontFamily: 'Rubik Regular'),
                  fillColor: const Color(0xfff8f9fa),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffe4e7eb)),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffe4e7eb)),
                      borderRadius: BorderRadius.circular(10)),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Color(0xff323f4b),
                  ),
                  prefixIcon: const Icon(
                    Icons.lock_open,
                    color: Color(0xff323f4b),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: ageController,
              decoration: InputDecoration(
                  hintText: 'Age',
                  hintStyle: const TextStyle(fontFamily: 'Rubik Regular'),
                  fillColor: const Color(0xfff8f9fa),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffe4e7eb)),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffe4e7eb)),
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: const Icon(
                    Icons.male,
                    color: Color(0xff323f4b),
                  )),
            ),
          ),
          InkWell(
            onTap: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();
              sp.setString('email', emailController.text.toString());
              sp.setString('age', ageController.text.toString());
              sp.setString('type', selectedValue ?? '');
              sp.setBool('islogin', true);

              if(sp.getString('type') == 'student'){
                Navigator.push(context, MaterialPageRoute(builder: (context) => StudentScreen()));
              }
              else if(sp.getString('type') == 'teacher'){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              }
                else{
                  print('Select first...');
              }
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                    child: Text(
                  'Log in',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ),
          DropdownButtonHideUnderline(
            child: DropdownButton2(
              isExpanded: true,
              hint: Row(
                children: const [
                  Icon(
                    Icons.list,
                    size: 16,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: Text(
                      'Select Item',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              items: items
                  .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ))
                  .toList(),
              value: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value as String;
                });
              },
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
              ),
              iconSize: 14,
              iconEnabledColor: Colors.black54,
              iconDisabledColor: Colors.black54,
              buttonHeight: 50,
              buttonWidth: 160,
              buttonPadding: const EdgeInsets.only(left: 14, right: 14),
              buttonDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: Colors.black,
                ),
                color: Colors.grey.withOpacity(.1),
              ),
              buttonElevation: 2,
              itemHeight: 40,
              itemPadding: const EdgeInsets.only(left: 14, right: 14),
              dropdownMaxHeight: 200,
              dropdownWidth: 200,
              dropdownPadding: null,
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.grey.withOpacity(.3),
              ),
              dropdownElevation: 1,
              scrollbarRadius: const Radius.circular(40),
              scrollbarThickness: 6,
              scrollbarAlwaysShow: true,
              offset: const Offset(-20, 0),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> testFunc() async {
    await Future.delayed(const Duration(seconds: 5));
    print('Delayed');
  }
}
