import 'package:flutter/material.dart';
import 'package:masary/core/utils/colors.dart';

class TransactionButtons extends StatelessWidget {
  const TransactionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 55,
            child: TextButton.icon(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                foregroundColor: AppColors.kBlackColor,
                backgroundColor: AppColors.kSeconderyGreen,
              ),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text(
                "Plus",
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: SizedBox(
            height: 55,
            child: TextButton.icon(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                foregroundColor: AppColors.kBlackColor,
                backgroundColor: AppColors.kSeconderyRed,
              ),
              onPressed: () {},
              icon: Icon(Icons.remove),
              label: Text(
                "Minus",
              ),
            ),
          ),
        )
      ],
    );
  }
}
