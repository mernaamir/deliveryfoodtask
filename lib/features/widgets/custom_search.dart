import 'package:flutter/material.dart';
import 'package:fooddelivery/features/widgets/Search_Delegate.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showSearch(context: context, delegate:foodSearch() );
      },
      child: Container(
        height: 50,
        width: 260,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
         color: Color(0xffFEF6ED),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Colors.transparent,
          ),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.search,
              color: Color(0xffDA6317),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              "What do you want to order",
              style: const TextStyle(
                color: Colors.brown,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
    // return Container(
    //   width: 300,
    //   height: 35,
    //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    //   child: TextFormField(
    //     decoration: InputDecoration(
    //         prefixIcon: Icon(Icons.search),
    //         hintText: "What do you want to order"),
    //
    //   ),
    // );
  }
}
