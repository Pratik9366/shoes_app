import 'package:flutter/material.dart';
import 'package:shoes_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  // List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike SB Force 58',
        price: ' ₹ 5,995',
        imagePath: 'lib/images/shoe4.webp',
        description:
            'The latest Nike SB Force 58 gives you the durability of a cupsole with the flexibility of a vulcanised shoe.'),
    Shoe(
        name: 'Nike Free Metcon 4',
        price: '₹ 11,895',
        imagePath: 'lib/images/shoe5.webp',
        description:
            'The Nike Free Metcon 4 Premium combines flexibility with stability to help you get the most out of your training programme.'),
    Shoe(
      name:'Nike Renew Ride 3',
        price: ' ₹ 6,295',
        imagePath: 'lib/images/shoe6.webp',
        description:
            'When everyday runs are on the menu, the Nike Renew Ride 3 comes through with a smooth and soft ride.'),
        
    Shoe(
        name: 'Jordan why Not 6',
        price: '₹ 13,995',
        imagePath: 'lib/images/shoe7.webp',
        description:
            'Russell Westbrooks 6th signature shoe is—you guessed it—all about speed.'),

    Shoe(
        name: 'Nike Zegama',
        price: '₹ 13,995',
        imagePath: 'lib/images/shoe8.webp',
        description:
            'Navigate the up and downs of uncompromising terrain with the Nike Zegama.'),

    Shoe(
        name: 'Jordan One Take 4',
        price: ' ₹ 8 695',
        imagePath: 'lib/images/shoe9.webp',
        description:
            'Get that speed you need, just like Russ.'),
  ];

  // List of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add itsms to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
