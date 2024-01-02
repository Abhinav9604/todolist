import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.menu , color: Colors.black,),
            const Text("Todo list",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Container(
              height:40 ,
              width: 40,
              child: ClipRRect(
                child: Image.asset("images/WIN_20211007_08_50_40_Pro.jpg"),
              ),
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.lightGreenAccent,

        child: Column(
          children: [
            searchbox(),
            Container(
                alignment: Alignment.topLeft,
           margin: EdgeInsets.only(left: 22),

           child: const Text("All Todo's", textAlign: TextAlign.start,
           style: TextStyle( fontWeight: FontWeight.bold

           )),
            ),
            Expanded(child: ListView(
              children: [

              ],
            ),
            )

          ],
        ),
      ),
    );
  }
}

Widget searchbox(){
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          border: InputBorder.none,
          hintText: "Search your Todo",
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18
          ),
        ),

      ),
    ),
  );
}
