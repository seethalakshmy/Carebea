import 'package:carebea/app/utils/assets.dart';
import 'package:flutter/material.dart';

class ShopListTile extends StatefulWidget {
  const ShopListTile({Key? key}) : super(key: key);

  @override
  State<ShopListTile> createState() => _ShopListTileState();
}

class _ShopListTileState extends State<ShopListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .15,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xfffff1f1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Trinity Shop',
              style: TextStyle(fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                //TODO: uncomment
                // Image.asset(
                //   Assets.assetsLocationFilled,
                //   scale: 3,
                // ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Akshay Nagar 1st Block Cross,Rammurthy',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: const [
                    Text(
                      'View Details',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 20,
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
