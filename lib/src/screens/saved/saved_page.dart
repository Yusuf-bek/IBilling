import 'package:flutter/material.dart';
import 'package:ibilling/core/components/size_config/size_config.dart';
import 'package:ibilling/core/widgets/contract_status_widget.dart';
import 'package:ibilling/core/widgets/contract_widget.dart';
import 'package:ibilling/core/widgets/general_app_bar.dart';

class SavedPage extends StatelessWidget {
  bool hasDataSimulation = true;
  SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // App bar
            GeneralAppBar(title: "Saved"),
            // To divide like UI
            SizedBox(
              height: getHeight(8),
            ),
            // Body
            Expanded(
              child: hasDataSimulation
                  ? Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black,
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ContractWidget(
                            index: index,
                            fish: "Ashrapova Nigina",
                            amount: "1,200,000 UZS",
                            lastInvoice: 153,
                            numberOfInvoices: 5,
                            statusContainer:
                                ContractStatusWidget.getWidget("paid"),
                          );
                        },
                      ),
                    )
                  : Container(
                      color: Colors.black,
                      child: Center(
                        child: Image.asset("assets/nosaved.png"),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
