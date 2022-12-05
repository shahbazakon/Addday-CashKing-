import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import '../../../../../utils/assets_path.dart';
import '../../../../../utils/colors.dart';

class AllOffersScreen extends StatelessWidget {
  const AllOffersScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: const Color.fromRGBO(241, 252, 255, 1),
          child: Column(children: [
            SizedBox(
              height: 50,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Marquee(
                    text:
                        "Rakesh earned 120 from BookMyShow Offers . Sameer earned 120 from BookMyShow Offers .",
                    style: const TextStyle(
                      backgroundColor: Color.fromRGBO(229, 229, 229, 1),
                    ),
                    scrollAxis: Axis.horizontal,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Icon(
                    Icons.local_fire_department_outlined,
                    color: Colors.orange,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Trending Offers",
                        style: TextStyle(color: Color.fromRGBO(124, 124, 124, 1)),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 20),
              child: SizedBox(
                height: 200,
                child: Expanded(
                  child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          scrolablecard(
                              imageUrl: AppAssets.image1,
                              title: "Alto's Odysseyz",
                              amount: "Get Rs. 230",
                              userReview: "4,687 users"),
                          scrolablecard(
                              imageUrl: AppAssets.image3,
                              title: "2 Player Games",
                              amount: "Get Rs. 100",
                              userReview: "4,687 users"),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.app_registration_sharp,
                  color: AppColors.blue,
                ),
              ),
              Text(
                "More Offers",
                style: TextStyle(fontSize: 16, color: AppColors.greylite),
              )
            ]),
            listtiles(
                imageUrl: AppAssets.icon1,
                title: "Alto's Odysseyz",
                subtitle: "Get Rs. 230",
                trailing: "4,687 users"),
            listtiles(
                imageUrl: AppAssets.icon2,
                title: "Alto's Odysseyz",
                subtitle: "Get Rs. 230",
                trailing: "4,687 users"),
            listtiles(
                imageUrl: AppAssets.icon3,
                title: "Alto's Odysseyz",
                subtitle: "Get Rs. 230",
                trailing: "4,687 users"),
            listtiles(
                imageUrl: AppAssets.icon4,
                title: "Alto's Odysseyz",
                subtitle: "Get Rs. 230",
                trailing: "4,687 users"),
          ])),
    );
  }

  Widget listtiles(
      {String imageUrl, String title = "", String subtitle = "", String trailing = ""}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.green.shade300, width: 2),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ListTile(
          onTap: () {},
          leading: SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              )),
          title: Text(
            title,
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(color: Colors.blue),
          ),
          trailing: Text(trailing, style: TextStyle(color: Colors.amber)),
        ),
      ),
    );
  }

  Widget scrolablecard(
      {String imageUrl, String title = "", String amount = "", String userReview = ""}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          SizedBox(
            width: 190,
            height: 190,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                ///? !
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
              width: 190,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Text(
                      amount,
                      style: const TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.flash_on,
                          size: 14,
                          color: Colors.amber,
                        ),
                        Text(userReview, style: const TextStyle(fontSize: 10, color: Colors.white))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
