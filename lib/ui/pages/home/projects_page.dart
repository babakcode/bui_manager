import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    if(_width > 960){
      _width -= 260;
    }
    print(_width);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GridView.builder(
        padding: const EdgeInsets.all(40.0),
        itemCount: 12,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: _width ~/ 300 , crossAxisSpacing: 20, mainAxisSpacing: 20,),
        itemBuilder: (context, index) {
          return Card(
            elevation: 24,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22)
            ),
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }
}
