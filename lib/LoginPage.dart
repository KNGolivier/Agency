import 'package:flutter/material.dart';
import 'CreationPage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF018868),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff018868),
        elevation: 0,
        toolbarHeight: 150,
        flexibleSpace: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff018868),
                image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 10,
              child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(1),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color(0xff018868),
                      size: 20,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          height: 1000,
          constraints: BoxConstraints(),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    "Hello Again!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Center(
                  child: Text(
                    "Sign in to your account",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Email",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                    "Password",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: const Icon(Icons.visibility),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot your password?",
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width: 400,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF018868),
                        padding: const EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        )),
                    onPressed: () {},
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Or with",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.grey)),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: 400,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1p9Dck_pBmTM6xn74IMV-JXr0bK3Jjrk8Ig&s',
                        height: 24,
                        width: 24,
                      ),
                      label: const Text(
                        "Sign in with Google",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          )),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: 400,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQl-TfMOnpB-VAG3HqfSeZmc3hyCp7vnuK4AQ&s',
                        height: 24,
                        width: 24,
                      ),
                      label: const Text(
                        "Sign in with Twitter",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Creationpage()),
                      );
                    },
                    child: const Text(
                      "Not a member yet? Sign up",
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
