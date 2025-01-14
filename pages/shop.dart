import 'package:flutter/material.dart';
import 'package:instagram/pages/util/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.calendar_today),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.menu),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                padding: EdgeInsets.all(8),
                color: Colors.grey[400],
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey[500],
                    ),
                    Container(
                      child: Text(
                        'search',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(child: ShopGrid())
        ],
      ),
    );
  }
}
