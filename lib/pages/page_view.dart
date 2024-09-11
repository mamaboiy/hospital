import 'package:flutter/material.dart';
class Pageview extends StatelessWidget {
  const Pageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page view'),
        centerTitle: true,

      ),
      body: SizedBox(
        height: 200,
        child: PageView.builder(
            itemBuilder: (context, index){
              return Card(
                elevation: 4,
                child: Container(
                  margin: EdgeInsets.all(9),
                  color: Colors.blue,
                  decoration: BoxDecoration(
                    // image: DecorationImage(image: AssetImage()),
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
