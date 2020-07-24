//Lets Discuss About the Container and Column Element
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

MyApp()
{
  var text="Business Card";

  var profile_image_url="assets/profile.png";
  
  //var column_for_base_con=Column( ); 

  var body_background_gif_add="assets/giphy.gif";

  var third_container=Container(
                                 width:100,
                                 height:100,
                                 decoration: BoxDecoration(
                                   image: DecorationImage(
                                     fit: BoxFit.cover,
                                     image: AssetImage(profile_image_url)
                                     ),
                                   borderRadius: BorderRadius.circular(200),
                                   border:Border.all(
                                     width:1,
                                     color: Colors.grey.shade400,
                                   )
                                 )
                                );

   var fourth_container=Container(
                                 width: 230,
                                 height: 55,
                                 child: Center(
                                          child: Text(("CTF Player"),
                                             style:TextStyle(
                                               color: Colors.grey.shade200,
                                               fontWeight:FontWeight.bold,
                                               fontSize: 20,
                                             )
                                          )
                                         ),
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(90),
                                   border:Border.all(
                                     width:1,
                                     color: Colors.grey.shade400,
                                   )
                                 ),
                                 );
   
   var second_Column= Column(
     children: <Widget>[
       Center(child:
           Icon(Icons.phone_android,
            color: Colors.white,),),
       
       Center(
         child: Text(("+91 1234567890"),
       style:TextStyle(
         color: Colors.grey.shade200,
         fontWeight:FontWeight.bold,
         fontSize: 20,
       ) )),
     ]
   );

   var fifth_container=Container(
                                width: 230,
                                 height: 55,
                                 child: Center(
                                          child: Center(child:second_Column),
                                         ),
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(90),
                                   border:Border.all(
                                     width:1,
                                     color: Colors.grey.shade400,
                                   )
                                 ),
             
   );
    
   var third_Column=Column(
     children: <Widget>[
       Center(child:
           Icon(Icons.email,
            color: Colors.white,),),
       
       Center(
         child: Text(("user@ex.com"),
       style:TextStyle(
         color: Colors.grey.shade200,
         fontWeight:FontWeight.bold,
         fontSize: 20,
       ) )),
     ]
   );

   var sixth_container=Container(
                                width: 230,
                                 height: 55,
                                 child: Center(
                                          child: Center(child:third_Column),
                                         ),
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(90),
                                   border:Border.all(
                                     width:1,
                                     color: Colors.grey.shade400,
                                   )
                                 ),
             
   );

   var first_Column=Column(
     children: <Widget>[
       third_container,
       fourth_container,
       fifth_container,
       sixth_container,

     ],
   );
   var second_container= Container(
                                  width:300,
                                  height:400,
                                  child: Center(child:first_Column),
                                  decoration:BoxDecoration( 
                                     borderRadius: BorderRadius.circular(50),
                                         border: Border.all( 
                                           width:1,
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
                                     image:AssetImage(body_background_gif_add),
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

  var floating_button=FloatingActionButton(
                                     child: Icon(Icons.play_circle_filled),
                                     elevation: 0,
                                    backgroundColor: Color(0x48FFFFFF),
                                    
                                    
                                    onPressed:()
                                      {
                                           final player = AudioCache();
                                        player.play("rain_and_thunder.mp3");
                                     }
                                     );                  

  var myHome=Scaffold(
                      appBar: appbar,
                      body:Center(child:base_Container),
                      extendBodyBehindAppBar: true,
                      floatingActionButton: floating_button,
                     );

  var design_mat=MaterialApp(
                             home: myHome,
                             debugShowCheckedModeBanner: false,
                            );

    return(design_mat);                         
}