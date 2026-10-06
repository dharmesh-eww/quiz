import 'package:flutter/material.dart';
import 'package:statekit/statekit.dart';

import './app_routes.dart';
import '../screens/home_screen/controller/home_screen_controller.dart';
import '../screens/home_screen/view/home_screen.dart';
import '../screens/splash_screen/view/splash_screen.dart';
import '../screens/introduction/view/introduction.dart';
import '../screens/introduction/controller/introduction_controller.dart';
import '../screens/language_selection/view/language_selection.dart';
import '../screens/language_selection/controller/language_selection_controller.dart';
import '../screens/subject_selection/view/subject_selection.dart';
import '../screens/subject_selection/controller/subject_selection_controller.dart';
import '../screens/sub_subject_selection/view/sub_subject_selection.dart';
import '../screens/sub_subject_selection/controller/sub_subject_selection_controller.dart';
import '../screens/quiz_configuration/view/quiz_configuration.dart';
import '../screens/quiz_configuration/controller/quiz_configuration_controller.dart';
import '../screens/quiz_play/view/quiz_play.dart';
import '../screens/quiz_play/controller/quiz_play_controller.dart';
import '../screens/quiz_result/view/quiz_result.dart';
import '../screens/quiz_result/controller/quiz_result_controller.dart';
import '../screens/review_answers/view/review_answers.dart';
import '../screens/review_answers/controller/review_answers_controller.dart';
import '../screens/statistic/view/statistic.dart';
import '../screens/statistic/controller/statistic_controller.dart';
import '../screens/quiz_history/view/quiz_history.dart';
import '../screens/quiz_history/controller/quiz_history_controller.dart';
import '../screens/settings/view/settings.dart';
import '../screens/settings/controller/settings_controller.dart';
import '../screens/how_to_play/view/how_to_play.dart';
import '../screens/how_to_play/controller/how_to_play_controller.dart';
import '../screens/about/view/about.dart';
import '../screens/about/controller/about_controller.dart';

abstract class RouteNavigator {
  static final Map<String, Widget Function(BuildContext)> routes = {
    Routes.splash: (BuildContext context) => const SplashScreen(),
    Routes.homeScreen: (BuildContext context) => StateProvider(
      stateProvider: StatekitProvider(create: () => HomeScreenController()),
      child: HomeScreen(),
    ),
    Routes.introduction: (BuildContext context) => StateProvider(
      stateProvider: StatekitProvider(create: () => IntroductionController()),
      child: Introduction(),
    ),
    Routes.languageSelection: (BuildContext context) => StateProvider(
      stateProvider: StatekitProvider(
        create: () => LanguageSelectionController(),
      ),
      child: LanguageSelection(),
    ),
    Routes.subjectSelection: (BuildContext context) => StateProvider(
      stateProvider: StatekitProvider(
        create: () => SubjectSelectionController(),
      ),
      child: SubjectSelection(),
    ),
    Routes.subSubjectSelection: (BuildContext context) => StateProvider(
      stateProvider: StatekitProvider(
        create: () => SubSubjectSelectionController(),
      ),
      child: SubSubjectSelection(),
    ),
    Routes.quizConfiguration: (BuildContext context) => StateProvider(
      stateProvider: StatekitProvider(
        create: () => QuizConfigurationController(),
      ),
      child: QuizConfiguration(),
    ),
    Routes.quizPlay: (BuildContext context) => StateProvider(
      stateProvider: StatekitProvider(create: () => QuizPlayController()),
      child: QuizPlay(),
    ),
    Routes.quizResult: (BuildContext context) => StateProvider(
      stateProvider: StatekitProvider(create: () => QuizResultController()),
      child: QuizResult(),
    ),
    Routes.reviewAnswers: (BuildContext context) => StateProvider(
      stateProvider: StatekitProvider(create: () => ReviewAnswersController()),
      child: ReviewAnswers(),
    ),
    Routes.statistic: (BuildContext context) => StateProvider(
      stateProvider: StatekitProvider(create: () => StatisticController()),
      child: Statistic(),
    ),
    Routes.quizHistory: (BuildContext context) => StateProvider(
      stateProvider: StatekitProvider(create: () => QuizHistoryController()),
      child: QuizHistory(),
    ),
    Routes.settings: (BuildContext context) => StateProvider(
      stateProvider: StatekitProvider(create: () => SettingsController()),
      child: Settings(),
    ),
    Routes.howToPlay: (BuildContext context) => StateProvider(
      stateProvider: StatekitProvider(create: () => HowToPlayController()),
      child: HowToPlay(),
    ),
    Routes.about: (BuildContext context) => StateProvider(
      stateProvider: StatekitProvider(create: () => AboutController()),
      child: About(),
    ),
  };
}
