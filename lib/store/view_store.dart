import 'package:flutter/material.dart';
import 'package:tradly/store/search_store.dart';

import '../custom_widgets.dart';
import '../models/browse_list.dart';
import '../themes/themes.dart';

class ViewStore extends StatelessWidget {
  const ViewStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: const Text("Tradly Store", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        backgroundColor: CustomColors.primaryColor,
        actions: <Widget>[
          IconButton(onPressed: ()
            => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const SearchStore())),
          icon: const Icon(Icons.search, size: 30, color: Colors.white,)),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20, left: 16, bottom: 10, right: 39),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: CustomColors.primaryColor,
                    child: const Text("T", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 40),),
                  ),
                  Column(
                    children: const [
                      Text("Tradly Store", style: TextStyle(fontSize: 14),),
                      SizedBox(height: 5,),
                      Text("tradly.app", style: TextStyle(fontSize: 12, color: Colors.grey),)
                    ],
                  ),
                  const SizedBox(width: 40,),
                  ElevatedButton(onPressed: (){

                  },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(86, 23),
                      backgroundColor: CustomColors.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                    ),
                    child: const Text(
                      "Follow",
                      style: TextStyle(fontSize: 12, color:Colors.white),
                    ),),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
                child: const Text('Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic', style: TextStyle(fontSize: 12),)),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(129, 24),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                    ),
                    onPressed: null,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Groceries"),
                        Icon(Icons.close)
                      ],
                    ),
                  ),
                  const SizedBox(width: 10,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(145, 20),
                      backgroundColor: CustomColors.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                    ),
                    onPressed: null,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Vegetables"),
                        Icon(Icons.close)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Divider(color: Colors.grey.shade200, thickness: 20,),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    Text("Total Followers"),
                    Text("0")
                  ],
                ),
                const SizedBox(width: 59,),
                Column(
                  children: const [
                    Text("Total Products"),
                    Text("0")
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            Divider(color: Colors.grey.shade200, thickness: 20,),
            const SizedBox(height: 14,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(height: 20,),

                      ElevatedButton(onPressed: (){

                      }, style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.white;
                            }
                            return CustomColors.primaryColor;
                          },
                        ),
                      ),
                        // style: ElevatedButton.styleFrom(
                      //   fixedSize: const Size(120, 30),
                      //   backgroundColor: CustomColors.primaryColor,
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(32),
                      //     side: const BorderSide(width: 1, color: Colors.white),
                      //   ),
                      // ),
                        child: const Text("All Product", style: TextStyle(color: Colors.black),),
                      ),
                      const SizedBox(width: 10,),

                      ElevatedButton(onPressed: (){
                      }, style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return CustomColors.primaryColor;
                            }
                            return Colors.white;
                          },
                        ),
                      ),
                        //style: ElevatedButton.styleFrom(
                      //   fixedSize: const Size(70, 30),
                      //   backgroundColor: Colors.white,
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(32),
                      //     side: const BorderSide(width: 1, color: Colors.black),
                      //   ),
                      // ),
                        child: const Text('Fruit', style: TextStyle(color: Colors.black),),
                      ),
                      const SizedBox(width: 10,),

                      ElevatedButton(onPressed: (){
                      },  style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return CustomColors.primaryColor;
                            }
                            return Colors.white;
                          },
                        ),
                      ),
                        //   style: ElevatedButton.styleFrom(
                      //   fixedSize: const Size(120, 30),
                      //   backgroundColor: Colors.white,
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(32),
                      //     side: const BorderSide(width: 1, color: Colors.black),
                      //   ),
                      // ),
                        child: const Text('Vegetables', style: TextStyle(color: Colors.black),),
                      ),
                      const SizedBox(width: 10,),

                      ElevatedButton(onPressed: (){
                      },
                          style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return CustomColors.primaryColor;
                            }
                            return Colors.white;
                          },
                        ),
                      ),
                      //     style: ElevatedButton.styleFrom(
                      //   fixedSize: const Size(80, 30),
                      //   backgroundColor: Colors.white,
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(32),
                      //     side: const BorderSide(width: 1, color: Colors.black),
                      //   ),
                      // ),
                        child: const Text('Home', style: TextStyle(color: Colors.black),),
                      ),
                      const SizedBox(height: 20,)
                    ]
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 30, left: 23, right: 23, bottom: 20),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: browseList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.8,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2),
                    itemBuilder: (context, index){
                      return CustomWidgets().browsepage(browseList[index].image, browseList[index].productName);
                    })
            ),

          ],
        ),
      ),
    );
  }
}
