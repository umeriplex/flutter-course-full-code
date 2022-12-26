import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({Key? key}) : super(key: key);

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {

  String email = '';
  String age = '';
  String type = '';

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
        title: Text('Student Screen'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          children: [
            Text(email),
            Text(type),
            Text(age),
          ],
        ),
      ),
    );
  }

  void loadData() async {
    SharedPreferences spp = await SharedPreferences.getInstance();
    setState(() {
      email = spp.getString('email')!;
      age = spp.getString('age')!;
      type = spp.getString('type')!;
    });
  }
}
