import 'package:flutter/material.dart';
import '../components/grid_view.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 360,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.cyan[300],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: const [
                    SizedBox(width: 10),
                    Icon(Icons.search),
                    SizedBox(width: 10),
                    Text('Search')
                  ]),
                ),
              ),
            ),
            Expanded(
                child: GridImageView(
                    total: 20, color: Colors.cyan[200] ?? Colors.amber)),
          ],
        ),
      ),
    );
  }
}
