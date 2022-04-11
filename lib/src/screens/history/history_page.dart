import 'package:flutter/material.dart';
import 'package:ibilling/core/components/size_config/size_config.dart';
import 'package:ibilling/core/constants/text_styles.dart';
import 'package:ibilling/core/widgets/contract_status_widget.dart';
import 'package:ibilling/core/widgets/contract_widget.dart';
import 'package:ibilling/core/widgets/general_app_bar.dart';
import 'package:ibilling/core/widgets/range_date_widget.dart';

class HistoryPage extends StatelessWidget {
  bool hasDataSimulation = true;
  HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // Appbar
            GeneralAppBar(title: "History"),
            
            // Date range
            Padding(
              padding: EdgeInsets.only(
                top: getHeight(20),
                bottom: getHeight(8),
                left: getWidth(16),
                right: getWidth(95),
              ),
              child: SizedBox(
                width: getWidth(264),
                height: getHeight(69),
                
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Date",
                        style: FilterPageTextStyles.headLineStatusDate,
                      ),
                      RangeDateWidget(),
                    ]),
              ),
            ),

            // History Contracts
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
                                ContractStatusWidget.getWidget("rejectedIQ"),
                          );
                        },
                      ),
                    )
                  : Container(
                      color: Colors.black,
                      child: Center(
                        child: Image.asset("assets/nohistory.png"),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
