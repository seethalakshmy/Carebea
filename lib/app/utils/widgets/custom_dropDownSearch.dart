
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

class CustomDropDownSearch extends DropdownSearch{
   CustomDropDownSearch( {Key? key,
     this.onsaved,
     this.fillColor,
     required this.items,
     this.selectedItem,
     // this.showSearchBox = true,
     // this.showSelectedItem = true,
     this.validation

   }) : super(key: key,
     selectedItem: selectedItem,
     items: [],
     popupProps: const PopupProps.menu(
       showSearchBox: true,
       showSelectedItems: true,
     ),
     dropdownDecoratorProps: DropDownDecoratorProps(dropdownSearchDecoration: InputDecoration(
         border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(8),
           borderSide: BorderSide.none,
         ),
         enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(8),
           borderSide: BorderSide.none,
         ),
         focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(8),
           borderSide: BorderSide.none,
         ),                      filled: true,
         fillColor:fillColor
     )),



   );

   final String? Function(String?)? validation;
   final Color? fillColor;
   final List<String> items;
   final String? selectedItem;
   // final bool showSearchBox ;
   // final bool showSelectedItem ;
   final Function(String?)? onsaved;





}