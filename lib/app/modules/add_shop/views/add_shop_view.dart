import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../../utils/assets.dart';
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
        child:Padding(
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
              Form(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Shop name",style: TextStyle(fontSize: 12),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
                        child:  Container(
                          height: MediaQuery.of(context).size.height * .08,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]+|\b\s')),
                            ],
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return 'Shop name can\'t be empty';
                              }
                              return null;
                            },
                            onChanged: (value){},
                            decoration: const InputDecoration(
                              // disabledBorder:InputBorder.none,
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Text(
                            "Last name",style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(width: 10,),
                          Text('(location should be the last name)',style: TextStyle(color: Colors.black54,fontStyle: FontStyle.italic),)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
                        child:  Container(
                          height: MediaQuery.of(context).size.height * .08,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]+|\b\s')),
                            ],
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return 'Last name can\'t be empty';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              // disabledBorder:InputBorder.none,
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "Shop category",style: TextStyle(fontSize: 12),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8,bottom: 12),
                        child: DropdownSearch<String>(
                          popupProps: const PopupProps.menu(
                            showSearchBox: true,
                            showSelectedItems: true,
                          ),
                          dropdownDecoratorProps: const DropDownDecoratorProps(

                          ),
                          items: const ["Retail", "Wholesale"],
                          selectedItem: "",

                        ),
                      ),
                      const Text('Customer type',style: TextStyle(fontSize: 12)),
                      const CustomerTypeRadioButton(),
                      Row(
                        children: const [
                          Text(
                            "GST",style: TextStyle(fontSize: 12),
                          ),
                          Text("\*",style: TextStyle(color: Colors.blue),)

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
                        child:  Container(
                          height: MediaQuery.of(context).size.height * .08,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            keyboardType:TextInputType.number,
                            validator: (value) {
                              return null;


                            },
                            decoration: const InputDecoration(
                              // disabledBorder:InputBorder.none,
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                      const Text('Location',style: TextStyle(fontSize: 12)),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: const [
                            Icon(Icons.add,color: Colors.purple,),
                            Text('Add shop location',style: TextStyle(fontSize: 12,color: Colors.purple))
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      const Text(
                        "Local area/city",style: TextStyle(fontSize: 12),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
                        child:  Container(
                          height: MediaQuery.of(context).size.height * .08,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]+|\b\s')),
                            ],
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return 'Area/City can\'t be empty';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              // disabledBorder:InputBorder.none,
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Pincode',style: TextStyle(fontSize: 12)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height * .08,
                                    decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: TextFormField(
                                      maxLength: 6,
                                      keyboardType:TextInputType.number,
                                      validator: (value) {
                                        if (value!.isEmpty) return 'pincode can\'t be empty';
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                        // disabledBorder:InputBorder.none,
                                        border: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                ),

                              ],

                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('District',style: TextStyle(fontSize: 12)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height * .08,
                                    decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: TextFormField(
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]+|\b\s')),
                                      ],
                                      validator: (value) {
                                        if (value == null || value.trim().isEmpty) {
                                          return 'District can\'t be empty';
                                        }
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                        // disabledBorder:InputBorder.none,
                                        border: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                ),

                              ],

                            ),
                          ),
                        ],
                      ),
                      const Text('State',style: TextStyle(fontSize: 12)),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Container(
                          height: MediaQuery.of(context).size.height * .08,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]+|\b\s')),
                            ],
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return 'State can\'t be empty';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              // disabledBorder:InputBorder.none,
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Text('Phone number',style: TextStyle(fontSize: 12)),
                          Text('\*',style: TextStyle(color: Colors.blue),)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Container(
                          height: MediaQuery.of(context).size.height * .08,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            maxLength: 10,
                            validator: (value) {
                              if (value!.isEmpty) return "Phone number can\'t be empty";
                              if(value == '0000000000') return 'Invalid number';
                              return null;
                            },
                            decoration: const InputDecoration(
                              // disabledBorder:InputBorder.none,
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "Branch",style: TextStyle(fontSize: 12),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8,bottom: 12),
                        child: DropdownSearch<String>(
                          popupProps: const PopupProps.menu(
                            showSearchBox: true,
                            showSelectedItems: true,
                          ),
                          dropdownDecoratorProps: const DropDownDecoratorProps(

                          ),
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
                          popupProps: const PopupProps.menu(
                            showSearchBox: true,
                            showSelectedItems: true,
                          ),
                          dropdownDecoratorProps: const DropDownDecoratorProps(

                          ),
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
                          popupProps: const PopupProps.menu(
                            showSearchBox: true,
                            showSelectedItems: true,
                          ),
                          dropdownDecoratorProps: const DropDownDecoratorProps(

                          ),
                          items: const ["x", "y", "z"],
                          selectedItem: "",

                        ),
                      ),
                      Row(
                        children: const [
                          Text('Opening balance',style: TextStyle(fontSize: 12)),
                          Text(' (mandatory only for existing shops)',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.black54),)
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .08,
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextFormField(
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]|\b\s')),
                          ],
                          validator: (value) {
                            return null;


                          },
                          decoration: const InputDecoration(
                            // disabledBorder:InputBorder.none,
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            filled: true,
                          ),
                        ),
                      ),
                    ],

                  )
              )
            ],
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
            activeColor: Colors.purple),
        const Text("B2B"),
        const SizedBox(width: 50,),
        Radio<int>(
          value: 2,
          groupValue: radioValue,
          onChanged: (val) {
            setSelectedRadio(val);
            radioValue = 2;
          },
          activeColor:Colors.purple,
        ),
        const Text("B2C")

      ],
    );
  }
}

