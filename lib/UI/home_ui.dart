//Lets Discuss About the Container and Column Element
import 'package:flutter/material.dart';

myApp()
{
  var text="Business Card";

  var img_leading_url="https://raw.githubusercontent.com/Shashwatsingh22/Starting_With_Flutter/master/images/Sunglasses%20Emoji.png?token=ANEAJVSYJK33INVW5F4S7XS7EOYDG";
  
  //var column_for_base_con=Column( ); 

  var body_background_gif_url="https://raw.githubusercontent.com/Shashwatsingh22/Starting_With_Flutter/master/images/giphy.gif?token=ANEAJVU5KKI6JFJKB56NPMS7EPGQQ";

   var second_container= Container(
                                  width:300,
                                  height:300,
                                  decoration:BoxDecoration( 
                                                           borderRadius: BorderRadius.circular(500),
                                                           border: Border.all( 
                                                           width:5,
                                                           color: Colors.grey.shade400,
                                                           ),
                                   color:Colors.transparent,
                                  ),         
                                  );

  var base_Container= Container(
                                width:double.infinity,
                                height:double.infinity, 
                               child: Center(child:second_container),
                               decoration:BoxDecoration(
                                image:DecorationImage(
                                  fit: BoxFit.cover,
                                  image:NetworkImage(body_background_gif_url)
                                   ),
                               ),
                              );

  var appbar=AppBar(
                    title: Text(text,
                    style:TextStyle(
                      color:Colors.white54
                    ),),
                    backgroundColor: Colors.transparent,
                    //leading: Image.network(img_leading_url),
                    );

  var myHome=Scaffold(
                      appBar: appbar,
                      body:Center(child:base_Container),
                    extendBodyBehindAppBar: true
                     );

  var design_mat=MaterialApp(
                             home: myHome,
                             debugShowCheckedModeBanner: false,
                            );

    return(design_mat);                         
}