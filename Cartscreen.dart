import 'package:flutter_lottie_animation_demo/Cartscreen.dart';
import 'package:flutter_lottie_animation_demo/projectlist.dart';

import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final cartItems = cartProvider.cartItems;

    return Scaffold(
        appBar: AppBar(
          title: Text('Cart Screen'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              print((Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mysetting()),
              )));
            },
          ),
          backgroundColor: Color(0xff6b52d7),
        ),
        body: Column(children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final cartItem = cartItems[index];

                return ListTile(
                  leading: Image.network(
                    'https://imageio.forbes.com/specials-images/imageserve/63fa3390146518bf6a8ba852/Apple--iPhone-15--iPhone-15-Pro--iPhone-15-Pro-Max--iPhone-15-colors--iPhone-15-Pro/0x0.jpg?format=jpg&crop=945,709,x230,y89,safe&width=960',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(cartItem.name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('\$${cartItem.price.toStringAsFixed(2)}'),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              // Implement decreasePrice method in CartProvider
                              cartProvider.decreasePrice(cartItem);
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              cartProvider.increasePrice(cartItem);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_shopping_cart),
                    onPressed: () {
                      cartProvider.removeFromCart(cartItem);
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Add your button's functionality here
                print((Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CheckoutScreenState()),
                )));
              },
              child: Text('Checkout'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xff6b52d7)), // Replace with your desired color
                fixedSize: MaterialStateProperty.all<Size>(
                  Size(295, 30), // Replace with your desired width and height
                ),
              ),
            ),
          ),
        ]));
  }
}

class CheckoutScreenState extends StatelessWidget {
  // You can define your variables to store user data here
  // For example:
  // String fullName = '';
  // String address = '';
  // String cardNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        backgroundColor: Color(0xff6b52d7),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              // controller: TextEditingController(text: fullName),
              // onChanged: (value) => fullName = value,
              decoration: InputDecoration(labelText: 'Full Name'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              // controller: TextEditingController(text: address),
              // onChanged: (value) => address = value,
              decoration: InputDecoration(labelText: 'Address'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              // controller: TextEditingController(text: cardNumber),
              // onChanged: (value) => cardNumber = value,
              decoration: InputDecoration(labelText: 'Card Number'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextFormField(
                    // controller: TextEditingController(text: ''),
                    // onChanged: (value) {},
                    decoration: InputDecoration(labelText: 'Expiration Date'),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: TextFormField(
                    // controller: TextEditingController(text: ''),
                    // onChanged: (value) {},
                    decoration: InputDecoration(labelText: 'CVV'),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
                onPressed: () {
                  print((Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mysetting()),
                  )));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Thanks For Shopping!'),
                    ),
                  );
                  // Implement your checkout logic here
                },
                child: Text('Place Order'),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff6b52d7)),
                )),
          ],
        ),
      ),
    );
  }
}
