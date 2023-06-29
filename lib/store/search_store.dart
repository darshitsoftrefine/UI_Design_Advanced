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
          title: SizedBox(
            width: double.infinity,
            height: 40,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.search, color: Colors.white,),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Fruit',
                    hintStyle: const TextStyle(color: Colors.white),
                    border: InputBorder.none),
              ),
            ),
          ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 20,),
                  ElevatedButton.icon(onPressed: (){

                  },   style: ElevatedButton.styleFrom(
                    fixedSize: const Size(112, 31),
                    backgroundColor: CustomColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                      side: const BorderSide(width: 1, color: Colors.white),
                    ),
                  ),
                    icon: const Icon(Icons.sort), label: const Text("Sort By", style: TextStyle(color: Colors.white, fontSize: 12),),
                  ),
                  ElevatedButton.icon(onPressed: (){

                  },   style: ElevatedButton.styleFrom(
                    fixedSize: const Size(118, 31),
                    backgroundColor: CustomColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                      side: const BorderSide(width: 1, color: Colors.white),
                    ),
                  ),
                    icon: const Icon(Icons.location_on), label: const Text("Location", style: TextStyle(color: Colors.white, fontSize: 12),),
                  ),
                  ElevatedButton.icon(onPressed: (){

                  },   style: ElevatedButton.styleFrom(
                    fixedSize: const Size(125, 31),
                    backgroundColor: CustomColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                      side: const BorderSide(width: 1, color: Colors.white),
                    ),
                  ),
                    icon: const Icon(Icons.category), label: const Text("Category", style: TextStyle(color: Colors.white, fontSize: 12),),
                  ),
                  const SizedBox(height: 20,)
                ]
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 28, right: 17),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300)
                ),
                width: 160,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/apple.png'),
                    const SizedBox(height: 5,),
                    const Text("Apple"),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: CustomColors.primaryColor,
                          radius: 13,
                          child: const Text('T'),
                        ),
                        const Text("  Tradly"),
                        const SizedBox(width: 10,),
                        //Text('\$35', style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
                        const SizedBox(width: 5,),
                        Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300)
                ),
                width: 160,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/orange.png'),
                    const SizedBox(height: 5,),
                    const Text("Orange"),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: CustomColors.primaryColor,
                          radius: 13,
                          child: const Text('T'),
                        ),
                        const Text("  Tradly"),
                        const SizedBox(width: 10,),
                        //Text('\$35', style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
                        const SizedBox(width: 5,),
                        Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
