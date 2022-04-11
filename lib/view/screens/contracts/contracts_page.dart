import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:ibilling/core/components/size_config/size_config.dart';
import 'package:ibilling/core/constants/my_colors.dart';
import 'package:ibilling/core/widgets/contract_status_widget.dart';
import 'package:ibilling/core/widgets/contract_widget.dart';
import 'package:ibilling/core/widgets/general_app_bar.dart';

class ContractsPage extends StatelessWidget {
  bool hasDataSimulation = true;
  ContractsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Appbar
            GeneralAppBar(title: "Contracts",),

            // Calendar
            Container(
              width: MediaQuery.of(context).size.width,
              height: getHeight(148),
              child: CalendarAgenda(
                backgroundColor: MyColors.contractContainerDark,
                calendarEventSelectedColor: MyColors.lightGreen,
                initialDate: DateTime.now(),
                firstDate: DateTime.now().subtract(
                  Duration(days: 14),
                ),
                lastDate: DateTime.now().add(
                  Duration(days: 4),
                ),
                onDateSelected: () {},
              ),
            ),

            // Contracts
            Expanded(
              child: hasDataSimulation
                  ? Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black,
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return Container(
                              color: Colors.black,
                              height: getHeight(85),
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(
                                left: getWidth(16),
                                right: getWidth(16),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: getHeight(32),
                                  bottom: getHeight(8),
                                ),
                                child: Row(
                                  children: [
                                    InkWell(
                                      child: Container(
                                        width: getWidth(92),
                                        height: getHeight(33),
                                        decoration: BoxDecoration(
                                          color: MyColors.lightGreen,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "Contracts",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      child: Container(
                                        width: getWidth(92),
                                        height: getHeight(33),
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "Invoices",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          } else if (index == 4) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              height: getHeight(73),
                              color: Colors.transparent,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: getWidth(135),
                                    right: getWidth(135),
                                    top: getHeight(12),
                                    bottom: getHeight(24)),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text("Load more"),
                                  style: ElevatedButton.styleFrom(
                                    primary: MyColors.lightGreen,
                                  ),
                                ),
                              ),
                            );
                          }

                          return ContractWidget(
                            index: index,
                            fish: "Ashrapova Nigina",
                            amount: "1,200,000 UZS",
                            lastInvoice: 153,
                            numberOfInvoices: 5,
                            statusContainer:
                                ContractStatusWidget.getWidget("rejectedPayme"),
                          );
                        },
                      ),
                    )
                  : Container(
                      color: Colors.black,
                      child: Center(
                        child: Image.asset("assets/nocontracts.png"),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
