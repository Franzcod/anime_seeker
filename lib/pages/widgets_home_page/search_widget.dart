import 'package:flutter/material.dart';

class BuildSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _widthDisplay = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
          child: TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.search),
              border: OutlineInputBorder(),
              labelText: 'Manga',
              hintText: 'Enter Your Title Manga',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.greenAccent, // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {},
            child: Container(
              height: 40,
              width: _widthDisplay,
              child: Align(alignment: Alignment.center, child: Text('Buscar')),
            ),
          ),
        ),
        // Container(
        //   child: FutureBuilder(
        //     future: _listadoManga,
        //     builder: (context, snapshot) {
        //       if (snapshot.hasData) {
        //         print(snapshot.data);
        //         return AnimationLimiter(
        //           child: Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: GridView.count(
        //               crossAxisCount: 2,
        //               children: _listMangas(snapshot.data),
        //             ),
        //           ),
        //         );
        //       } else if (snapshot.hasError) {
        //         print(snapshot.error);
        //       }
        //       return Center(
        //         child: CircularProgressIndicator(),
        //       );
        //     },
        //   ),
        // ),
      ],
    );
  }
}
