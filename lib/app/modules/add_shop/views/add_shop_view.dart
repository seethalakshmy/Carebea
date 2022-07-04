import 'dart:ffi';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../../utils/assets.dart';
import '../../../utils/theme.dart';
import '../../../utils/widgets/custom_button.dart';
import '../../../utils/widgets/custom_textfield.dart';
import '../controllers/add_shop_controller.dart';

class AddShopView extends GetView<AddShopController> {
  const AddShopView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.asset(Assets.assetsLogo),
        ),
        leadingWidth: 30,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Image.asset(Assets.assetsScan, width: 40, height: 40,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child:Form(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Icon(Icons.arrow_back_ios_new,size: 20,),
                    SizedBox(width: 15,),
                    Text('Add new shop',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)
                  ],
                ),
                const SizedBox(height: 30,),
                Text('Shop name'),
                SizedBox(height: 5,),
                CustomTextField(
                  validaton: (value){
                    if (value == null || value.trim().isEmpty) {
                      return 'Shop name can\'t be empty';
                    }
                    return null;

                  },

                ),
                SizedBox(height: 5,),


                RichText(text: TextSpan(
                  text: 'Last name',style: TextStyle(color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(
                        text: '  (location should be the last name)',style: TextStyle(color:Colors.black54,fontStyle: FontStyle.italic)),
                  ],
                )),
                SizedBox(height: 5,),
                CustomTextField(
                  validaton: (value){
                    if (value == null || value.trim().isEmpty) {
                      return 'Last name can\'t be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 5,),

                const Text(
                  "Shop category",style: TextStyle(fontSize: 12),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 12),
                  child: DropdownSearch<String>(
                    validator: (String? value) {
                      if (value == null){
                        return "Shop category  can\'t be empty";

                      }
                        return null;
                    },
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
                      fillColor: Theme.of(context).extension<CustomTheme>()!.textFormFieldColor
                    )),
                    popupProps: const PopupProps.menu(
                      showSearchBox: true,
                      showSelectedItems: true,
                    ),

                    items: const ["Retail", "Wholesale"],
                    selectedItem: "",

                  ),
                ),
                const Text('Customer type',style: TextStyle(fontSize: 12)),
                const CustomerTypeRadioButton(),
                RichText(text: TextSpan(
                  text: 'GST',style: TextStyle(color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(
                        text: '\*',style: TextStyle(color:Colors.blue)),
                  ],
                )),
                SizedBox(height: 5,),
                CustomTextField(
                  inputType: TextInputType.number,
                  validaton: (value){
                    if(value == null || value.trim().isEmpty){
                      return 'GST  can\'t be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 25,),
                const Text('Location',style: TextStyle(fontSize: 12)),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: InkWell(
                    onTap: (){},
                    child: Row(
                      children:  [
                        Icon(Icons.add,color:  Theme.of(context).extension<CustomTheme>()!.primary,),
                        Text('Add shop location',style: TextStyle(fontSize: 12,color:Theme.of(context).extension<CustomTheme>()!.primary))
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                Text('Local area/city'),
                SizedBox(height: 5,),
                CustomTextField(
                  inputFormatters: [

                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]+|\b\s')),
                  ],
                  validaton: (value){
                    if(value == null || value.trim().isEmpty){
                      return 'Local area/city can\'t be empty';

                    }
                    return null;
                  },
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Pincode'),
                          SizedBox(height: 5,),
                          CustomTextField( maxlength: 6,
                           inputType: TextInputType.number,
                            validaton: (value){
                              if (value!.isEmpty) return 'pincode can\'t be empty';
                              else if(value.length<6){
                                return "Pincode must be 6 digits";

                              }
                              return null;

                            },
                          ),

                        ],

                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('District'),
                            SizedBox(height: 5,),
                            CustomTextField(
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]+|\b\s')),
                              ],
                              validaton: (value){
                                if(value == null || value.trim().isEmpty){
                                  return 'District can\'t be empty';

                                }
                                return null;

                              },
                            ),

                          ],

                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text('State'),
                SizedBox(height: 5,),
                CustomTextField(
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]+|\b\s')),
                  ],
                ),
                SizedBox(height: 10,),
                RichText(text: TextSpan(
                  text: 'Phone number',style: TextStyle(color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(
                        text: '\*',style: TextStyle(color:Colors.blue)),
                  ],
                )),              SizedBox(height: 5,),
                CustomTextField(
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  maxlength: 10,
                  inputType: TextInputType.phone,
                  validaton: (value) {
                    if (value!.isEmpty) return null;
                    else if(value == '0000000000') return 'Invalid number';
                    else if(value.length<10) return "Mobile number must be 10 digits";
                    return null;
                  },
                ),
                SizedBox(height: 15,),
                const Text(
                  "Branch",style: TextStyle(fontSize: 12),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 12),
                  child: DropdownSearch<String>(
                    validator: (String? value) {
                      if (value == null){
                        return "Branch  can\'t be empty";

                      }
                      return null;
                    },
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
                        fillColor: Theme.of(context).extension<CustomTheme>()!.textFormFieldColor
                    )),
                    items: const ["Kalamasseri", "Aluva", "Malappuram"],
                    selectedItem: "",

                  ),
                ),
                const Text(
                  "Zone",style: TextStyle(fontSize: 12),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 12),
                  child: DropdownSearch<String>(
                    validator: (String? value) {
                      if (value == null){
                        return "Zone  can\'t be empty";

                      }
                      return null;
                    },
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
                        fillColor: Theme.of(context).extension<CustomTheme>()!.textFormFieldColor
                    )),
                    items: const ["A", "B", "C"],
                    selectedItem: "",

                  ),
                ),
                const Text(
                  "Route",style: TextStyle(fontSize: 12),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 12),
                  child: DropdownSearch<String>(
                    validator: (String? value) {
                      if (value == null){
                        return "Route can\'t be empty";

                      }
                      return null;
                    },
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
                        fillColor: Theme.of(context).extension<CustomTheme>()!.textFormFieldColor
                    )),
                    items: const ["x", "y", "z"],
                    selectedItem: "",

                  ),
                ),
                RichText(text: TextSpan(
                  text: 'Opening balance',style: TextStyle(color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(
                        text: '  (mandatory only for existing shops)',style: TextStyle(color:Colors.black54,fontStyle: FontStyle.italic)),
                  ],
                )),
                SizedBox(height: 5,),
                CustomTextField(
                ),
                SizedBox(height: 25,),
                CustomButton(onTap: () { 
                  
                }, title: 'Add Shop',)
              ],
            ),
          ),
        ),
      )
    );
  }
}
class CustomerTypeRadioButton extends StatefulWidget {
  const CustomerTypeRadioButton({Key? key}) : super(key: key);

  @override
  State<CustomerTypeRadioButton> createState() => _CustomerTypeRadioButtonState();
}

class _CustomerTypeRadioButtonState extends State<CustomerTypeRadioButton> {
   int? radioValue;
  int? selectedRadio;

  @override
  void initState() {
    super.initState();
    radioValue = 1;


  }
  setSelectedRadio(int? val) {
    setState(() {
      selectedRadio = val!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio<int>(
            value: 1,
            groupValue: radioValue,
            onChanged: (val) {
              setSelectedRadio(val);
              radioValue = 1;
            },
            activeColor: Theme.of(context).extension<CustomTheme>()!.primary),
        const Text("B2B"),
        const SizedBox(width: 50,),
        Radio<int>(
          value: 2,
          groupValue: radioValue,
          onChanged: (val) {
            setSelectedRadio(val);
            radioValue = 2;
          },
          activeColor:Theme.of(context).extension<CustomTheme>()!.primary,
        ),
        const Text("B2C")

      ],
    );
  }
}

