import 'package:carebea/app/utils/assets.dart';
import 'package:flutter/material.dart';


class ShopDetails extends StatefulWidget {
  const ShopDetails({Key? key}) : super(key: key);

  @override
  State<ShopDetails> createState() => _ShopDetailsState();
}

class _ShopDetailsState extends State<ShopDetails>
    with SingleTickerProviderStateMixin {
  TabController? tabController1;
  List<String> products =['Eccence hande wash','Eccence face wash'];

  @override
  void initState() {
    tabController1 = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    Assets.assetsLogo,
                    scale: 3,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Icon(Icons.arrow_back_ios),
                  Text(
                    'Shops',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Trinity Shop',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text('GST no: 66998964579898'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Image.asset('assets/edit.png', scale: 3),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  //TODO: uncomment
                  // Image.asset(
                  //   Assets.assetsLocationFilled,
                  //   scale: 3,
                  // ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .9,
                    child: const Text(
                      'Akshay Nagar 1st Block Cross , Rammurthy Nagar, Bangalore -560016',
                      maxLines: 2,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          //TODO : uncomment
                          // Image.asset(
                          //   Assets.assetsPhone,
                          //   scale: 3,
                          // ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '+91 6398541236',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Category: Supermarket',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        'Branch : CareBae branch',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Credit Balance : ₹1,00,214',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              //TODO: uncommment
              // Stack(
              //   children: [
              //     Image.asset(Assets.assetsMap),
              //     Positioned(
              //         top: 20,
              //         left: 50,
              //         child: Image.asset(
              //           Assets.assetsLocationFilled,
              //           scale: 1.5,
              //         )),
              //     Positioned(
              //         right: 20,
              //         top: 10,
              //         child: Image.asset(
              //           Assets.assetsDirections,
              //           scale: 3,
              //         )),
              //   ],
              // ),
              Divider(
                thickness: 3,
              ),
              DefaultTabController(
                length: 2,
                child: TabBar(
                  // indicator: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(10),
                  //
                  // ),
                  // indicatorColor: Colors.blueAccent[900],
                  indicatorWeight: 8,
                  controller: tabController1,
                  tabs: const [
                    Tab(
                      child: Text(
                        'Upcoming Orders(2)',
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 15),
                      ),
                    ),
                    Tab(
                      child: Text('Pending Orders(2)',
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 15)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(controller: tabController1, children: [
                 ListView.builder(
                   physics: NeverScrollableScrollPhysics(),
                   itemCount: 5
                     ,itemBuilder: (context,index){
                   return Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(10),
                       child: Card(
                         elevation: 3,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(15.0),
                         ),
                         child: Container(
                           

                           height: MediaQuery.of(context).size.height * .3,
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: const [
                                         Text('Order ID: #656546'),
                                         SizedBox(height: 10,),
                                         Text('Delivery Date : 20/06/2022'),

                                       ],
                                     ),
                                     Container(
                                       height: 40,
                                       width: 120,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(20),
                                         color: Colors.blue[100],

                                       ),
                                       child: const Center(child: Text('Delivered',style: TextStyle(fontWeight: FontWeight.w600),)),

                                     ),
                                   ],
                                 ),
                                 const Divider(thickness: 2,),
                                 
                                 const Text('Product',style: TextStyle(fontWeight:FontWeight.w700),),


                               ],

                             ),
                           ),
                         ),
                       ),
                     ),
                   );
                 }),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 5
                      ,itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Container(


                            height: MediaQuery.of(context).size.height * .3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('Order ID: #656546'),
                                          SizedBox(height: 10,),
                                          Text('Delivery Date : 20/06/2022'),

                                        ],
                                      ),
                                      Container(
                                        height: 40,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.blue[100],

                                        ),
                                        child: Center(child: Text('Delivered',style: TextStyle(fontWeight: FontWeight.w600),)),

                                      ),
                                    ],
                                  ),
                                  const Divider(thickness: 2,),

                                  const Text('Product',style: TextStyle(fontWeight:FontWeight.w700),),


                                ],

                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ]),
              )
            ],
          ),
        ),
      )),
    );
  }
}
