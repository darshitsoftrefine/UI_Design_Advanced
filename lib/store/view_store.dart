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
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 16, bottom: 10, right: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20, left: 16, bottom: 10, right: 39),
                child: Row(
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
              const Text('Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic'),
              const SizedBox(height: 20,),
              Row(
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(127, 24),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                    ),
                    icon: const Icon(Icons.close, size: 18),
                    label: const Text('Groceries'),
                    onPressed: null,
                  ),
                  const SizedBox(width: 10,),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(145, 20),
                      backgroundColor: CustomColors.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                    ),
                    icon: const Icon(Icons.close, size: 18),
                    label: const Text('Vegetables'),
                    onPressed: null,
                  ),
                ],
              ),
              const SizedBox(height: 76,),
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
              const SizedBox(height: 54,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(height: 20,),

                      ElevatedButton(onPressed: (){

                      },   style: ElevatedButton.styleFrom(
                        fixedSize: const Size(120, 30),
                        backgroundColor: CustomColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                          side: const BorderSide(width: 1, color: Colors.white),
                        ),
                      ),
                        child: const Text("All Product",),
                      ),
                      const SizedBox(width: 10,),

                      ElevatedButton(onPressed: (){
                      },   style: ElevatedButton.styleFrom(
                        fixedSize: const Size(90, 30),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                          side: const BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
                        child: const Text('Fruit', style: TextStyle(color: Colors.black),),
                      ),
                      const SizedBox(width: 10,),

                      ElevatedButton(onPressed: (){
                      },   style: ElevatedButton.styleFrom(
                        fixedSize: const Size(130, 30),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                          side: const BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
                        child: const Text('Vegetables', style: TextStyle(color: Colors.black),),
                      ),
                      const SizedBox(width: 10,),

                      ElevatedButton(onPressed: (){
                      },   style: ElevatedButton.styleFrom(
                        fixedSize: const Size(90, 30),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                          side: const BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
                        child: const Text('Home', style: TextStyle(color: Colors.black),),
                      ),
                      const SizedBox(height: 20,)
                    ]
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 30, left: 23, right: 23, bottom: 20),
                  child: GridView.builder(
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
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       CustomWidgets().product_list('assets/images/apple.png', 'Apple', ''),
              //       const SizedBox(width: 10,),
              //       CustomWidgets().product_list('assets/images/orange.png', 'Orange', ''),
              //     ],
              //   ),
              // ),
              // const SizedBox(height: 10,),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       CustomWidgets().product_list('assets/images/moist.png', 'Moisturizer', ''),
              //       const SizedBox(width: 10,),
              //       CustomWidgets().product_list('assets/images/broc.png', 'Brocolli', ''),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
