import 'package:final_project/models/music.dart';

class PopularOperation {
  PopularOperation._();
  static List<Music> getMusic() {
    return <Music>[
      Music(
          'Paint it Black - Bish',
          'https://c-cl.cdn.smule.com/rs-s79/arr/6d/85/4c4c3129-4656-4cee-959b-9be984552c17.jpg',
          'Anime',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/3c/bc/83/3cbc830e-40d5-eff4-ccbc-16a1a5e00c6f/mzaf_3512713935281740318.plus.aac.p.m4a'),
      Music(
          'ZenryokuSummer - Angela',
          'https://static.wikia.nocookie.net/jpop/images/7/79/Zensamaani.jpg/revision/latest?cb=20170613002323',
          'Anime',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/25/29/18/252918ee-0491-cffe-067e-d3cd01a632a1/mzaf_560434821774735953.plus.aac.p.m4a'),
      Music(
          'Chiisana Boukensha - Aqua',
          'https://c-cl.cdn.smule.com/rs-s87/arr/6a/75/2c90cd84-1190-46ad-b0fd-99af13a63dad.jpg',
          'Anime',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/05/ec/9e/05ec9ed3-db7e-79e6-0617-9273a60d8a64/mzaf_1045531934904219060.plus.aac.p.m4a'),
      Music(
          'Wired Life - Meisa Kuroki',
          'https://static.myfigurecollection.net/pics/figure/big/77436.jpg',
          'Anime',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/e1/57/83/e157830d-a82f-eba0-8675-7555ccd422e9/mzaf_3850487621845537397.plus.aac.p.m4a'),
      Music(
          'Aoitori - Kana Hanazawa',
          'https://cdns-images.dzcdn.net/images/cover/0c0036102f191905b854116997b2b622/264x264.jpg',
          'Anime',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview114/v4/66/e1/3d/66e13d77-88b3-5182-9e84-d69b8be916bc/mzaf_15509708897863279771.plus.aac.p.m4a'),
    ];
  }
}
