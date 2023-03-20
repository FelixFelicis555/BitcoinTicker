import 'package:flutter/material.dart';
import 'price_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.white),
      home: PriceScreen(),
    );
  }
}
/*

 What We'll Make : 

  * We build an app which tell us the current price of various bitcoins in various currencies

   ? Through making this app,we are going to revising lot of concepts that we had learned such as networking,async-await and also getting live-data from internet using API's

   We are also going to learn how we can implement different UI for different platforms

   We Kept the user-interface relatively simple

 
  * We get started by creating Drop-down button

   ? To check what is 1btc worth in all of those currencies,so we need a way of being able to select from all of those currencies

    You can see all of the ones that we are planning to incorporate ,put inside currenciesList 

    We also store list of cryptocurrencies in cryptoList

    The easiest way of doing this is by using something called DropDown Button

     * It comes from Material-Design Concept .If you click on button, and it shows you various things that you can select from
     
     We try to integrate into our app to make it display all of those currencies

   ! We can simply build drop-down button as a widget
    It takes 2 properties ,one is list of items &other one is onChanged
    Items are  just the things that go into Drop-Down Button

 * In order to use it,we need to specify what's the type of data that DropDownButton displays

 ? Each Drop-Down Menu Item has a property called child of type Widget


 As usual for any sort of button, if it's onchanged is null it would usually be in disabled state

*  We won't see anything unless we change this property
 
 ? Inside onChanged() ,we pass a callback to it.

 We can print it's value at the moment when we click on it

  
  onChanged() gets triggered when you click on the Button

  ? One of the property that's really useful-value property where we can specify it's starting value

 We need to update the value property when the state  of Drop-Down Button changes

 * So,to do that we are going to  create a new property ,instead of just passing dummy string as starting-value,you can pass variables,set the values of it
 
 ! If you have lot of drop-down menu items ,creating one by one becomes really painful,what we can do instead

 ? Well,we could create a loop that loops through our list of currencies and create Drop-down Menu item for each of them,putting those currencies text widget & value inside them
   

   ! How Dart Loop Works?

   We have learned how to create DropdownMenuItem widgets that includes text widget & value property

* Whenever we need some functionality or piece of code to be executed multiple times,we can use loop to do that

Types of Loops-for,while,do..while

? for-loop comes in many different flavours
- Inititalization,Condition,Updation

We can traverse the loop in either of the direction we wanted

Condition-Relational operators ,logical-operators ,Bitwise operators

 ! For..in Loop
  This is really helpful when we want to loop through all of the items in iterable something like List and do something with each of those values and iterate till length of iterable
  ? for(String fruit in fruits)
  {

  }



 ! Building Widgets with Dart Loops Concept :


 What we'll do is,we create empty list of type widget
 We iterate over the currenciesList & store each DropdownMenuItem widget in newItem,add it to the new-list

All of these things we define inside a method,which returns list of widget as output

? We can use it this list in items by simply calling a method


 ! Introducing Cupertino Widgets

 The way we select from different options in Ios,it's not a drop-down list like in android,But instead it uses picker-view something that scrolls

 ? How can we implement ios Cupertino 

  When we are using widgets in Flutter,we limited ourselves to MaterialComponents(Things which exists & compatible on both ios and android)

  But something like Cupertino it's ios specific style widgets(element)

 If you want  certain things to display on ios app which are ios specific,for example Cupertino picker,Cupertino switch,Cupertino NavigationBar


 * To be able to use Widgets from  the Cupertino catalogue,we have to import Cupertino library
 
  ? We can simply create a new widget like every other widget CupertinoPicker

  ! CupertinoPicker requires 3 properties to be filled - itemExtent(height of item),onSelectedItemChange(this is what'll happen when user scrolls through,children-what's gonna be displayed inside the picker)

 selectedIndex- picker can pass it's value  by using this one 

 We can't add items to null list of type widget,so we need to initialize with empty list []

We can change the data-types to more-specific

Text-widget is basically sub-class of Stateless widget which is eventually sub-class of widget

We can always replace hard-coded values by passing functions & calling them
 
 ! Building Platform Specific UI

 ? How we can able to use both ios appearance & android apperance style widget specific to device os

  * First,we create two methods,refactor the code-changes

  * We create a new method,which checks the device that we are using and call corresponding picker methods

  ? To check which platform that we're running on,there's a library called 'dart:io'

  Instead of incorporating all files inside the library,we can only use what we need from it
  
  import 'dart:io' show Platform
  as-alias 
  show-to just expose files inside it
  hide

  isAndroid()
  isIOS()

  ! We an build the functionality of our app so that we can actually get real-time data for price of various crypto-currencies

  * We are going to  be using an api provided by CoinAPI.io

  They can provide whole bunch of data over lot of different coins
   We're mostly interested in exchange-rates

   base_url/crypto_identifier/currency

    we can just pass an apikey as query parameters just like we did before

*/

 