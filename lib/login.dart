import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(children: [
              Image.asset('asset/login4.png'),
            ]),
            SizedBox(height: 10),
            Text(
              'Login',
              style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold,
                fontSize: 31,
                letterSpacing: 4.0,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Silakan login terlebih dahulu!',
              style: TextStyle(
                  color: Colors.black87, fontSize: 15, letterSpacing: 1.0),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.deepOrangeAccent,
                  ),
                  hintText: 'Masukan Username',
                  labelText: ('Username'),
                ),
                onSaved: (String? value) {},
                validator: (String? value) {
                  return (value != null) ? 'Username tidak boleh Kosong' : null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.deepOrangeAccent,
                  ),
                  suffixIcon: Icon(Icons.visibility_off),
                  labelText: ('Password'),
                  hintText: 'Masukan Password',
                  labelStyle: TextStyle(color: Colors.grey),
                ),
                onSaved: (String? value) {},
                validator: (String? value) {
                  return (value != null) ? 'Password tidak boleh Kosong' : null;
                },
              ),
            ),
            SizedBox(height: 5),
            TextButton(onPressed: () {},
                child: Text("Lupa Password?")),
            SizedBox(height: 3),
            ElevatedButton(
              onPressed: () {},
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
