import 'package:bloc/bloc.dart';
import 'package:masary/features/onboarding/data/model/onboarding_model.dart';
import 'package:meta/meta.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());

  var currentIndex = 0;
  List<OnBoardingModel> onboardingData = [
    OnBoardingModel(
        title: "Title 1",
        subtitle: "SubTitle 1",
        imgPath: "assets/images/finance1.png"),
    OnBoardingModel(
        title: "Title 2",
        subtitle: "SubTitle 2",
        imgPath: "assets/images/finance2.png"),
    OnBoardingModel(
        title: "Title 3",
        subtitle: "SubTitle 3",
        imgPath: "assets/images/finance3.png"),
  ];
  void onPageChanged(int index) {
    currentIndex = index;
    emit(PageChanged());
  }
}
