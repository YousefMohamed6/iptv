

// class RiverPlayerView extends StatefulWidget {
//   const RiverPlayerView({super.key, required this.url});
//   final String url;
//   @override
//   State<RiverPlayerView> createState() => _RiverPlayerViewState();
// }

// class _RiverPlayerViewState extends State<RiverPlayerView> {
//   late BetterPlayerController controller;
//   @override
//   void initState() {
//     super.initState();
//     controller = BetterPlayerController(
//       betterPlayerDataSource: BetterPlayerDataSource.network(
//         'https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8',
//       ),
//       const BetterPlayerConfiguration(
//         autoPlay: true,
//         allowedScreenSleep: false,
//         aspectRatio: 9 / 16,
//         controlsConfiguration: BetterPlayerControlsConfiguration(
//           enableMute: true,
//         ),
//         placeholder: Center(
//           child: CircularProgressIndicator(),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     controller.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: BetterPlayer(controller: controller),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:lecle_yoyo_player/lecle_yoyo_player.dart';

// class YoyoPlayer extends StatefulWidget {
//   const YoyoPlayer({super.key, required this.url});
//   final String url;
//   @override
//   State<YoyoPlayer> createState() => _YoyoPlayerState();
// }

// class _YoyoPlayerState extends State<YoyoPlayer> {
//   bool fullscreen = false;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Material App',
//       home: Scaffold(
//         appBar: fullscreen == false
//             ? AppBar(
//                 backgroundColor: Colors.blue,
//                 title: const Image(
//                   image: AssetImage('image/yoyo_logo.png'),
//                   fit: BoxFit.fitHeight,
//                   height: 50,
//                 ),
//                 centerTitle: true,
//                 leading: IconButton(
//                   icon: const Icon(Icons.arrow_back),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//               )
//             : null,
//         body: Padding(
//           padding:
//               fullscreen ? EdgeInsets.zero : const EdgeInsets.only(top: 32.0),
//           child: YoYoPlayer(
//             aspectRatio: 16 / 9,
//             url:
//                 // 'https://dsqqu7oxq6o1v.cloudfront.net/preview-9650dW8x3YLoZ8.webm',
//                 // "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
//                 "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8",
//             //"https://sfux-ext.sfux.info/hls/chapter/105/1588724110/1588724110.m3u8",
//             allowCacheFile: true,
//             onCacheFileCompleted: (files) {
//               print('Cached file length ::: ${files?.length}');

//               if (files != null && files.isNotEmpty) {
//                 for (var file in files) {
//                   print('File path ::: ${file.path}');
//                 }
//               }
//             },
//             onCacheFileFailed: (error) {
//               print('Cache file error ::: $error');
//             },
//             videoStyle: const VideoStyle(
//               qualityStyle: TextStyle(
//                 fontSize: 16.0,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.white,
//               ),
//               forwardAndBackwardBtSize: 30.0,
//               playButtonIconSize: 40.0,
//               playIcon: Icon(
//                 Icons.add_circle_outline_outlined,
//                 size: 40.0,
//                 color: Colors.white,
//               ),
//               pauseIcon: Icon(
//                 Icons.remove_circle_outline_outlined,
//                 size: 40.0,
//                 color: Colors.white,
//               ),
//               videoQualityPadding: EdgeInsets.all(5.0),
//               // showLiveDirectButton: true,
//               // enableSystemOrientationsOverride: false,
//             ),
//             videoLoadingStyle: const VideoLoadingStyle(
//               loading: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Image(
//                       image: AssetImage('image/yoyo_logo.png'),
//                       fit: BoxFit.fitHeight,
//                       height: 50,
//                     ),
//                     SizedBox(height: 16.0),
//                     Text("Loading video..."),
//                   ],
//                 ),
//               ),
//             ),
//             onFullScreen: (value) {
//               setState(() {
//                 if (fullscreen != value) {
//                   fullscreen = value;
//                 }
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

// // }



// // class ImaPlayerView extends StatefulWidget {
// //   const ImaPlayerView({super.key, required this.url});
// //   final String url;
// //   @override
// //   State<ImaPlayerView> createState() => _ImaPlayerViewState();
// // }

// // class _ImaPlayerViewState extends State<ImaPlayerView> {
// //   var position = ValueNotifier(Duration.zero);
// //   var events = <AdEventType>[];

// //   late ImaPlayerController controller;

// //   @override
// //   void initState() {
// //     super.initState();
// //     controller = ImaPlayerController.network(
// //       widget.url,
// //       options: const ImaPlayerOptions(
// //         autoPlay: true,
// //         isMixWithOtherMedia: false,
// //         showPlaybackControls: true,
// //       ),
// //     );
// //   }

// //   @override
// //   void dispose() {
// //     controller.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(
// //         child: ImaPlayerUI(
// //           bufferingIndicatorBuilder: () =>
// //               const Center(child: CircularProgressIndicator()),
// //           fastBackwardEnabled: true,
// //           player: ImaPlayer(controller),
// //         ),
// //       ),
// //     );
// //   }
// // }
