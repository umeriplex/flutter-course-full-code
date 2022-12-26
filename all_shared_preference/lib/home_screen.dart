import 'package:all_shared_preference/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String email = '';
  String age = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preference'),
        backgroundColor: Colors.teal,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(child: Text(email)),
        Center(child: Text(age)),
        InkWell(
          onTap: () async {
            SharedPreferences sp = await SharedPreferences.getInstance();
            sp.clear();

            Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
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
                    'Log out',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
        ),
      ],
    ),
    );
  }

  void loadData() async {
    SharedPreferences spp = await SharedPreferences.getInstance();
    setState(() {
      email = spp.getString('email')!;
      age = spp.getString('age')!;
    });
  }
}
