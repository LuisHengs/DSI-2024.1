import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Cheese Burger Clássico",
      imagePath: "images/burgers/burger1.jpeg",
      description:
          "delicioso hambúrguer de carne com alface, tomate, cebola e bastante pimenta.",
      price: 8.99,
      availableAddons: [
        Addon(name: "Maionese Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.burgers,
    ),
    Food(
      name: "Hambúrguer Clássico",
      imagePath: "images/burgers/burger2.jpeg",
      description:
          "delicioso hambúrguer de carne com alface, tomate, cebola e bastante pimenta.",
      price: 6.99,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.burgers,
    ),
    Food(
      name: "Hambúrguer BBQ",
      imagePath: "images/burgers/burger3.jpeg",
      description:
          "delicioso hambúrguer de carne com alface, tomate, cebola e bastante pimenta.",
      price: 7.99,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.burgers,
    ),
    Food(
      name: "Hambúrguer de Frango",
      imagePath: "images/burgers/burger1.jpeg",
      description:
          "delicioso hambúrguer de carne com alface, tomate, cebola e bastante pimenta.",
      price: 5.99,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.burgers,
    ),
    Food(
      name: "Mega Burger",
      imagePath: "images/burgers/burger4.jpg",
      description:
          "delicioso hambúrguer de carne com alface, tomate, cebola e bastante pimenta.",
      price: 10.99,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.burgers,
    ),

    //salads
    Food(
      name: "Salada de Abacate",
      imagePath: "images/salads/salad1.jpeg",
      description:
          "deliciosa salada com alface, tomate, cebola e bastante pimenta.",
      price: 5.49,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.salads,
    ),
    Food(
      name: "Salada César",
      imagePath: "images/salads/salad2.jpg",
      description:
          "deliciosa salada com alface, tomate, cebola e bastante pimenta.",
      price: 6.99,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.salads,
    ),
    Food(
      name: "Salada Ranch",
      imagePath: "images/salads/salad3.jpeg",
      description:
          "deliciosa salada com alface, tomate, cebola e bastante pimenta.",
      price: 4.99,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.salads,
    ),
    Food(
      name: "Salada de Frango",
      imagePath: "images/salads/salad4.jpg",
      description:
          "deliciosa salada com alface, tomate, cebola e bastante pimenta.",
      price: 6.50,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.salads,
    ),
    Food(
      name: "Salada Mediterrânea",
      imagePath: "images/salads/salad5.jpg",
      description:
          "deliciosa salada com alface, tomate, cebola e bastante pimenta.",
      price: 7.50,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.salads,
    ),

    //sides
    Food(
      name: "Acompanhamento tipo 1",
      imagePath: "images/sides/sides1.jpg",
      description:
          "deliciosos acompanhamentos com alface, tomate, cebola e bastante pimenta.",
      price: 3.99,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.sides,
    ),
    Food(
      name: "Acompanhamento tipo 2",
      imagePath: "images/sides/sides2.jpeg",
      description:
          "deliciosos acompanhamentos com alface, tomate, cebola e bastante pimenta.",
      price: 4.50,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.sides,
    ),
    Food(
      name: "Acompanhamento tipo 3",
      imagePath: "images/sides/sides3.jpg",
      description:
          "deliciosos acompanhamentos com alface, tomate, cebola e bastante pimenta.",
      price: 4.99,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.sides,
    ),
    Food(
      name: "Acompanhamento tipo 4",
      imagePath: "images/sides/sides4.jpg",
      description:
          "deliciosos acompanhamentos com alface, tomate, cebola e bastante pimenta.",
      price: 2.99,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.sides,
    ),
    Food(
      name: "Acompanhamento tipo 5",
      imagePath: "images/sides/sides5.jpg",
      description:
          "deliciosos acompanhamentos com alface, tomate, cebola e bastante pimenta.",
      price: 3.99,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.sides,
    ),

    //desserts
    Food(
      name: "Sobremesa tipo 1",
      imagePath: "images/desserts/dessert1.jpeg",
      description:
          "deliciosa sobremesa com alface, tomate, cebola e bastante pimenta.",
      price: 3.99,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.desserts,
    ),
    Food(
      name: "Sobremesa tipo 2",
      imagePath: "images/desserts/dessert2.jpeg",
      description:
          "deliciosa sobremesa com alface, tomate, cebola e bastante pimenta.",
      price: 4.50,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.desserts,
    ),
    Food(
      name: "Sobremesa tipo 3",
      imagePath: "images/desserts/dessert3.jpeg",
      description:
          "deliciosa sobremesa com alface, tomate, cebola e bastante pimenta.",
      price: 4.99,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.desserts,
    ),
    Food(
      name: "Sobremesa tipo 4",
      imagePath: "images/desserts/dessert4.jpeg",
      description:
          "deliciosa sobremesa com alface, tomate, cebola e bastante pimenta.",
      price: 5.50,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.desserts,
    ),
    Food(
      name: "Sobremesa tipo 5",
      imagePath: "images/desserts/dessert5.jpeg",
      description:
          "deliciosa sobremesa com alface, tomate, cebola e bastante pimenta.",
      price: 3.49,
      availableAddons: [
        Addon(name: "Queijo Extra", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Abacate", price: 1.99),
      ],
      category: FoodCategory.desserts,
    ),
  ];

  List<Food> get menu => _menu;
  double _totalAmount = 0;
  double get totalAmount => _totalAmount;

  final List<CartItem> _cart = [];

  //delivery address
  String _deliveryAddress = "Rua Dom Manoel de Medeiros S/N, Recife";

  // Getters
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  // Operations

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  // Helpers

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Aqui esta sua receita...");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate =
        DateFormat("dd/MM/yyyy HH:mm:ss").format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("-----------");
    receipt.writeln();
    receipt.writeln("Total Itens: ${getTotalItemCount()}");
    receipt.writeln("Preço total: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Endereço de entrega: $_deliveryAddress");

    return receipt.toString();
  }

  // format double value into money format
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
