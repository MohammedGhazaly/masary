import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masary/core/utils/colors.dart';
import 'package:masary/features/onboarding/view_model/onboarding/onboarding_cubit.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController pageController = PageController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final onBoardingCubit =
        BlocProvider.of<OnboardingCubit>(context, listen: true);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: AppColors.kBlackColor,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.65,
                      child: PageView.builder(
                        controller: pageController,
                        itemCount: onBoardingCubit.onboardingData.length,
                        pageSnapping: true,
                        onPageChanged: onBoardingCubit.onPageChanged,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Text(
                                onBoardingCubit.onboardingData[index].title,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.kPrimaryBlue,
                                ),
                              ),
                              Text(
                                onBoardingCubit.onboardingData[index].subtitle,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.kPrimaryBlue,
                                ),
                              ),
                              Image.asset(
                                onBoardingCubit.onboardingData[index].imgPath,
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onBoardingCubit.onboardingData.length,
                    ((index) {
                      return AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        margin: EdgeInsets.symmetric(horizontal: 6),
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: onBoardingCubit.currentIndex == index
                              ? AppColors.kPrimaryBlue
                              : AppColors.kPrimaryBlue.withOpacity(0.5),
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "${onBoardingCubit.currentIndex + 1}/${onBoardingCubit.onboardingData.length}"),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: AppColors.kWhiteColor,
                          backgroundColor: AppColors.kPrimaryBlue),
                      onPressed: () {},
                      child: Text(
                        onBoardingCubit.currentIndex ==
                                onBoardingCubit.onboardingData.length - 1
                            ? "Get Started"
                            : "Next",
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
