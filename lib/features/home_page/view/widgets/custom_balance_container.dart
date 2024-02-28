import 'package:flutter/material.dart';
import 'package:masary/core/utils/colors.dart';

class CustomBalanceContainer extends StatelessWidget {
  final Color smallContainerColor;
  final String title;
  final double amount;
  final BorderRadiusGeometry largeContainerRadius;
  final BorderRadiusGeometry smallContainerRadius;

  const CustomBalanceContainer({
    super.key,
    required this.smallContainerColor,
    required this.title,
    required this.amount,
    required this.largeContainerRadius,
    required this.smallContainerRadius,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              height: 120,
              decoration: BoxDecoration(
                color: AppColors.kBlackColor,
                borderRadius: largeContainerRadius,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    amount.toString(),
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                color: smallContainerColor,
                borderRadius: smallContainerRadius,
              ),
            ),
          )
        ],
      ),
    );
  }
}
