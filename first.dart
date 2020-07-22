import 'package:flutter/material.dart'; // We have to import material.dart as it contains multiple inbuilt functions/method

myfirstapp() {

  // This is for Styling Text and makes our text more beautiful and interactive
  // fluter Text , Search and find more methods to beautify Application
  var Text_Style = TextStyle(
    fontWeight: FontWeight.bold ,
    fontStyle: FontStyle.italic,
    color: Colors.red,
    fontSize: 14,
  );

  var x = Text(
    'This is first app created by me using Flutter ' , 
    style: Text_Style,
    textDirection: TextDirection.ltr, 
    //textAlign: TextAlign.center,
  );

//Variable for Icon , here Icons.bookmark is the symbol of Bookmark Icon
  var MyIcon = Icon(
    Icons.bookmark ,
  );

  var LinkedIcon = Icon (
    Icons.link ,
    color: Colors.blue, // Color of Icon
  );

// Press1() is a method , when anyone click the IconButton , Then clicked.... is printed on the terminal/console
  Press1() {
    print("clicked....");
  }

// Variable created for IconButton
  var LinkedInButton = IconButton(
    icon: LinkedIcon,
    onPressed: Press1, // Output comes form Press1() function/method
  );

// AppBar creates one pre-created having leading , title , actions etc.
  var MyAppBar = AppBar(
    title: x,
    backgroundColor: Colors.lightGreen,
    leading: MyIcon,
    actions: <Widget>[
      LinkedInButton , 
    ],
  );

// url stored the image address
  var url = 'https://media-exp1.licdn.com/dms/image/C5103AQEGmjI7Z4X1Ig/profile-displayphoto-shrink_400_400/0?e=1600905600&v=beta&t=GWiqQbS7M7NT3rIvRuvVkXGsa5H1OwPTjbIg-twddpU';
  
  var Aks_Image = Image.network(
    url , 
    width: double.infinity,
    height: double.infinity,
  );

// Scaffold will provide a framework to implement the basic material design layout of the application.
  var MyHome = Scaffold (
    appBar: MyAppBar,
    backgroundColor: Colors.cyan,
    body: Aks_Image,
  );

// It is used for UI , design
  var design = MaterialApp(
    home: MyHome,
    debugShowCheckedModeBanner: false,
    );

    return design;

}