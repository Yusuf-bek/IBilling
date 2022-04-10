import 'package:flutter/material.dart';
import 'package:ibilling/core/components/size_config/size_config.dart';
import 'package:ibilling/core/widgets/contract_widget.dart';

class ContractsPage extends StatelessWidget {
  const ContractsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          // Appbar
          Container(
            width: MediaQuery.of(context).size.width,
            height: getHeight(51),
            // child: Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     SizedBox(
            //       width: getWidth(116),
            //       height: getHeight(24),
            //       child: Row(children: [
            //         Container(
            //           width: getWidth(24),
            //           height: getWidth(24),
            //           decoration: BoxDecoration(
            //             shape: BoxShape.circle,
            //             gradient: LinearGradient(
            //               colors: [
            //                 Color(0xFF00FFC2),
            //                 Color(0xFF0500FF),
            //                 Color(0xFFFFC700),
            //                 Color(0xFFAD00FF),
            //                 Color(0xFF00FF94),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ]),
            //     ),
            //     SizedBox(
            //       width: getWidth(80),
            //       height: getHeight(20),
            //       child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             IconButton(
            //               onPressed: () {},
            //               icon: Image.asset(
            //                 "assets/app_bar_icons/filter.png",
            //                 color: Colors.white,
            //               ),
            //             ),
            //             Image.asset("assets/app_bar_icons/line.png"),
            //             IconButton(
            //               onPressed: () {},
            //               icon: Image.asset(
            //                 "assets/app_bar_icons/search.png",
            //                 color: Colors.white,
            //               ),
            //             ),
            //           ]),
            //     ),
            //   ],
            // ),
          ),
          // Calendar
          Container(
            width: MediaQuery.of(context).size.width,
            height: getHeight(148),
            color: Colors.green,
          ),

          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Container(
                        color: Colors.blue,
                        height: getHeight(85),
                        width: MediaQuery.of(context).size.width,
                      );
                    }

                    return ContractWidget(index: index, fish: "Ashrapova Nigina" ,amount:  "1,200,000 UZS",lastInvoice: 153, numberOfInvoices: 5,);
                  }),
            ),
          ),
        ]),
      ),
    );
  }
}
