import 'package:flutter/material.dart';
import 'package:flutter_lottie_animation_demo/login.dart';
import 'dashboard.dart';
import 'thirdpage.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Color(0xff6b52d7),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            print((Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Mysetting()),
            )));
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Account'),
            subtitle: Text('Manage your account'),
            onTap: () {
              print((Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profileinfo()),
              )));
              // Go to the account settings screen.
            },
          ),
          ListTile(
            title: Text('Security'),
            subtitle:
                Text('Change your password, security questions, and more'),
            onTap: () {
              print((Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Chpass()),
              )));
              // Go to the security settings screen.
            },
          ),
          ListTile(
            title: Text('Notifications'),
            subtitle: Text('Manage your notifications'),
            onTap: () {
              // Go to the notifications settings screen.
            },
          ),
          ListTile(
            title: Text('Shipping'),
            subtitle: Text('Manage your shipping addresses'),
            onTap: () {
              // Go to the shipping settings screen.
            },
          ),
          ListTile(
            title: Text('Payments'),
            subtitle: Text('Manage your payment methods'),
            onTap: () {
              // Go to the payments settings screen.
            },
          ),
          ListTile(
            title: Text('Terms and Condition'),
            subtitle: Text('privacy policy'),
            onTap: () {
              print((Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Term()),
              )));
              // Go to the payments settings screen.
            },
          ),
          ListTile(
            title: Text('Logout'),
            subtitle: Text('Remove your account'),
            onTap: () {
              print((Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => loginpage()),
              )));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Logout Sucessfully!'),
                ),
              );
              // Go to the payments settings screen.
            },
          ),
        ],
      ),
    );
  }
}

class Profileinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        backgroundColor: Color(0xff6b52d7),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile image
            Image.network(
                'http://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-High-Quality-Image.png'),

            // Name and email
            ListTile(
              leading: Icon(Icons.person),
              title: Text('John Doe'),
              subtitle: Text('johndoe@example.com'),
              trailing: Icon(Icons.edit),
            ),

            // Shipping addresses
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Shipping addresses'),
              trailing: Icon(Icons.edit),
            ),

            // Payment methods
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Payment methods'),
              trailing: Icon(Icons.edit),
            ),

            // Order history
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Order history'),
              trailing: Icon(Icons.edit),
            ),

            // Settings
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              trailing: Icon(Icons.edit),
            ),
            // Payment methods
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Payment methods'),
              trailing: Icon(Icons.edit),
            ),
            // Payment methods
          ],
        ),
      ),
    );
  }
}

class Term extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms and Condition'),
        backgroundColor: Color(0xff6b52d7),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Terms of Service',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Here are the terms of service for using our app:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 4),
            Text(
              '1. You must be 18 years or older to use this app.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '2. You agree to the privacy policy outlined below.',
              style: TextStyle(fontSize: 16),
            ),
            // Add more terms as necessary.

            SizedBox(height: 24),

            Text(
              'Privacy Policy',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Here is our privacy policy:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 4),
            Text(
              '1. We collect and store your personal information as needed to provide our services.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '2. We may share your data with third-party services to improve our app.',
              style: TextStyle(fontSize: 16),
            ),
            // Add more policy details as necessary.

            SizedBox(height: 24),

            Text(
              'Contact Us',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'If you have any questions or concerns about our terms and policy, please contact us:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 4),
            Text(
              'Email: contact@example.com',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Phone: +1 123-456-7890',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class Chpass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
        backgroundColor: Color(0xff6b52d7),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Enter old password',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Enter new password',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Confirm new password',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                child: Text(
                  'Change Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                onPressed: () {
                  print((Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mysetting()),
                  )));
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff6b52d7), // background
                  // foreground
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
