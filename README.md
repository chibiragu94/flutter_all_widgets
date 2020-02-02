# all_widgets_flutter

This project gives the easy understanding of how to build the UI Widgets

## Getting Started

This project is a starting point for a Flutter application.

Gives the simple demonstration of some basic widgets. 
There are of 2 types of widgets 

 - Single Child Widgets :
       * Centre (Can make the widget to it centre)
       * Align (Can align using the graphical representation)
       * Container (Can Maintain the position)
       * Padding (Can set Padding for respective sides)
       * SizedBOx (Can give the respective width and height for its child widget)
       
 - Multi Child Widget :
       * Column (All the views are arranded vertical)
       * Row (All the views are arranded horizontal)
       * Stack (Keep the view one over the another like frame layout in android)
       * GridView (Keps the items in grid by specifing the count and either start || reverse)
       * ListView (Bind all the items in the list. Here we can also make customised listview or by default listview item widgets)
       * ScrollView (There is no scrollview in flutter make use of listview..)
       
  -UI Design Tips:
      * For making the space between the 2 widgets use sizedBox
        eg:
        SizedBox(height: 10)
      * Here all the view are basically a widgets
      * Stateless Widget - once initialised can be chanbged
      * Statefull Widget - Can be changed many times by calling the 'setState()' method
      * Pubspec.yaml file - Place Were all dependencies to be added - fonts, assets, images
      * Expanded widget - Will fill the available spaces 
      * Each screen is called as Route
      * Were all the navigations can be handled through Navigator
      * Push and pop is used to navigate and popback to previous Route
      * Decoration : is used to set background colors and shape
      * Flutter is space Specific
      * Easy to set images from assets, url, etc..
      * Class will have of the AppBar (title,icon) and body
      * Scafold class gives the support for the Material design
     
       
