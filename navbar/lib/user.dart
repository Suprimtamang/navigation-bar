// //  "url": "https://player.vimeo.com/external/135736646.hd.mp4?s=ed02d71c92dd0df7d1110045e6eb65a6&profile_id=119",
// //                 "width": 1920,
// //                 "height": 1080,
// //                 "size": 6615235

// import 'dart:convert';

// class VideoResolution {
//   final VideoSize large;
//   final VideoSize medium;
//   final VideoSize small;
//   final VideoSize tiny;
//   // final String url;
//   // final int width ,height , size;

//   VideoResolution(
//       {required this.large,
//       required this.medium,
//       required this.small,
//       required this.tiny});

//   static VideoResolution convertJsonToObject(Map json) {
//     return VideoResolution(
//       large: VideoSize.convertJsonToVideoSize(json['large']),
//       medium: VideoSize.convertJsonToVideoSize(json['medium']),
//       small: VideoSize.convertJsonToVideoSize(json['small']),
//       tiny: VideoSize.convertJsonToVideoSize(json['tiny']),
//     );
//   }
// }

// class VideoSize {
//   final String url;
//   final int width, height, size;

//   VideoSize(
//       {required this.url,
//       required this.width,
//       required this.height,
//       required this.size});

//   factory VideoSize.convertJsonToVideoSize(Map json) {
//     return VideoSize(
//         url: json['url'],
//         width: json['width'],
//         height: json['height'],
//         size: json['size']);
//   }
// }
