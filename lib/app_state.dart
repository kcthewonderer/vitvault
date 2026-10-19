import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _IsIntro = prefs.getBool('ff_IsIntro') ?? _IsIntro;
    });
    _safeInit(() {
      _IsLogin = prefs.getBool('ff_IsLogin') ?? _IsLogin;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _IsIntro = false;
  bool get IsIntro => _IsIntro;
  set IsIntro(bool value) {
    _IsIntro = value;
    prefs.setBool('ff_IsIntro', value);
  }

  bool _IsLogin = false;
  bool get IsLogin => _IsLogin;
  set IsLogin(bool value) {
    _IsLogin = value;
    prefs.setBool('ff_IsLogin', value);
  }

  int _IntroIndex = 0;
  int get IntroIndex => _IntroIndex;
  set IntroIndex(int value) {
    _IntroIndex = value;
  }

  bool _IsSkip = false;
  bool get IsSkip => _IsSkip;
  set IsSkip(bool value) {
    _IsSkip = value;
  }

  List<WishlistModelStruct> _WishlistList = [
    WishlistModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/a-i-recipe-application-wsup42/assets/d1usmq5fj8ae/Veg_singapuri_rice.png\",\"title\":\"Veg singapuri pulao\",\"time\":\"35 min\",\"id\":\"0\",\"type\":\"wish\"}')),
    WishlistModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/a-i-recipe-application-wsup42/assets/zrxjjpn0dsm0/Veg_singapuri_rice-2.png\",\"title\":\"Panner tikka masala\",\"time\":\"35 min\",\"id\":\"1\",\"type\":\"wish\"}')),
    WishlistModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/a-i-recipe-application-wsup42/assets/ylcc72hq0xtx/Veg_singapuri_rice-1.png\",\"title\":\"Panner tikka sizzler\",\"time\":\"1h 35min\",\"id\":\"2\",\"type\":\"wish\"}')),
    WishlistModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/a-i-recipe-application-wsup42/assets/d1usmq5fj8ae/Veg_singapuri_rice.png\",\"title\":\"Veg singapuri pulao\",\"time\":\"35 min\",\"isfav\":\"false\",\"id\":\"3\",\"type\":\"Video\"}')),
    WishlistModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/a-i-recipe-application-wsup42/assets/zrxjjpn0dsm0/Veg_singapuri_rice-2.png\",\"title\":\"Panner tikka masala\",\"time\":\"35 min\",\"isfav\":\"false\",\"id\":\"4\",\"type\":\"Video\"}')),
    WishlistModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/a-i-recipe-application-wsup42/assets/ylcc72hq0xtx/Veg_singapuri_rice-1.png\",\"title\":\"Panner tikka sizzler\",\"time\":\"1h 35min\",\"isfav\":\"false\",\"id\":\"5\",\"type\":\"Video\"}')),
    WishlistModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/a-i-recipe-application-wsup42/assets/ylcc72hq0xtx/Veg_singapuri_rice-1.png\",\"title\":\"Panner tikka sizzler\",\"time\":\"1h 35min\",\"isfav\":\"false\",\"id\":\"6\",\"type\":\"Video\"}')),
    WishlistModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/a-i-recipe-application-wsup42/assets/8g6tiaovbwon/Veg_singapuri_rice4.png\",\"title\":\"Manchurian\",\"time\":\"40 min\",\"isfav\":\"false\",\"id\":\"7\",\"type\":\"Video\"}'))
  ];
  List<WishlistModelStruct> get WishlistList => _WishlistList;
  set WishlistList(List<WishlistModelStruct> value) {
    _WishlistList = value;
  }

  void addToWishlistList(WishlistModelStruct value) {
    WishlistList.add(value);
  }

  void removeFromWishlistList(WishlistModelStruct value) {
    WishlistList.remove(value);
  }

  void removeAtIndexFromWishlistList(int index) {
    WishlistList.removeAt(index);
  }

  void updateWishlistListAtIndex(
    int index,
    WishlistModelStruct Function(WishlistModelStruct) updateFn,
  ) {
    WishlistList[index] = updateFn(_WishlistList[index]);
  }

  void insertAtIndexInWishlistList(int index, WishlistModelStruct value) {
    WishlistList.insert(index, value);
  }

  List<NotificationsModelStruct> _NotificationList = [
    NotificationsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Daily meal inspiration\",\"subtitle\":\"Discover today’s featured recipe: manchurian! tap to explore ingredients.\",\"time\":\"30 seconds ago\"}')),
    NotificationsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"New recipe alert\",\"subtitle\":\"Panner tikka sizzler. perfect for [meal type, e.g., dinner, brunch]! check it out now\",\"time\":\"45 seconds ago\"}')),
    NotificationsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Healthy breakfast option\",\"subtitle\":\"Try our avocado toast recipe for a nutritious start to your day!\",\"time\":\"1 minute ago\"}')),
    NotificationsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Weekend cooking project\",\"subtitle\":\"Homemade pasta carbonara - a delicious treat for your weekend!\",\"time\":\"2 minutes ago\"}')),
    NotificationsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Quick lunch fix\",\"subtitle\":\"Whip up a flavorful vegetable stir-fry in under 30 minutes!\",\"time\":\"3 minutes ago\"}')),
    NotificationsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Family dinner favorite\",\"subtitle\":\"Savor the taste of our classic lasagna recipe for a cozy family meal!\",\"time\":\"4 minutes ago\"}'))
  ];
  List<NotificationsModelStruct> get NotificationList => _NotificationList;
  set NotificationList(List<NotificationsModelStruct> value) {
    _NotificationList = value;
  }

  void addToNotificationList(NotificationsModelStruct value) {
    NotificationList.add(value);
  }

  void removeFromNotificationList(NotificationsModelStruct value) {
    NotificationList.remove(value);
  }

  void removeAtIndexFromNotificationList(int index) {
    NotificationList.removeAt(index);
  }

  void updateNotificationListAtIndex(
    int index,
    NotificationsModelStruct Function(NotificationsModelStruct) updateFn,
  ) {
    NotificationList[index] = updateFn(_NotificationList[index]);
  }

  void insertAtIndexInNotificationList(
      int index, NotificationsModelStruct value) {
    NotificationList.insert(index, value);
  }

  int _PageIndex = 0;
  int get PageIndex => _PageIndex;
  set PageIndex(int value) {
    _PageIndex = value;
  }

  List<IngridentsModelStruct> _IngridentsList = [
    IngridentsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Panner\",\"qty\":\"250 g\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/teams/MkJMueoCy5jaf6sjz7OX/assets/xujwouvd87ke/Ellipse_486.png\"}')),
    IngridentsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Cut onions \",\"qty\":\"1/2 cup\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/teams/MkJMueoCy5jaf6sjz7OX/assets/ieypcbyro6uc/Ellipse_486-1.png\"}')),
    IngridentsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Capsicum\",\"qty\":\"1/2 cup\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/teams/MkJMueoCy5jaf6sjz7OX/assets/x2rwavbm3mj5/Ellipse_486-2.png\"}')),
    IngridentsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Curds\",\"qty\":\"1/2 cup\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/teams/MkJMueoCy5jaf6sjz7OX/assets/wxg54843ilac/Ellipse_486-3.png\"}')),
    IngridentsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Tandori masala\",\"qty\":\"1/2 tsp\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/teams/MkJMueoCy5jaf6sjz7OX/assets/l5gy6qnzp7yd/Ellipse_486-4.png\"}')),
    IngridentsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Chili powder\",\"qty\":\"2 tps\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/teams/MkJMueoCy5jaf6sjz7OX/assets/6n7szoyp6cbn/Ellipse_486-5.png\"}')),
    IngridentsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Kasturi methi\",\"qty\":\"1/2 tsp\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/teams/MkJMueoCy5jaf6sjz7OX/assets/vv5kdljd9hke/Ellipse_486-6.png\"}')),
    IngridentsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Chopped coriander leaves\",\"qty\":\"2 tsp\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/teams/MkJMueoCy5jaf6sjz7OX/assets/39ka9mmhnyde/Ellipse_486-7.png\"}')),
    IngridentsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Olive oil\",\"qty\":\"2 tsp\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/teams/MkJMueoCy5jaf6sjz7OX/assets/qjqppy61g00r/Ellipse_486-8.png\"}'))
  ];
  List<IngridentsModelStruct> get IngridentsList => _IngridentsList;
  set IngridentsList(List<IngridentsModelStruct> value) {
    _IngridentsList = value;
  }

  void addToIngridentsList(IngridentsModelStruct value) {
    IngridentsList.add(value);
  }

  void removeFromIngridentsList(IngridentsModelStruct value) {
    IngridentsList.remove(value);
  }

  void removeAtIndexFromIngridentsList(int index) {
    IngridentsList.removeAt(index);
  }

  void updateIngridentsListAtIndex(
    int index,
    IngridentsModelStruct Function(IngridentsModelStruct) updateFn,
  ) {
    IngridentsList[index] = updateFn(_IngridentsList[index]);
  }

  void insertAtIndexInIngridentsList(int index, IngridentsModelStruct value) {
    IngridentsList.insert(index, value);
  }

  List<InstructionsModelStruct> _InstructionsList = [
    InstructionsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Combine the curd,besan, ginger garlic paste, chilli \\r\\npowder, kasuri methi,garam masala,salt oil and mix well \\r\\nto prepare a merinate\",\"id\":\"1\"}')),
    InstructionsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Add paneer cubes,onions and capsicum to it and keep \\r\\naside for 15-20minutes\",\"id\":\"2\"}')),
    InstructionsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Arrange the paneer,onions and capsicum on skewer \\r\\nsticks.heat the grill pan and soute the paneer tikkas on \\r\\nall sides till they are lightly browned\",\"id\":\"3\"}')),
    InstructionsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Heat oil and butterl in a pan add cumin seeds chopped\\r\\ngarlic,and onions saute for 2minutes add salt boiled rice\\r\\nand chopped coriander leaves and mix well\",\"id\":\"4\"}')),
    InstructionsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Combine the tomatoes, cloves, cashew nuts and oil with\\r\\n1/4cup water and simmer for 15-20 minutes.cool \\r\\ncompletely\",\"id\":\"5\"}')),
    InstructionsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Blend to a smooth puree.strain the puree and keep aside\\r\\nmelt the butter in a pan add cumin seeds when the \\r\\nseeds crackle add ginger garlic paste and saute for a\\r\\nfew seconds.add the onions turn golden brown add the\\r\\npuree chilli powder, cream kasuri methi,salt and mix well\",\"id\":\"6\"}')),
    InstructionsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Heat sizzler plate over an open flame till they are red hot\\r\\nand place them on their wooden tray\",\"id\":\"7\"}')),
    InstructionsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Arrange cabbage leaves and rice in the centre.top with \\r\\n2 skewers of the paneer tikkas pour the makhani gravy\",\"id\":\"8\"}')),
    InstructionsModelStruct.fromSerializableMap(
        jsonDecode('{\"title\":\"Serve immediately\",\"id\":\"9\"}'))
  ];
  List<InstructionsModelStruct> get InstructionsList => _InstructionsList;
  set InstructionsList(List<InstructionsModelStruct> value) {
    _InstructionsList = value;
  }

  void addToInstructionsList(InstructionsModelStruct value) {
    InstructionsList.add(value);
  }

  void removeFromInstructionsList(InstructionsModelStruct value) {
    InstructionsList.remove(value);
  }

  void removeAtIndexFromInstructionsList(int index) {
    InstructionsList.removeAt(index);
  }

  void updateInstructionsListAtIndex(
    int index,
    InstructionsModelStruct Function(InstructionsModelStruct) updateFn,
  ) {
    InstructionsList[index] = updateFn(_InstructionsList[index]);
  }

  void insertAtIndexInInstructionsList(
      int index, InstructionsModelStruct value) {
    InstructionsList.insert(index, value);
  }

  List<NutritionModelStruct> _NutritionList = [
    NutritionModelStruct.fromSerializableMap(
        jsonDecode('{\"title\":\"Serving size\",\"qty\":\"1 cup\"}')),
    NutritionModelStruct.fromSerializableMap(
        jsonDecode('{\"title\":\"Calories\",\"qty\":\"210\"}')),
    NutritionModelStruct.fromSerializableMap(
        jsonDecode('{\"title\":\"Carbohydrate content\",\"qty\":\"45g\"}')),
    NutritionModelStruct.fromSerializableMap(
        jsonDecode('{\"title\":\"Cholesterol content \",\"qty\":\"0mg\"}')),
    NutritionModelStruct.fromSerializableMap(
        jsonDecode('{\"title\":\"Fat content\",\"qty\":\"12g \"}')),
    NutritionModelStruct.fromSerializableMap(
        jsonDecode('{\"title\":\"Fiber content\",\"qty\":\"5g\"}')),
    NutritionModelStruct.fromSerializableMap(
        jsonDecode('{\"title\":\"Protein content\",\"qty\":\"6g\"}')),
    NutritionModelStruct.fromSerializableMap(
        jsonDecode('{\"title\":\"Saturated fat content \",\"qty\":\"2g\"}')),
    NutritionModelStruct.fromSerializableMap(
        jsonDecode('{\"title\":\"Sodium content\",\"qty\":\"450mg\"}')),
    NutritionModelStruct.fromSerializableMap(
        jsonDecode('{\"title\":\"Sugar content \",\"qty\":\"4g\"}')),
    NutritionModelStruct.fromSerializableMap(
        jsonDecode('{\"title\":\"Trans fat content\",\"qty\":\"0g\"}')),
    NutritionModelStruct.fromSerializableMap(
        jsonDecode('{\"title\":\"Unsaturated fat content\",\"qty\":\"11g\"}'))
  ];
  List<NutritionModelStruct> get NutritionList => _NutritionList;
  set NutritionList(List<NutritionModelStruct> value) {
    _NutritionList = value;
  }

  void addToNutritionList(NutritionModelStruct value) {
    NutritionList.add(value);
  }

  void removeFromNutritionList(NutritionModelStruct value) {
    NutritionList.remove(value);
  }

  void removeAtIndexFromNutritionList(int index) {
    NutritionList.removeAt(index);
  }

  void updateNutritionListAtIndex(
    int index,
    NutritionModelStruct Function(NutritionModelStruct) updateFn,
  ) {
    NutritionList[index] = updateFn(_NutritionList[index]);
  }

  void insertAtIndexInNutritionList(int index, NutritionModelStruct value) {
    NutritionList.insert(index, value);
  }

  List<String> _SearchList = [
    'Panner tikka masala',
    'Panner tikka sizler',
    'Veg manchurian',
    'Veg singapuri pulao',
    'Chicken biryani',
    'Paneer butter masala',
    'Chicken korma',
    'Fish curry',
    'Mutton rogan josh',
    'Butter chicken'
  ];
  List<String> get SearchList => _SearchList;
  set SearchList(List<String> value) {
    _SearchList = value;
  }

  void addToSearchList(String value) {
    SearchList.add(value);
  }

  void removeFromSearchList(String value) {
    SearchList.remove(value);
  }

  void removeAtIndexFromSearchList(int index) {
    SearchList.removeAt(index);
  }

  void updateSearchListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    SearchList[index] = updateFn(_SearchList[index]);
  }

  void insertAtIndexInSearchList(int index, String value) {
    SearchList.insert(index, value);
  }

  List<OnboardingModelStruct> _OnboardingList = [
    OnboardingModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"   Cook Smart, Waste Less\",\"image\":\"assets/images/onboarding01.jpg\",\"subtitle\":\"Transform the ingredients already in your kitchen into delicious meals. We help you use what you have before it goes to waste.\"}')),
    OnboardingModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"   Explore Global Flavors\",\"image\":\"assets/images/onboarding02.jpg\",\"subtitle\":\"Discover authentic recipes from cultures around the world. Every meal is an opportunity to travel through taste and learn new traditions.\"}')),
    OnboardingModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Nourish Your Body\",\"image\":\"assets/images/onboarding03.jpg\",\"subtitle\":\"Build healthier eating habits with personalized recipe suggestions that match your wellness goals and dietary preferences.\"}'))
  ];
  List<OnboardingModelStruct> get OnboardingList => _OnboardingList;
  set OnboardingList(List<OnboardingModelStruct> value) {
    _OnboardingList = value;
  }

  void addToOnboardingList(OnboardingModelStruct value) {
    OnboardingList.add(value);
  }

  void removeFromOnboardingList(OnboardingModelStruct value) {
    OnboardingList.remove(value);
  }

  void removeAtIndexFromOnboardingList(int index) {
    OnboardingList.removeAt(index);
  }

  void updateOnboardingListAtIndex(
    int index,
    OnboardingModelStruct Function(OnboardingModelStruct) updateFn,
  ) {
    OnboardingList[index] = updateFn(_OnboardingList[index]);
  }

  void insertAtIndexInOnboardingList(int index, OnboardingModelStruct value) {
    OnboardingList.insert(index, value);
  }

  UserModelStruct _UserDetails = UserModelStruct.fromSerializableMap(jsonDecode(
      '{\"userName\":\"ronaldrichards01\",\"firstName\":\"Ronald\",\"lastName\":\"Richards\",\"email\":\"ronaldrichards@gmail.com\",\"countryCode\":\"1\",\"phoneNumber\":\"1234567890\",\"password\":\"1234\"}'));
  UserModelStruct get UserDetails => _UserDetails;
  set UserDetails(UserModelStruct value) {
    _UserDetails = value;
  }

  void updateUserDetailsStruct(Function(UserModelStruct) updateFn) {
    updateFn(_UserDetails);
  }

  bool _IsAccepted = true;
  bool get IsAccepted => _IsAccepted;
  set IsAccepted(bool value) {
    _IsAccepted = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
