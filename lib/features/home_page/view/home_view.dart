import 'package:flutter/material.dart';
import 'package:masary/core/utils/colors.dart';
import 'package:masary/features/all_activity/view/all_activity_screen.dart';
import 'package:masary/features/home_page/view/widgets/custom_balance_container.dart';
import 'package:masary/features/home_page/view/widgets/transactions_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Massary App"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.light_mode_rounded,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: CustomScrollView(
          slivers: [
            CustomBalanceContainer(
              amount: 0,
              largeContainerRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
              ),
              smallContainerColor: AppColors.kSeconderyPurble,
              smallContainerRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
              ),
              title: "My Balance",
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 24),
            ),
            CustomBalanceContainer(
              amount: 0,
              largeContainerRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
              ),
              smallContainerColor: AppColors.kSeconderyRed,
              smallContainerRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
              ),
              title: "Today",
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 24,
              ),
            ),
            SliverToBoxAdapter(
              child: TransactionButtons(),
            ),
            SliverToBoxAdapter(
                child: SizedBox(
              height: 12,
            )),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Activity",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kBlackColor,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return AllActivityScreen();
                        }));
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ))
                ],
              ),
            ),
            SliverToBoxAdapter(
                child: SizedBox(
              height: 12,
            )),
            SliverList.builder(
              itemCount: 25,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: ActivityItem(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ActivityItem extends StatelessWidget {
  const ActivityItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(child: Text("Wed, Nov 22, 2023")),
        Text("+2000.0")
      ],
    );
  }
}
