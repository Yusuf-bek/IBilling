import 'package:flutter/material.dart';
import 'package:ibilling/core/components/size_config/size_config.dart';
import 'package:ibilling/core/constants/my_colors.dart';
import 'package:ibilling/core/constants/text_styles.dart';

class ContractStatusWidget {
  static Container getWidget(
    String status,) {
    switch (status) {
      case "paid":
        return Container(
          width: getWidth(49),
          height: getHeight(21),
          decoration: BoxDecoration(
            color: MyColors.lightGreen.withOpacity(0.3),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text(
              "Paid",
              style: ContractContainerTextStyles.statusPaid,
            ),
          ),
        );

      case "inprocess":
        return Container(
          width: getWidth(90),
          height: getHeight(24),
          decoration: BoxDecoration(
            color: MyColors.inProcess.withOpacity(0.3),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text(
              "In process",
              style: ContractContainerTextStyles.statusInProcess,
            ),
          ),
        );

      case "rejectedIQ":
        return Container(
          width: getWidth(119),
          height: getHeight(24),
          decoration: BoxDecoration(
            color: MyColors.rejectedBy.withOpacity(0.3),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text(
              "Rejected by IQ",
              style: ContractContainerTextStyles.statusRejected,
            ),
          ),
        );

      case "rejectedPayme":
        return Container(
          width: getWidth(147),
          height: getHeight(24),
          decoration: BoxDecoration(
            color: MyColors.rejectedBy.withOpacity(0.3),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text(
              "Rejected by Payme",
              style: ContractContainerTextStyles.statusRejected,
            ),
          ),
        );
    }
    return Container();
  }
}
