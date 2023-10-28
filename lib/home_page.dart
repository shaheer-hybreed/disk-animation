import 'package:finance_wallet/wallet_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class TileData {
  final String title;
  final String subtitle;
  final String amount;
  final IconData icon;

  TileData(
      {required this.title,
      required this.subtitle,
      required this.amount,
      required this.icon});
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static List<TileData> transactions = [
    TileData(
      title: "Grocery",
      subtitle: 'Just Now',
      amount: "-\$49.6",
      icon: Iconsax.bag,
    ),
    TileData(
      title: "Electricity",
      subtitle: '2 weeks ago',
      amount: "-\$82",
      icon: Iconsax.lamp_charge,
    ),
    TileData(
      title: "Apple Music",
      subtitle: '1 month ago',
      amount: "-\$25",
      icon: Iconsax.music,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff050506),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WalletCard(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
              child: Text(
                'Transactions',
                style: GoogleFonts.plusJakartaSans(
                  color: const Color(0xFFE3E3E7),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: ShaderMask(
                blendMode: BlendMode.dstOut,
                shaderCallback: (bounds) => const LinearGradient(
                  begin: Alignment(-0.00, 1.8),
                  end: Alignment(0, -0.2),
                  colors: [Color(0xFF050506), Color(0x00050506)],
                ).createShader(bounds),
                child: ListView.builder(
                  itemCount: transactions.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  itemBuilder: (context, index) => ListTile(
                    leading: Icon(
                      transactions[index].icon,
                      color: const Color(0xff545463),
                    ),
                    title: Text(
                      transactions[index].title,
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.white.withOpacity(0.839),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      transactions[index].subtitle,
                      style: GoogleFonts.plusJakartaSans(
                        color: const Color(0xB2777787),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Text(
                      transactions[index].amount,
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.white.withOpacity(0.800000011920929),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(
                color: Color(0xFF272735),
                height: 1,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 44)
                    .copyWith(bottom: 40, top: 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Iconsax.home,
                      color: Color(0xFFABD9EE),
                    ),
                    Icon(
                      Iconsax.card,
                      color: Colors.white.withOpacity(0.6),
                    ),
                    Icon(
                      Iconsax.status_up,
                      color: Colors.white.withOpacity(0.6),
                    ),
                    Icon(
                      Iconsax.setting,
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 21),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 75,
                  height: 1,
                  color: const Color(0xFFABD9EE),
                ),
                Container(
                  width: 67,
                  height: 79,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.01, -1.00),
                      end: Alignment(0.01, 1),
                      colors: [Color(0x14BCEAFF), Color(0x0F313A40)],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
