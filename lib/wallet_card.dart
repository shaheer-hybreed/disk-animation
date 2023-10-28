import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:smooth_corner/smooth_corner.dart';

class WalletCard extends StatefulWidget {
  const WalletCard({
    super.key,
  });

  @override
  State<WalletCard> createState() => _WalletCardState();
}

class _WalletCardState extends State<WalletCard> {
  double x = 0.0;
  double grad = 0.0;

  AccelerometerEvent? event;
  @override
  void initState() {
    gyroscopeEvents.listen((GyroscopeEvent event) {
      accelerometerEvents.listen((AccelerometerEvent event) {
        setState(() {
          this.event = event;
        });
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        duration: const Duration(milliseconds: 200),
        tween: Tween(begin: x, end: event == null ? 0 : event!.x / 7),
        onEnd: () => x = event!.x / 7,
        builder: (context, value, child) {
          return Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001) // 3D perspective
              ..rotateY(value),
            alignment: FractionalOffset.center,
            child: Container(
              height: 438,
              width: double.maxFinite,
              margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xFF0E0F0F),
                borderRadius: BorderRadius.circular(17.38),
                border: const GradientBoxBorder(
                  gradient: LinearGradient(
                    begin: Alignment(0.41, -0.91),
                    end: Alignment(-0.41, 0.91),
                    colors: [
                      Color(0xFF676464),
                      Color(0x00676464),
                      Color(0x99676464)
                    ],
                  ),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 37.7,
                      left: 26.07,
                      right: 24.21,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Primary',
                          style: GoogleFonts.plusJakartaSans(
                            color: const Color(0xFFF0F0F0),
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 47.80,
                          height: 28.68,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 28.68,
                                  height: 28.68,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFD0DBDE),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 19.12,
                                top: -0,
                                child: Container(
                                  width: 28.68,
                                  height: 28.68,
                                  decoration: const ShapeDecoration(
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 1.35, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 89,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 28),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1.45,
                          color: Color(0xFF2D2D2D),
                          strokeAlign: -1,
                        ),
                        borderRadius: BorderRadius.circular(11.59),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 14, horizontal: 21),
                            decoration: const ShapeDecoration(
                              color: Color(0xFF1F2122),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Card No.',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: const Color(0xFF848484),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  '4590',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: const Color(0xFFDADADA),
                                    fontSize: 23.18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 14, horizontal: 31),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Exp Date',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: const Color(0xFF848484),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  '09/25',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: const Color(0xFFDADADA),
                                    fontSize: 23.18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Container(
                          width: 55.04,
                          height: 55.04,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD1D9D6),
                            shape: OvalBorder(),
                          ),
                          child: const Icon(Iconsax.crown_14),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Card Holder',
                              style: GoogleFonts.plusJakartaSans(
                                color: const Color(0xFF848484),
                                fontSize: 15.38,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'JASEEM ALI',
                              style: GoogleFonts.plusJakartaSans(
                                color: const Color(0xFFDADADA),
                                fontSize: 19.18,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.maxFinite,
                    height: 140.50,
                    child: Stack(
                      children: [
                        TweenAnimationBuilder<double>(
                            duration: const Duration(milliseconds: 400),
                            tween: Tween(
                                begin: grad,
                                end: event == null ? 0 : event!.x / 5),
                            onEnd: () => grad = event!.x / 5,
                            builder: (context, value, child) {
                              return Container(
                                decoration: ShapeDecoration(
                                  gradient: SweepGradient(
                                    tileMode: TileMode.clamp,
                                    // endAngle: value,
                                    transform: GradientRotation(value),
                                    colors: const [
                                      Colors.black,
                                      Colors.white,
                                      Colors.black,
                                      Colors.white,
                                      Colors.black,
                                      Colors.white,
                                      Colors.black,
                                      Colors.white,
                                      Colors.black,
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
                              );
                            }),
                        Opacity(
                          opacity: 0.5,
                          child: Container(
                            decoration: ShapeDecoration(
                              gradient: SweepGradient(
                                tileMode: TileMode.clamp,
                                endAngle: pi * 4,
                                transform: GradientRotation(value),
                                colors: const [
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
                          decoration: ShapeDecoration(
                            color: const Color(0xBCD8E8E6).withOpacity(0.7),
                            shape: SmoothRectangleBorder(
                              smoothness: 0.6,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 23),
                                child: Text(
                                  'My wallet',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '\$12,608.05',
                                style: GoogleFonts.plusJakartaSans(
                                  color: Colors.black,
                                  fontSize: 33.92,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
