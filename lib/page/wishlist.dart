import 'package:flutter/material.dart';

import '../model/food.dart';
import 'detail_page.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 16),
          gridFood(),
        ],
      ),
    );
  }
  Widget gridFood() {
    return GridView.builder(
      itemCount: dummyFoods.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        mainAxisExtent: 261,
      ),
      itemBuilder: (context, index) {
        Food food = dummyFoods[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailPage(food: food);
            }));
          },
          child: Container(
            height: 261,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(120),
                        child: Image.asset(
                          food.image,
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        food.name,
                        style: Theme.of(context).textTheme.titleLarge,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Text(
                            food.cookingTime,
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          const Spacer(),
                          const Icon(Icons.star, color: Colors.amber, size: 18),
                          const SizedBox(width: 4),
                          Text(
                            food.rate.toString(),
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        '₹${food.price}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const Positioned(
                  top: 12,
                  right: 12,
                  child: Icon(Icons.favorite_border, color: Colors.grey),
                ),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: Material(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                    child: InkWell(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
