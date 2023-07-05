import 'package:flutter/material.dart';
import 'package:tradly/home_screens/wishlist_screen.dart';
import 'package:tradly/models/browse_list.dart';
import 'package:tradly/string_constants.dart';
import '../cart/cart_add_address.dart';
import '../custom_widgets.dart';
import '../product_details/product_detail.dart';
import '../themes/themes.dart';

class Browse extends StatefulWidget {
  const Browse({super.key});

  @override
  State<Browse> createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {

  final TextEditingController _control = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryColor,
        toolbarHeight: 190,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          padding: const EdgeInsets.only(bottom: 20.0, top: 20.0, left: 15, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Browse", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
                  const SizedBox(width: 109,),
                  IconButton(
                    icon: const Icon(Icons.favorite, color: Colors.white,),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const WishlistScreen()),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.shopping_cart, color: Colors.white,),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CartAddAddress()),
                      );
                    },
                  ),
                  const SizedBox(height: 20,)
                ],
              ),
              Column(
                children:[
                  const SizedBox(height: 20,),
                  Center(
                  child: TextFormField(
                    enabled: true,
                    style: const TextStyle(color: Colors.white),
                    controller: _control,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: ConstantStrings.searchProductTextField,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
        ]
              )
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 40,),
                  ElevatedButton.icon(onPressed: (){

                  },   style: ElevatedButton.styleFrom(
                    fixedSize: const Size(110, 30),
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
                    fixedSize: const Size(118, 30),
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
                    fixedSize: const Size(125, 30),
                    backgroundColor: CustomColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                      side: const BorderSide(width: 1, color: Colors.white),
                    ),
                  ),
                    icon: const Icon(Icons.category), label: const Text("Category", style: TextStyle(color: Colors.white, fontSize: 12),),
                  ),
                  const SizedBox(height: 30,)
                ]
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 20),
        child: GridView.builder(
          shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: browseList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 2,
                crossAxisCount: 2),
            itemBuilder: (context, index){
            return GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductDetail()),
                );
              },
                child: CustomWidgets().productList(browseList[index].image, browseList[index].productName, browseList[index].logoText, browseList[index].price, browseList[index].cancelPrice));
        })
      ),
    );
  }
}
