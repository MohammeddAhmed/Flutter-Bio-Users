import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vp18_bio_app/extensions/context_extensions.dart';
import '../widgets/bio_card.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('BIO',style: GoogleFonts.cabin(fontSize: 25),),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topCenter,
            end: AlignmentDirectional.bottomEnd,
            colors:[
              Colors.pink.shade200,
              Colors.blue.shade200,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //const Spacer(),
             CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey.shade300,
              backgroundImage: const NetworkImage(
                  'https://toprydedentist.com.au/wp-content/uploads/2022/02/doctor2.png'),
            ),
             Text('User Name', style: GoogleFonts.cabin(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              height: 2.5,
            ),),
             Text('User Information',style: GoogleFonts.cabin(
              fontSize: 18,
              color: Colors.black45,
            ),),
            const Divider(
              thickness: 1,
              indent: 30,
              endIndent: 30,
              color: Colors.black26,
              height: 50,
            ),
             BioCard(
              leadingIcon: Icons.email,
              title: 'Email',
              subtitle: 'email@app.com',
              trailingIcon: Icons.send,
              marginBottom: 10,
              onPrssed: (){
                context.showSnackBar(message: 'Send Email');
              },
            ),
             BioCard(
              leadingIcon: Icons.phone_android,
              title: 'Phone',
              subtitle: '41-9632-648-22',
              trailingIcon: Icons.call,
               onPrssed: (){
                context.showSnackBar(message: 'Call Phone');
               },
            ),
          ],
        ),
      ),
    );
  }
}


