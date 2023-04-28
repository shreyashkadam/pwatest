//To create an interactive Form using form widget (Form)
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const appTitle = "Form validation";
    return MaterialApp(
        title: appTitle,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(appTitle),
          ),
          body: const MyCustomForm(),
        ));
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);
  @override
  MyCustomFormState createState() => MyCustomFormState();
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: "Enter Name",
              labelText: "What's your Name ?",
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter some text";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.phone),
              hintText: "Enter Phone Number",
              labelText: "What's your Phone Number",
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter Phone Number";
              } else if (value.length < 10 || value.length > 10) {
                return "Please enter a valid number";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.calendar_today),
              hintText: "Enter Date of Birth",
              labelText: "Date of Birth",
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter some text";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.email_outlined),
              hintText: "Enter your Email ID",
              labelText: "Email ID",
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter Email ID";
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formkey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Processing Data")),
                );
              }
            },
            child: const Text("Submit"),
          )
        ],
      ),
    );
  }
}