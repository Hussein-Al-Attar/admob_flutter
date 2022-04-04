import 'dart:developer';

import 'package:admob_flutter/admob/adsmanager.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class adBanner extends StatefulWidget {
  const adBanner({Key? key}) : super(key: key);

  @override
  State<adBanner> createState() => _adBannerState();
}

class _adBannerState extends State<adBanner> {
  late BannerAd myBanner;
  bool _isAdReady = false;
  final AdSize _adSize = AdSize.banner;
  void _creatBannerAd() {
    myBanner = BannerAd(
      adUnitId: AdsManager.bannerAdUnitId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(onAdLoaded: (ad) {
        setState(() {
          _isAdReady = true;
        });
      }, onAdFailedToLoad: (ad, erro) {
        log("***********************${erro.message}");
      }),
    );
    myBanner.load();
  }

  @override
  void initState() {
    super.initState();
    _creatBannerAd();
  }

  @override
  void dispose() {
    myBanner.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isAdReady
        ? Container(
            height: _adSize.height.toDouble(),
            width: _adSize.width.toDouble(),
            child: AdWidget(ad: myBanner),
          )
        : Container();
  }
}
