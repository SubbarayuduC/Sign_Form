import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: formKey,
      title:'SignIn Form',

      home: Scaffold(
        appBar: AppBar(
            title: Text('SignIn')
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Sign In',
              textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 30, color: Colors.green, fontWeight: FontWeight.w700
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Form(
                child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(hintText: 'First Name',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {

                      },
                      validator: (value) {
                        return value!.isEmpty
                            ? 'Please Enter First Name.'
                            : null;
                      },
                    ),
                  ),
                ],
              ),
              ),

            ),

            // Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            //   child: TextFormField(
            //     keyboardType: TextInputType.text,
            //     decoration: InputDecoration(hintText: 'Middle Name',
            //       border: OutlineInputBorder(),
            //     ),
            //     onChanged: (String value) {
            //
            //     },
            //     validator: (value) {
            //       return value!.isEmpty
            //           ? 'Please Enter Middle Name.'
            //           : null;
            //     },
            //   ),
            // ),

            Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(hintText: 'Last Name',
                  border: OutlineInputBorder(),
                ),
                onChanged: (String value) {

                },
                validator: (value) {
                  return value!.isEmpty
                      ? 'Please Enter Last Name.'
                      : null;
                },
              ),
            ),

            Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(hintText: 'D.O.B',
                  border: OutlineInputBorder(),
                ),
                onChanged: (String value) {

                },
                validator: (value) {
                  return value!.isEmpty
                      ? 'Please Enter Date Of Birth.'
                      : null;
                },
              ),
            ),

            Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(hintText: 'Gender',
                  border: OutlineInputBorder(),
                ),
                onChanged: (String value) {

                },
                validator: (value) {
                  return value!.isEmpty
                      ? 'Please Enter Your Gender.'
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
            //
            // Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            //   child: TextFormField(
            //     keyboardType: TextInputType.visiblePassword,
            //     decoration: InputDecoration(hintText: 'Confirm Password',
            //       border: OutlineInputBorder(),
            //     ),
            //     onChanged: (String value) {
            //
            //     },
            //     validator: (value) {
            //       return value!.isEmpty
            //           ? 'Please Re-Enter Your Password.'
            //           : null;
            //     },
            //   ),
            // ),

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