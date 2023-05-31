import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BioCard extends StatelessWidget {
   const BioCard({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.subtitle,
    required this.trailingIcon,
    this.marginBottom = 0,
    required this.onPrssed,

  }) : super(key: key);

  final IconData leadingIcon;
  final String title;
  final String subtitle;
  final IconData trailingIcon;
  final double marginBottom;
  final void Function() onPrssed;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:  EdgeInsetsDirectional.only(
        start: 30,
        end: 30,
        bottom: marginBottom,
      ),
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child:  Icon(
                leadingIcon,
                color: Colors.black45 ,
              ),
            ),
            const SizedBox(
              width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.cabin(
                  fontSize: 15,
                ),),
                Text(
                  subtitle,
                  style: GoogleFonts.cabin(
                  fontSize: 13,
                  color: Colors.black45,
                ),),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: onPrssed,
              icon: Icon(trailingIcon),
              iconSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}