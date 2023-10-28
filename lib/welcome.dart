import 'package:finance_wallet/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_corner/smooth_corner.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              top: 64,
              left: 186,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(0.22),
                child: Container(
                  width: 324,
                  height: 192,
                  padding: const EdgeInsets.all(40),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF13131A),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFF30303F)),
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 126,
                        height: 27,
                        constraints: const BoxConstraints(
                          maxWidth: 126,
                          maxHeight: 27,
                        ),
                        decoration: ShapeDecoration(
                          color: const Color(0xFF2D2D3D),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 132,
              top: 140,
              child: Container(
                width: 324,
                height: 192,
                decoration: ShapeDecoration(
                  color: const Color(0xFF050506),
                  shape: SmoothRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF30303F)),
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 34, left: 26),
                      child: Opacity(
                        opacity: 0.60,
                        child: Container(
                          width: 126,
                          height: 27,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF2D2D3D),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 26),
                      child: Opacity(
                        opacity: 0.60,
                        child: Container(
                          width: 84,
                          height: 27,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF2D2D3D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Stack(
                      children: [
                        Container(
                          height: 67,
                          decoration: ShapeDecoration(
                            gradient: const SweepGradient(
                              tileMode: TileMode.clamp,
                              colors: [
                                Colors.black,
                                Colors.white,
                                Colors.black,
                                Colors.white,
                                Colors.black,
                                Colors.white,
                                Colors.black,
                                Colors.white,
                                Colors.black,
                              ],
                            ),
                            shape: SmoothRectangleBorder(
                              smoothness: 0.6,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.4,
                          child: Container(
                            height: 67,
                            decoration: ShapeDecoration(
                              gradient: const SweepGradient(
                                tileMode: TileMode.clamp,
                                colors: [
                                  Color(0xFFD7E8E6),
                                  Color(0xFFE1F664),
                                  Color(0xFFF3B6F2),
                                  Color(0xFFB0B3F8),
                                  Color(0xFF8BEAB6),
                                  Color(0xFFD7E8E6)
                                ],
                              ),
                              shape: SmoothRectangleBorder(
                                smoothness: 0.6,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 263,
                          height: 67,
                          decoration: ShapeDecoration(
                            color: const Color(0xB7D8E8E6),
                            shape: SmoothRectangleBorder(
                              smoothness: 0.6,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: List.generate(
                                  60,
                                  (index) => Container(
                                    transform: Matrix4.identity()
                                      ..rotateZ(0.40),
                                    width: 1,
                                    height: 14,
                                    margin: const EdgeInsets.only(left: 6),
                                    color: const Color(0xff39394C),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 462,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(left: 31),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Trusted & Secure\n',
                            style: GoogleFonts.plusJakartaSans(
                              color: Colors.white,
                              fontSize: 38,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'Money Wallet',
                            style: GoogleFonts.plusJakartaSans(
                              color: Colors.white,
                              fontSize: 38,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Get started with your new account now',
                      style: GoogleFonts.plusJakartaSans(
                        color: const Color(0xE5727284),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 27),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          )),
                      child: Container(
                        height: 55,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 4),
                        decoration: ShapeDecoration(
                          color: const Color(0xFFABD9EE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Get Started',
                              style: GoogleFonts.plusJakartaSans(
                                color: const Color(0xFF1D1D27),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Icon(
                              CupertinoIcons.arrow_right,
                              color: Color(0xFF1D1D27),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
