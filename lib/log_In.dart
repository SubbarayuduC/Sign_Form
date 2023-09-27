import 'package:flutter/material.dart';

class Log_in extends StatelessWidget{

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        key: formKey,
        title:'LogIn Form',
        home: Scaffold(
        appBar: AppBar(
        title: Text('LogIn')
    ),
      body: Column(
        children: [
          Text('LogIn'),

          Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: 'Email Address',
                border: OutlineInputBorder(),
              ),
              onChanged: (String value) {

              },
              validator: (value) {
                return value!.isEmpty
                    ? 'Please Enter Your Email Id.'
                    : null;
              },
            ),
          ),

          Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(hintText: 'Password',
                border: OutlineInputBorder(),
              ),
              onChanged: (String value) {

              },
              validator: (value) {
                return value!.isEmpty
                    ? 'Please Enter Your Password.'
                    : null;
              },
            ),
          ),
          SizedBox(height: 10,),

          Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {

                }
              },
              child: Text('SignIn', style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87),),
            ),
          ),
        ],
      ),
    ),
    );

    }
}

