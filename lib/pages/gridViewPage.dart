import 'package:flutter/material.dart';
import 'package:hello_world/component/menuDrawer.dart';

class GridViewPage extends StatelessWidget {
  
  Widget buildGrid(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return GridView.count(
      // GridView.extent(
        // maxCrossAxisExtent: 200,
        crossAxisCount: (orientation == Orientation.portrait) ? 2: 3,
        padding: const EdgeInsets.all(5),
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: (orientation == Orientation.portrait) ? 1 : 1.3,
        children: List<Widget>.generate(
            30,
            (index) => GridTile(
                  child: Image.asset(
                      'assets/images/middle-pic-${index + 1}.jpg',
                      fit: BoxFit.cover
                  ),
                  footer: GridTileBar(
                    backgroundColor: Colors.black45,
                    title: Text('Picture ${index+1}'),
                    subtitle: Text('Description of ${index+1}'),
                    trailing: Icon(
                      Icons.star_border,
                      color: Colors.white,
                    ),
                  ),
                )
          )
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      drawer: MenuDrawer(),
      body: Center(
        child: buildGrid(context),
      ),
    );
  }
}
