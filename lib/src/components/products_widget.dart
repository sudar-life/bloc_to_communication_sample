import 'package:flutter/material.dart';

class ProductsWidget extends StatelessWidget {
  final List<String> items;
  const ProductsWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        padding: const EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        children: List.generate(
          items.length,
          (index) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: 100,
            height: 80,
            color: Colors.grey.withOpacity(0.5),
            child: Center(child: Text('item [${items[index]}]')),
          ),
        ),
      ),
    );
  }
}
