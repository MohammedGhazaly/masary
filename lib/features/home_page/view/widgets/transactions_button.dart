import 'package:flutter/material.dart';
import 'package:masary/core/utils/colors.dart';
import 'package:masary/features/home_page/data/models/finance_model.dart';
import 'package:masary/features/plus_minus/view/plus_minus_screen.dart';

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
                  return const PlusMinusScreen(
                    isPlus: true,
                  );
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
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PlusMinusScreen(
                    isPlus: false,
                  );
                }));
              },
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
