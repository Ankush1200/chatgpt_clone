
import 'dart:async';

import 'package:chatgpt_clone/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants/constant.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(
          seconds:3,
        ), () {
      Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (builder)=>const ChatScreen()), (route) => false);
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:cardColor,
      appBar: AppBar(
        backgroundColor: cardColor,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Open AI',
            
            style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white
            ),),
            // SizedBox(height:0,width: MediaQuery.of(context).size.width,),
            Expanded(child: 
            Lottie.asset('assets/images/chat-logo.json')
            // Image.asset('assets/images/openai-logo.gif',height: 200,width: 200,)
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical:20.0),
              child: Text('An AI app by Ankush Prajapati',
              style: TextStyle(
                fontSize: 15,
                
                fontWeight: FontWeight.bold,
                color:Colors.white,
              ),),
            )
          ],
        ),
      ),
    );
  }
}