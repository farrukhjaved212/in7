// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// void main() => runApp(const In7App());

// // Maroon / ember palette
// const _maroonDeep = Color(0xFF23040B);
// const _maroonLight = Color(0xFF7A1030);
// const _emberOrange = Color(0xFFFF7A1A);
// const _gold = Color(0xFFF6C453);
// const _cream = Color(0xFFFBE9D8);

// const _downloadUrl = 'https://sites.google.com/view/in7-game-downloads---/home';

// const _backgroundAsset = 'assets/images/background.png';

// class In7App extends StatelessWidget {
//   const In7App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'IN7 Game',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         scaffoldBackgroundColor: _maroonDeep,
//         fontFamily: 'Trebuchet MS',
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: _maroonLight,
//           brightness: Brightness.dark,
//         ),
//       ),
//       home: const InstallScreen(),
//     );
//   }
// }

// class InstallScreen extends StatelessWidget {
//   const InstallScreen({super.key});

//   Future<void> _openDownloadPage() async {
//     final uri = Uri.parse(_downloadUrl);

//     if (!await launchUrl(
//       uri,
//       mode: LaunchMode.externalApplication,
//     )) {
//       // No browser available.
//     }
//   }

//   void _openHome(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (_) => const DashboardScreen(),
//       ),
//     );
//   }

//   void _openPrivacyPolicy(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (_) => const PrivacyPolicyScreen(),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           // Background
//           Opacity(
//             opacity: 0.35,
//             child: Image.asset(
//               _backgroundAsset,
//               fit: BoxFit.cover,
//               errorBuilder: (context, error, stackTrace) {
//                 return Container(
//                   color: _maroonDeep,
//                 );
//               },
//             ),
//           ),

//           // Dark overlay
//           Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [
//                   Color(0xCC23040B),
//                   Color(0xE6180307),
//                 ],
//               ),
//             ),
//           ),

//           // Ember glow
//           Container(
//             decoration: const BoxDecoration(
//               gradient: RadialGradient(
//                 center: Alignment(0, -0.85),
//                 radius: 1.1,
//                 colors: [
//                   Color(0x4DFF7A1A),
//                   Colors.transparent,
//                 ],
//                 stops: [0.0, 0.6],
//               ),
//             ),
//           ),

//           SafeArea(
//             child: Center(
//               child: SingleChildScrollView(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 28,
//                   vertical: 32,
//                 ),
//                 child: ConstrainedBox(
//                   constraints: const BoxConstraints(
//                     maxWidth: 420,
//                   ),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       // Top navigation
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           _NavButton(
//                             icon: Icons.home_rounded,
//                             label: 'Home',
//                             onTap: () => _openHome(context),
//                           ),
//                           const SizedBox(width: 10),
//                           _NavButton(
//                             icon: Icons.privacy_tip_rounded,
//                             label: 'Privacy',
//                             onTap: () => _openPrivacyPolicy(context),
//                           ),
//                         ],
//                       ),

//                       const SizedBox(height: 28),

//                       const _AppIcon(),

//                       const SizedBox(height: 22),

//                       const Text(
//                         'IN7',
//                         style: TextStyle(
//                           fontSize: 34,
//                           fontWeight: FontWeight.w800,
//                           color: _cream,
//                         ),
//                       ),

//                       const SizedBox(height: 4),

//                       const Text(
//                         '3D Ball Challenge',
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.w600,
//                           color: _gold,
//                         ),
//                       ),

//                       const SizedBox(height: 20),

//                       const _RatingRow(),

//                       const SizedBox(height: 6),

//                       Text(
//                         '3D Arcade Adventure · Android',
//                         style: TextStyle(
//                           fontSize: 13,
//                           color: _cream.withValues(alpha: 0.7),
//                         ),
//                       ),

//                       const SizedBox(height: 26),

//                       Text(
//                         'Guide the ball through challenging 3D tracks, '
//                         'navigate obstacles, and reach the finishing trophy. '
//                         'IN7 Game focuses on smooth controls, precise timing, '
//                         'and enjoyable arcade gameplay. Progress through '
//                         'different levels and improve your skills as the '
//                         'tracks become more challenging.',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 15,
//                           height: 1.55,
//                           color: _cream.withValues(alpha: 0.85),
//                         ),
//                       ),

//                       const SizedBox(height: 30),

//                       _DownloadButton(
//                         onTap: _openDownloadPage,
//                       ),

//                       const SizedBox(height: 14),

//                       _UpdateButton(
//                         onTap: _openDownloadPage,
//                       ),

//                       const SizedBox(height: 24),

//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           TextButton.icon(
//                             onPressed: () => _openHome(context),
//                             icon: const Icon(
//                               Icons.home_rounded,
//                               size: 18,
//                               color: _gold,
//                             ),
//                             label: const Text(
//                               'Home',
//                               style: TextStyle(
//                                 color: _cream,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(width: 8),
//                           TextButton.icon(
//                             onPressed: () => _openPrivacyPolicy(context),
//                             icon: const Icon(
//                               Icons.privacy_tip_rounded,
//                               size: 18,
//                               color: _gold,
//                             ),
//                             label: const Text(
//                               'Privacy Policy',
//                               style: TextStyle(
//                                 color: _cream,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),

//                       const SizedBox(height: 8),

//                       Text(
//                         'IN7 Game · 3D arcade experience',
//                         style: TextStyle(
//                           fontSize: 11,
//                           color: _cream.withValues(alpha: 0.45),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // ------------------------------------------------------------
// // Navigation Button
// // ------------------------------------------------------------

// class _NavButton extends StatelessWidget {
//   const _NavButton({
//     required this.icon,
//     required this.label,
//     required this.onTap,
//   });

//   final IconData icon;
//   final String label;
//   final VoidCallback onTap;

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.transparent,
//       child: InkWell(
//         borderRadius: BorderRadius.circular(12),
//         onTap: onTap,
//         child: Container(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 16,
//             vertical: 10,
//           ),
//           decoration: BoxDecoration(
//             color: const Color(0x6623040B),
//             borderRadius: BorderRadius.circular(12),
//             border: Border.all(
//               color: _gold.withValues(alpha: 0.35),
//             ),
//           ),
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Icon(
//                 icon,
//                 size: 18,
//                 color: _gold,
//               ),
//               const SizedBox(width: 7),
//               Text(
//                 label,
//                 style: const TextStyle(
//                   fontSize: 13,
//                   fontWeight: FontWeight.w600,
//                   color: _cream,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // ------------------------------------------------------------
// // App Icon
// // ------------------------------------------------------------

// class _AppIcon extends StatelessWidget {
//   const _AppIcon();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 168,
//       height: 168,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(38),
//         gradient: const LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             _emberOrange,
//             _maroonLight,
//             _maroonDeep,
//           ],
//           stops: [
//             0.0,
//             0.55,
//             1.0,
//           ],
//         ),
//         border: Border.all(
//           color: _gold.withValues(alpha: 0.5),
//           width: 2,
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: _emberOrange.withValues(alpha: 0.4),
//             blurRadius: 40,
//             spreadRadius: 2,
//           ),
//           const BoxShadow(
//             color: Colors.black54,
//             blurRadius: 40,
//             offset: Offset(0, 18),
//           ),
//         ],
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(36),
//         child: Image.asset(
//           'assets/images/logo.png',
//           fit: BoxFit.cover,
//           errorBuilder: (context, error, stackTrace) {
//             return CustomPaint(
//               painter: _BallPainter(),
//               size: const Size(168, 168),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// // ------------------------------------------------------------
// // Simple Ball Painter
// // ------------------------------------------------------------

// class _BallPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final center = Offset(
//       size.width / 2,
//       size.height / 2,
//     );

//     final radius = size.width * 0.24;

//     final paint = Paint()
//       ..shader = const RadialGradient(
//         colors: [
//           _gold,
//           _emberOrange,
//           _maroonLight,
//         ],
//       ).createShader(
//         Rect.fromCircle(
//           center: center,
//           radius: radius,
//         ),
//       );

//     canvas.drawCircle(
//       center,
//       radius,
//       paint,
//     );

//     final outline = Paint()
//       ..color = _cream
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2;

//     canvas.drawCircle(
//       center,
//       radius,
//       outline,
//     );
//   }

//   @override
//   bool shouldRepaint(
//     covariant CustomPainter oldDelegate,
//   ) {
//     return false;
//   }
// }

// // ------------------------------------------------------------
// // Rating
// // ------------------------------------------------------------

// class _RatingRow extends StatelessWidget {
//   const _RatingRow();

//   @override
//   Widget build(BuildContext context) {
//     const rating = 4.0;

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           rating.toStringAsFixed(1),
//           style: const TextStyle(
//             fontSize: 22,
//             fontWeight: FontWeight.w800,
//             color: _cream,
//           ),
//         ),
//         const SizedBox(width: 10),
//         Row(
//           children: List.generate(
//             5,
//             (i) {
//               final filled = i < rating.floor();

//               return Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 1,
//                 ),
//                 child: Icon(
//                   Icons.star_rounded,
//                   size: 20,
//                   color: filled ? _gold : _cream.withValues(alpha: 0.25),
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }

// // ------------------------------------------------------------
// // Download Button
// // ------------------------------------------------------------

// class _DownloadButton extends StatelessWidget {
//   const _DownloadButton({
//     required this.onTap,
//   });

//   final VoidCallback onTap;

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.transparent,
//       child: InkWell(
//         borderRadius: BorderRadius.circular(14),
//         onTap: onTap,
//         child: Container(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 24,
//             vertical: 14,
//           ),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(14),
//             gradient: const LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Color(0xFF3A0A14),
//                 Color(0xFF1A0508),
//               ],
//             ),
//             border: Border.all(
//               color: _gold.withValues(alpha: 0.5),
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withValues(alpha: 0.5),
//                 blurRadius: 24,
//                 offset: const Offset(0, 10),
//               ),
//               BoxShadow(
//                 color: _emberOrange.withValues(alpha: 0.25),
//                 blurRadius: 20,
//               ),
//             ],
//           ),
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Icon(
//                 Icons.download_rounded,
//                 color: _gold,
//                 size: 24,
//               ),
//               const SizedBox(width: 12),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'GET THE GAME',
//                     style: TextStyle(
//                       fontSize: 10,
//                       letterSpacing: 0.5,
//                       color: _cream.withValues(alpha: 0.65),
//                     ),
//                   ),
//                   const Text(
//                     'Download IN7',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w700,
//                       color: _cream,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // ------------------------------------------------------------
// // Update Button
// // ------------------------------------------------------------

// class _UpdateButton extends StatelessWidget {
//   const _UpdateButton({
//     required this.onTap,
//   });

//   final VoidCallback onTap;

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.transparent,
//       child: InkWell(
//         borderRadius: BorderRadius.circular(14),
//         onTap: onTap,
//         child: Container(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 35,
//             vertical: 16,
//           ),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(14),
//             gradient: const LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Color(0xFF3A0A14),
//                 Color(0xFF1A0508),
//               ],
//             ),
//             border: Border.all(
//               color: _gold.withValues(alpha: 0.35),
//             ),
//           ),
//           child: const Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Icon(
//                 Icons.system_update_alt_rounded,
//                 color: _gold,
//                 size: 22,
//               ),
//               SizedBox(width: 10),
//               Text(
//                 'Check for Updates',
//                 style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.w700,
//                   color: _cream,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // ------------------------------------------------------------
// // Dashboard / Home
// // ------------------------------------------------------------

// class DashboardScreen extends StatelessWidget {
//   const DashboardScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: _maroonDeep,
//       appBar: AppBar(
//         backgroundColor: _maroonDeep,
//         foregroundColor: _cream,
//         title: const Text(
//           'IN7 Game',
//           style: TextStyle(
//             fontWeight: FontWeight.w700,
//           ),
//         ),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(24),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               const SizedBox(height: 20),
//               const Icon(
//                 Icons.sports_esports_rounded,
//                 size: 70,
//                 color: _emberOrange,
//               ),
//               const SizedBox(height: 18),
//               const Text(
//                 'Welcome to IN7',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.w800,
//                   color: _cream,
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Text(
//                 'A simple 3D arcade experience focused on '
//                 'movement, timing, and obstacle challenges.',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 15,
//                   height: 1.5,
//                   color: _cream.withValues(alpha: 0.75),
//                 ),
//               ),
//               const SizedBox(height: 35),
//               const _DashboardCard(
//                 icon: Icons.gamepad_rounded,
//                 title: '3D Arcade Gameplay',
//                 description: 'Guide your ball through challenging tracks '
//                     'and reach the finish.',
//               ),
//               const SizedBox(height: 14),
//               const _DashboardCard(
//                 icon: Icons.track_changes_rounded,
//                 title: 'Challenging Tracks',
//                 description: 'Navigate platforms, obstacles, slopes, '
//                     'and elevation changes.',
//               ),
//               const SizedBox(height: 14),
//               const _DashboardCard(
//                 icon: Icons.touch_app_rounded,
//                 title: 'Simple Controls',
//                 description: 'Enjoy smooth and responsive controls designed '
//                     'for easy gameplay.',
//               ),
//               const SizedBox(height: 30),
//               ElevatedButton.icon(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 icon: const Icon(Icons.arrow_back_rounded),
//                 label: const Text('Back to Game'),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: _emberOrange,
//                   foregroundColor: Colors.white,
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 15,
//                   ),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(14),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _DashboardCard extends StatelessWidget {
//   const _DashboardCard({
//     required this.icon,
//     required this.title,
//     required this.description,
//   });

//   final IconData icon;
//   final String title;
//   final String description;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(18),
//       decoration: BoxDecoration(
//         color: const Color(0x662F0710),
//         borderRadius: BorderRadius.circular(16),
//         border: Border.all(
//           color: _gold.withValues(alpha: 0.25),
//         ),
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 48,
//             height: 48,
//             decoration: BoxDecoration(
//               color: _emberOrange.withValues(alpha: 0.15),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Icon(
//               icon,
//               color: _gold,
//             ),
//           ),
//           const SizedBox(width: 15),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w700,
//                     color: _cream,
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 Text(
//                   description,
//                   style: TextStyle(
//                     fontSize: 13,
//                     height: 1.4,
//                     color: _cream.withValues(alpha: 0.65),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // ------------------------------------------------------------
// // Privacy Policy
// // ------------------------------------------------------------

// class PrivacyPolicyScreen extends StatelessWidget {
//   const PrivacyPolicyScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: _maroonDeep,
//       appBar: AppBar(
//         backgroundColor: _maroonDeep,
//         foregroundColor: _cream,
//         title: const Text(
//           'Privacy Policy',
//         ),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(24),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 'IN7 Game Privacy Policy',
//                 style: TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.w800,
//                   color: _cream,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const _PrivacySection(
//                 title: 'Overview',
//                 text: 'IN7 Game is a 3D arcade game designed for '
//                     'entertainment and gameplay. This privacy policy '
//                     'explains how information may be handled when '
//                     'using the game.',
//               ),
//               const _PrivacySection(
//                 title: 'Information Collection',
//                 text: 'IN7 Game does not intentionally collect personal '
//                     'information such as your name, address, phone '
//                     'number, or personal messages through the game.',
//               ),
//               const _PrivacySection(
//                 title: 'Game Usage',
//                 text: 'The game may store basic local gameplay settings '
//                     'on your device to provide a better gameplay '
//                     'experience.',
//               ),
//               const _PrivacySection(
//                 title: 'Third-Party Services',
//                 text: 'If third-party services are added in future '
//                     'versions, their respective privacy policies '
//                     'may apply to the information handled by those '
//                     'services.',
//               ),
//               const _PrivacySection(
//                 title: 'Children',
//                 text: 'IN7 Game is intended as a general arcade game. '
//                     'We do not intentionally request personal '
//                     'information from children.',
//               ),
//               const _PrivacySection(
//                 title: 'Changes to This Policy',
//                 text: 'This privacy policy may be updated when the '
//                     'game or its services change. Any updated version '
//                     'will be made available with the application.',
//               ),
//               const _PrivacySection(
//                 title: 'Contact',
//                 text: 'For questions regarding this privacy policy or '
//                     'the IN7 Game application, please contact the '
//                     'developer through the official application '
//                     'support channel.',
//               ),
//               const SizedBox(height: 20),
//               Center(
//                 child: Text(
//                   'Last updated: October 2026',
//                   style: TextStyle(
//                     fontSize: 12,
//                     color: _cream.withValues(alpha: 0.45),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _PrivacySection extends StatelessWidget {
//   const _PrivacySection({
//     required this.title,
//     required this.text,
//   });

//   final String title;
//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 24),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 17,
//               fontWeight: FontWeight.w700,
//               color: _gold,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             text,
//             style: TextStyle(
//               fontSize: 14,
//               height: 1.55,
//               color: _cream.withValues(alpha: 0.75),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const In7App());

// Maroon / Ember palette
const _maroonDeep = Color(0xFF23040B);
const _maroonLight = Color(0xFF7A1030);
const _emberOrange = Color(0xFFFF7A1A);
const _gold = Color(0xFFF6C453);
const _cream = Color(0xFFFBE9D8);

const _downloadUrl = 'https://sites.google.com/view/in7-game-downloads---/home';

const _backgroundAsset = 'assets/images/background.png';

class In7App extends StatelessWidget {
  const In7App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IN7 App Information',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: _maroonDeep,
        fontFamily: 'Trebuchet MS',
        colorScheme: ColorScheme.fromSeed(
          seedColor: _maroonLight,
          brightness: Brightness.dark,
        ),
      ),
      home: const InstallScreen(),
    );
  }
}

// ------------------------------------------------------------
// Main Screen
// ------------------------------------------------------------

class InstallScreen extends StatelessWidget {
  const InstallScreen({super.key});

  Future<void> _openDownloadPage(BuildContext context) async {
    final uri = Uri.parse(_downloadUrl);

    try {
      final opened = await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );

      if (!opened && context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Unable to open the download webpage.'),
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Something went wrong while opening the webpage.'),
          ),
        );
      }
    }
  }

  void _openHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const DashboardScreen(),
      ),
    );
  }

  void _openPrivacyPolicy(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const PrivacyPolicyScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background
          Opacity(
            opacity: 0.35,
            child: Image.asset(
              _backgroundAsset,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(color: _maroonDeep);
              },
            ),
          ),

          // Dark overlay
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xCC23040B),
                  Color(0xE6180307),
                ],
              ),
            ),
          ),

          // Ember glow
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(0, -0.85),
                radius: 1.1,
                colors: [
                  Color(0x4DFF7A1A),
                  Colors.transparent,
                ],
                stops: [0.0, 0.6],
              ),
            ),
          ),

          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 32,
                ),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 420),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Navigation
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _NavButton(
                            icon: Icons.home_rounded,
                            label: 'Home',
                            onTap: () => _openHome(context),
                          ),
                          const SizedBox(width: 10),
                          _NavButton(
                            icon: Icons.privacy_tip_rounded,
                            label: 'Privacy',
                            onTap: () => _openPrivacyPolicy(context),
                          ),
                        ],
                      ),

                      const SizedBox(height: 28),

                      const _AppIcon(),

                      const SizedBox(height: 22),

                      const Text(
                        'IN7',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w800,
                          color: _cream,
                        ),
                      ),

                      const SizedBox(height: 6),

                      const Text(
                        'App Information & Download',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: _gold,
                        ),
                      ),

                      const SizedBox(height: 26),

                      Text(
                        'Welcome to IN7. This application provides '
                        'basic information about IN7 and convenient '
                        'access to its external download webpage. '
                        'Tap the button below to visit the webpage '
                        'for download information.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.55,
                          color: _cream.withValues(alpha: 0.85),
                        ),
                      ),

                      const SizedBox(height: 30),

                      _DownloadButton(
                        onTap: () => _openDownloadPage(context),
                      ),

                      const SizedBox(height: 24),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton.icon(
                            onPressed: () => _openHome(context),
                            icon: const Icon(
                              Icons.home_rounded,
                              size: 18,
                              color: _gold,
                            ),
                            label: const Text(
                              'Home',
                              style: TextStyle(color: _cream),
                            ),
                          ),
                          const SizedBox(width: 8),
                          TextButton.icon(
                            onPressed: () => _openPrivacyPolicy(context),
                            icon: const Icon(
                              Icons.privacy_tip_rounded,
                              size: 18,
                              color: _gold,
                            ),
                            label: const Text(
                              'Privacy Policy',
                              style: TextStyle(color: _cream),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 8),

                      Text(
                        'IN7 App Information',
                        style: TextStyle(
                          fontSize: 11,
                          color: _cream.withValues(alpha: 0.45),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ------------------------------------------------------------
// Navigation Button
// ------------------------------------------------------------

class _NavButton extends StatelessWidget {
  const _NavButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: const Color(0x6623040B),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: _gold.withValues(alpha: 0.35),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 18, color: _gold),
              const SizedBox(width: 7),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: _cream,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ------------------------------------------------------------
// App Icon
// ------------------------------------------------------------

class _AppIcon extends StatelessWidget {
  const _AppIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168,
      height: 168,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            _emberOrange,
            _maroonLight,
            _maroonDeep,
          ],
        ),
        border: Border.all(
          color: _gold.withValues(alpha: 0.5),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: _emberOrange.withValues(alpha: 0.4),
            blurRadius: 40,
            spreadRadius: 2,
          ),
          const BoxShadow(
            color: Colors.black54,
            blurRadius: 40,
            offset: Offset(0, 18),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(36),
        child: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(
              Icons.info_outline_rounded,
              size: 85,
              color: _cream,
            );
          },
        ),
      ),
    );
  }
}

// ------------------------------------------------------------
// Download Button
// ------------------------------------------------------------

class _DownloadButton extends StatelessWidget {
  const _DownloadButton({
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF3A0A14),
                Color(0xFF1A0508),
              ],
            ),
            border: Border.all(
              color: _gold.withValues(alpha: 0.5),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.5),
                blurRadius: 24,
                offset: const Offset(0, 10),
              ),
              BoxShadow(
                color: _emberOrange.withValues(alpha: 0.25),
                blurRadius: 20,
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.open_in_browser_rounded,
                color: _gold,
                size: 25,
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'OPEN EXTERNAL WEBSITE',
                    style: TextStyle(
                      fontSize: 10,
                      letterSpacing: 0.5,
                      color: _cream.withValues(alpha: 0.65),
                    ),
                  ),
                  const Text(
                    'Visit Download Page',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: _cream,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ------------------------------------------------------------
// Dashboard / Home
// ------------------------------------------------------------

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  Future<void> _openDownloadPage(BuildContext context) async {
    final uri = Uri.parse(_downloadUrl);

    try {
      final opened = await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );

      if (!opened && context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Unable to open the download webpage.'),
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Unable to open the external website.'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _maroonDeep,
      appBar: AppBar(
        backgroundColor: _maroonDeep,
        foregroundColor: _cream,
        title: const Text(
          'About IN7',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              const Icon(
                Icons.info_outline_rounded,
                size: 70,
                color: _emberOrange,
              ),
              const SizedBox(height: 18),
              const Text(
                'Welcome to IN7',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: _cream,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'IN7 provides a simple interface to view '
                'information about the application and access '
                'its external download webpage.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  color: _cream.withValues(alpha: 0.75),
                ),
              ),
              const SizedBox(height: 35),
              const _DashboardCard(
                icon: Icons.info_outline_rounded,
                title: 'App Information',
                description: 'View the available information about IN7.',
              ),
              const SizedBox(height: 14),
              const _DashboardCard(
                icon: Icons.open_in_browser_rounded,
                title: 'External Download Website',
                description:
                    'Visit the external webpage through your device browser '
                    'to access IN7 download information.',
              ),
              const SizedBox(height: 14),
              const _DashboardCard(
                icon: Icons.privacy_tip_rounded,
                title: 'Privacy Information',
                description: 'Access the privacy policy of this application.',
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () => _openDownloadPage(context),
                icon: const Icon(Icons.open_in_browser_rounded),
                label: const Text('Visit Download Page'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: _emberOrange,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              OutlinedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_rounded),
                label: const Text('Back to Home'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: _cream,
                  side: BorderSide(
                    color: _gold.withValues(alpha: 0.4),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ------------------------------------------------------------
// Dashboard Card
// ------------------------------------------------------------

class _DashboardCard extends StatelessWidget {
  const _DashboardCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  final IconData icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0x662F0710),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: _gold.withValues(alpha: 0.25),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: _emberOrange.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: _gold),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: _cream,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 13,
                    height: 1.4,
                    color: _cream.withValues(alpha: 0.65),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ------------------------------------------------------------
// Privacy Policy
// ------------------------------------------------------------

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _maroonDeep,
      appBar: AppBar(
        backgroundColor: _maroonDeep,
        foregroundColor: _cream,
        title: const Text('Privacy Policy'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'IN7 App Privacy Policy',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: _cream,
                ),
              ),
              const SizedBox(height: 20),
              const _PrivacySection(
                title: 'Overview',
                text: 'IN7 is an application that displays '
                    'information about IN7 and provides access '
                    'to an external download webpage.',
              ),
              const _PrivacySection(
                title: 'Application Usage',
                text: 'The application displays informational '
                    'content. When users select the download button, '
                    'the application opens an external webpage '
                    'in the device browser.',
              ),
              const _PrivacySection(
                title: 'External Websites',
                text: 'The download button redirects users to an '
                    'external website. That website may have its '
                    'own privacy practices and policies. Users '
                    'should review the external website privacy '
                    'policy before providing any information.',
              ),
              const _PrivacySection(
                title: 'Information Collection',
                text: 'Please refer to the application developer '
                    'privacy disclosures for details about any '
                    'information collected or processed by the app.',
              ),
              const _PrivacySection(
                title: 'Changes to This Policy',
                text: 'This privacy policy may be updated when '
                    'the application or its functionality changes. '
                    'The updated policy will be made available '
                    'with the application.',
              ),
              const _PrivacySection(
                title: 'Contact',
                text: 'For questions about this application or '
                    'its privacy policy, please use the developer '
                    'contact information provided on the application '
                    'store listing.',
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'Last updated: November 2026',
                  style: TextStyle(
                    fontSize: 12,
                    color: _cream.withValues(alpha: 0.45),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ------------------------------------------------------------
// Privacy Section
// ------------------------------------------------------------

class _PrivacySection extends StatelessWidget {
  const _PrivacySection({
    required this.title,
    required this.text,
  });

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: _gold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              height: 1.55,
              color: _cream.withValues(alpha: 0.75),
            ),
          ),
        ],
      ),
    );
  }
}
