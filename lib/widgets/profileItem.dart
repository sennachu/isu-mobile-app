import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profileItem extends StatelessWidget {
  final Function()? onTap;
  final String avatar;
  final String name;
  const profileItem({
    super.key,
    this.onTap,
    required this.avatar,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(45),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 108, 197, 237)),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 255, 255, 255)),
                child: CircleAvatar(
                  backgroundImage: AssetImage(avatar),
                  radius: 40,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              name,
              style: GoogleFonts.firaSans(),
            ),
          ],
        ),
      ),
    );
  }
}
