import 'dart:io';

class AdsManager {
  static bool _testMode = true;

  ///
  static String get appId {
    if (_testMode == true) {
      return "/6499/example/app-open";
    } else if (Platform.isAndroid) {
      return "ca-app-pub-1043374888199102~3772150474";
    } else if (Platform.isIOS) {
      return "ca-app-pub-1043374888199102~7875047013";
    } else {
      return "";
    }
  }

  static String get bannerAdUnitId {
    if (_testMode == true) {
      return "/6499/example/banner";
    } else if (Platform.isAndroid) {
      return "--------------------------------------";
    } else if (Platform.isIOS) {
      return "--------------------------------------";
    } else {
      return "";
    }
  }

  static String get interstitialAdUnitId {
    if (_testMode == true) {
      return "AdmobInterstitial.testAdUnitId";
    } else if (Platform.isAndroid) {
      return "--------------------------------------";
    } else if (Platform.isIOS) {
      return "--------------------------------------";
    } else {
      return "";
    }
  }

  static String get nativeAdUnitId {
    if (_testMode == true) {
      return "--------------------------------------";
    } else if (Platform.isAndroid) {
      return "--------------------------------------";
    } else if (Platform.isIOS) {
      return "";
    } else {
      return "";
    }
  }
}
