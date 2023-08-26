import 'package:flutter_lottie_animation_demo/dashboard.dart';
import 'package:flutter_lottie_animation_demo/productinfo.dart';
import 'package:flutter_lottie_animation_demo/projectlist.dart';
import 'package:flutter_lottie_animation_demo/Cartscreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

// Product Model
class Product {
  final String id;
  final String name;
  double price;
  final String imageUrl;

  Product({this.id, this.name, this.price, this.imageUrl});
}

class CartProvider extends ChangeNotifier {
  List<Product> _cartItems = [];

  List<Product> get cartItems => _cartItems;

  void addToCart(Product product) {
    // Check if the product is already in the cart
    bool productExists = false;
    for (int i = 0; i < _cartItems.length; i++) {
      if (_cartItems[i].id == product.id) {
        // If the product is already in the cart, increase its quantity and price
        _cartItems[i] = Product(
          id: product.id,
          name: product.name,
          price: _cartItems[i].price + product.price,
          imageUrl: product.imageUrl,
        );
        productExists = true;
        break;
      }
    }

    if (!productExists) {
      // If the product is not in the cart, add it to the cart
      _cartItems.add(product);
    }

    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  void increasePrice(Product product) {
    product.price += 400.99;
    notifyListeners();
  }

  void decreasePrice(Product product) {
    product.price -= 400.99;
    notifyListeners();
  }

  int getProductQuantity(Product product) {
    return _cartItems.where((item) => item.id == product.id).length;
  }
}

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
        id: '1',
        name: 'Iphone 15 pro max',
        price: 400.99,
        imageUrl:
            'https://imageio.forbes.com/specials-images/imageserve/63fa3390146518bf6a8ba852/Apple--iPhone-15--iPhone-15-Pro--iPhone-15-Pro-Max--iPhone-15-colors--iPhone-15-Pro/0x0.jpg?format=jpg&crop=945,709,x230,y89,safe&width=960'),

    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Products'),
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(
                image: NetworkImage(
                    'https://imageio.forbes.com/specials-images/imageserve/63fa3390146518bf6a8ba852/Apple--iPhone-15--iPhone-15-Pro--iPhone-15-Pro-Max--iPhone-15-colors--iPhone-15-Pro/0x0.jpg?format=jpg&crop=945,709,x230,y89,safe&width=960'),
                width: 280,
                height: 200,
                fit: BoxFit
                    .cover, // Choose how the image should fit within the widget
              ),
              SizedBox(height: 16),
              Text(
                'Iphone 15 pro max',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                  'Ahead of the official announcement, a new leak has claimed that c will reportedly feature a new custom button. According to Gizmochina, leaked images of a protective case designed for the iPhone 15 Pro Max have recently emerged online',
                  style: TextStyle(fontSize: 16)),
              SizedBox(height: 16),
              Text(
                'Price:  400.99',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 65),
              Expanded(
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return ListTile(
                      trailing: ElevatedButton(
                        onPressed: () {
                          // Perform some action when the button is pressed
                          final cartProvider =
                              Provider.of<CartProvider>(context, listen: false);
                          cartProvider.addToCart(product);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Added Sucessfully!'),
                            ),
                          );
                        },
                        child: Text('Add to Cart'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(
                              0xff6b52d7)), // Replace with your desired color
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size(295,
                                30), // Replace with your desired width and height
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
