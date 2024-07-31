import 'package:flutter/material.dart';
class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'Lets get started',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
        ),
        backgroundColor: const Color(0xFF039678),

      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            children: [
              TextFormField(
                initialValue: 'Enter first name',
                decoration: const InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.person,
                  ),
                ),
              ),
              TextFormField(
                initialValue: 'Enter last name',
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.person,
                  ),
                ),
              ),
              TextFormField(
                initialValue: 'Enter email address',
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ),
              TextFormField(
                initialValue: 'Enter password',
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.password,
                  ),
                ),
              ),

              TextFormField(
                initialValue: 'Business Name',
                decoration: const InputDecoration(
                  labelText: 'Enter Business Name',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.business,
                  ),
                ),
              ),
              TextFormField(
                initialValue: 'Business Location',
                decoration: const InputDecoration(
                  labelText: 'Enter Business location',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.map,
                  ),
                ),
              ),
            ],

          ),
        ),

      )

      );
  }
}
