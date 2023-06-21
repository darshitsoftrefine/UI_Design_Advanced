import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';

class SearchStore extends StatelessWidget {
  const SearchStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryColor,
        // The search area here
          title: Container(
            width: double.infinity,
            height: 40,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.search, color: Colors.white,),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Fruit',
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none),
              ),
            ),
          ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 20,),
                ElevatedButton.icon(onPressed: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SendOtp()),
                  // );
                },   style: ElevatedButton.styleFrom(
                  fixedSize: const Size(120, 30),
                  backgroundColor: CustomColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                    side: BorderSide(width: 1, color: Colors.white),
                  ),
                ),
                  icon: Icon(Icons.sort), label: Text("Sort By", style: TextStyle(color: Colors.white),),
                ),
                ElevatedButton.icon(onPressed: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SendOtp()),
                  // );
                },   style: ElevatedButton.styleFrom(
                  fixedSize: const Size(130, 30),
                  backgroundColor: CustomColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                    side: BorderSide(width: 1, color: Colors.white),
                  ),
                ),
                  icon: Icon(Icons.location_on), label: Text("Location", style: TextStyle(color: Colors.white),),
                ),
                ElevatedButton.icon(onPressed: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SendOtp()),
                  // );
                },   style: ElevatedButton.styleFrom(
                  fixedSize: const Size(130, 30),
                  backgroundColor: CustomColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                    side: BorderSide(width: 1, color: Colors.white),
                  ),
                ),
                  icon: Icon(Icons.category), label: Text("Category", style: TextStyle(color: Colors.white),),
                ),
                SizedBox(height: 20,)
              ]
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 35, left: 15, right: 10),
        child: Row(
          children: [
            Container(
              width: 190,
              height: 190,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/apple.png'),
                  SizedBox(height: 5,),
                  Text("Apple"),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: CustomColors.primaryColor,
                        radius: 13,
                        child: Text('T'),
                      ),
                      Text("  Tradly"),
                      SizedBox(width: 10,),
                      //Text('\$35', style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
                      SizedBox(width: 5,),
                      Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 190,
              height: 190,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/orange.png'),
                  SizedBox(height: 5,),
                  Text("Orange"),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: CustomColors.primaryColor,
                        radius: 13,
                        child: Text('T'),
                      ),
                      Text("  Tradly"),
                      SizedBox(width: 10,),
                      //Text('\$35', style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
                      SizedBox(width: 5,),
                      Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
