import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> luanchCustomUrl(context,String? Url) async{
 if(Url != null){
   Uri uri = Uri.parse(Url);
   if (await canLaunchUrl(uri)) {
     await launchUrl(uri);
   }else{
     ScaffoldMessenger.of(context).showSnackBar(
         SnackBar(content: Text("cannot luanch $uri"),)
     );
   }
 }
}