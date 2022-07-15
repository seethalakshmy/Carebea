
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
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
      appBar: appBar(context),
  
      body: SingleChildScrollView(
        child:Form(
          key: controller.addShopFormKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children:  [
                    InkWell(
                      onTap: (){
                        Get.back();
                      },
                        child: Icon(Icons.arrow_back_ios_new,size: 20,)),
                    SizedBox(width: 15,),
                    Text('Add new shop',
                      style: customTheme(context).medium.copyWith(fontSize: 16),
                    )
                  ],
                ),
                const SizedBox(height: 30,),
                Text('Shop name',
                  style: customTheme(context).regular.copyWith(fontSize: 12),
                ),
                SizedBox(height: 5,),
                CustomTextField(
                  textcontroller: controller.name,
                  validaton: (value){
                    if (value == null || value.trim().isEmpty) {
                      return 'Shop name can\'t be empty';
                    }
                    return null;

                  },
                  onChanged: (value)=>controller.name.text = value!.trim() ,


                ),
                SizedBox(height: 5,),


                RichText(text: TextSpan(
                  text: 'Last name',
                  style: customTheme(context).regular.copyWith(fontSize: 12),

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

                 Text(
                  "Shop category",
                  style: customTheme(context).regular.copyWith(fontSize: 12),

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
                Text('Customer type',
                  style: customTheme(context).regular.copyWith(fontSize: 12),
                ),
                const CustomerTypeRadioButton(),
                RichText(text: TextSpan(
                  text: 'GST',
                  style: customTheme(context).regular.copyWith(fontSize: 12),
                  children: const <TextSpan>[
                    TextSpan(
                        text: '\*',style: TextStyle(color:Colors.blue)),
                  ],
                )),
                SizedBox(height: 5,),
                CustomTextField(
                  textcontroller: controller.gst,
                  inputType: TextInputType.number,
                  validaton: (value){
                    if(value == null || value.trim().isEmpty){
                      return 'GST  can\'t be empty';
                    }
                    return null;
                  },
                  onChanged: (value)=>controller.gst.text =value!.trim(),
                ),
                SizedBox(height: 25,),
                 Text('Location',
                  style: customTheme(context).regular.copyWith(fontSize: 12),
                ),
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
                Text('Local area/city',
                  style: customTheme(context).regular.copyWith(fontSize: 12),
                ),
                SizedBox(height: 5,),
                CustomTextField(
                  textcontroller: controller.localArea,
                  inputFormatters: [

                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]+|\b\s')),
                  ],
                  validaton: (value){
                    if(value == null || value.trim().isEmpty){
                      return 'Local area/city can\'t be empty';

                    }
                    return null;
                  },
                  onChanged: (value)=>controller.localArea.text=value!.trim(),
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Pincode',
                            style: customTheme(context).regular.copyWith(fontSize: 12),
                          ),
                          SizedBox(height: 5,),
                          CustomTextField(
                            textcontroller: controller.zip,
                            maxlength: 6,
                           inputType: TextInputType.number,
                            validaton: (value){
                              if (value!.isEmpty) return 'pincode can\'t be empty';
                              else if(value.length<6){
                                return "Pincode must be 6 digits";

                              }
                              return null;

                            },
                            onChanged: (value)=>controller.zip.text= value!,
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
                            Text('District',
                              style: customTheme(context).regular.copyWith(fontSize: 12),
                            ),
                            SizedBox(height: 5,),
                            CustomTextField(
                              textcontroller: controller.district,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]+|\b\s')),
                              ],
                              validaton: (value){
                                if(value == null || value.trim().isEmpty){
                                  return 'District can\'t be empty';

                                }
                                return null;

                              },
                              onChanged: (value)=>controller.district.text = value!.trim(),
                            ),

                          ],

                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text('State',
                  style: customTheme(context).regular.copyWith(fontSize: 12),
                ),
                SizedBox(height: 5,),
                CustomTextField(
                  validaton: (value){
                    if(value == null || value.trim().isEmpty){
                      return 'State can\'t be empty';

                    }
                    return null;

                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]+|\b\s')),
                  ],
                ),
                SizedBox(height: 10,),
                RichText(text: TextSpan(
                  text: 'Phone number',
                  style: customTheme(context).regular.copyWith(fontSize: 12),
                  children: const <TextSpan>[
                    TextSpan(
                        text: '\*',style: TextStyle(color:Colors.blue)),
                  ],
                )),              SizedBox(height: 5,),
                CustomTextField(
                  textcontroller: controller.phone,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  maxlength: 10,
                  inputType: TextInputType.phone,
                  validaton: (value) {
                    if (value!.isEmpty) return 'mobile number is required';
                    else if(value == '0000000000') return 'Invalid number';
                    else if(value.length<10) return "Mobile number must be 10 digits";
                    return null;
                  },
                  onChanged: (value)=>controller.phone.text = value!,
                ),
                SizedBox(height: 15,),
                 Text(
                  "Branch",
                  style: customTheme(context).regular.copyWith(fontSize: 12),

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
                 Text(
                  "Zone",
                  style: customTheme(context).regular.copyWith(fontSize: 12),
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
                 Text(
                  "Route",
                  style: customTheme(context).regular.copyWith(fontSize: 12),

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
                  text: 'Opening balance',
                  style: customTheme(context).regular.copyWith(fontSize: 12),
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
                  controller.addShop(
                      name: controller.name.text,
                      district:controller.district.text,

                      localArea: controller.localArea.text,
                      phone: controller.phone.text,
                      zip: controller.zip.text,

                  );
                  // showDialog<bool>(
                  //     context: context,
                  //     builder: (ctx) {
                  //       return CustomAlertbox(
                  //         topIcon: Image.asset(
                  //           Assets.successIcon,
                  //           width: 80,
                  //           height: 80,
                  //         ),
                  //         title: "Shop added Successful!",
                  //         content: "",
                  //         actions: [
                  //           CustomButton(
                  //               title: "Go to Home page",
                  //               onTap: () {
                  //                 Get.back(result: true);
                  //                 Get.offAllNamed(Routes.DASHBOARD);
                  //               })
                  //         ],
                  //       );
                  //     });
                  
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

