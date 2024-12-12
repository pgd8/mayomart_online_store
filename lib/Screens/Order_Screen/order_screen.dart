import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  static const String routeName = "OrderScreen";
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Order"),
          ),
        ),);
  }
}