import 'package:flutter/material.dart';
import 'package:masary/core/utils/colors.dart';
import 'package:masary/features/plus/view/plus_screen.dart';

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
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const PlusScreen();
                }));
              },
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
