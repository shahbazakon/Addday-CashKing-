import 'dart:convert';
import 'dart:developer';

import 'package:appday_cash_king/Models/tasks_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as root_bundle;
import 'package:marquee/marquee.dart';

import '../../../../../utils/assets_path.dart';
import '../../../../../utils/colors.dart';

class AllOffersScreen extends StatefulWidget {
  const AllOffersScreen({
    Key key,
  }) : super(key: key);

  @override
  State<AllOffersScreen> createState() => _AllOffersScreenState();
}

class _AllOffersScreenState extends State<AllOffersScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  fetchDetails() async {
    final response = await root_bundle.rootBundle.loadString("Json/dummy_tasks.json");
    final responseData = json.decode(response) as List<dynamic>;
    log('responseData: $responseData', name: "${context.widget}");
    log('responseData.map: ${responseData.map((e) => TasksModel.fromJson(e))}',
        name: "${context.widget}");
    return responseData;
    // return responseData.map((e) => TasksModel.fromJson(e));
  }

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
                    child: FutureBuilder(
                  future: fetchDetails(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData == false) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    log("snapshot Data: ${snapshot.data}");
                    log("snapshot.data :${snapshot.data}", name: "${context.widget}");
                    return ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        log("snapshot.data index :${snapshot.data[index]["title"]}",
                            name: "${context.widget}");
                        return Row(
                          children: [
                            scrolablecard(
                                imageUrl: snapshot.data[index]["thumbnail"],
                                title: "${snapshot.data[index]["title"]}",
                                amount: "Get ${snapshot.data[index]["earned"]}",
                                userReview: "${snapshot.data[index]["total_lead"]} users"),
                          ],
                        );
                      },
                    );
                  },
                )),
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
                borderColor: AppColors.green,
                title: "Alto's Odysseyz",
                subtitle: "Get Rs. 230",
                trailing: "4,687 users"),
            listtiles(
                imageUrl: AppAssets.icon2,
                borderColor: AppColors.purple,
                title: "Alto's Odysseyz",
                subtitle: "Get Rs. 230",
                trailing: "4,687 users"),
            listtiles(
                imageUrl: AppAssets.icon3,
                borderColor: AppColors.blue,
                title: "Alto's Odysseyz",
                subtitle: "Get Rs. 230",
                trailing: "4,687 users"),
            listtiles(
                imageUrl: AppAssets.icon4,
                borderColor: AppColors.pink,
                title: "Alto's Odysseyz",
                subtitle: "Get Rs. 230",
                trailing: "4,687 users"),
            listtiles(
                imageUrl: AppAssets.icon1,
                borderColor: AppColors.green,
                title: "Alto's Odysseyz",
                subtitle: "Get Rs. 230",
                trailing: "4,687 users"),
            listtiles(
                imageUrl: AppAssets.icon2,
                borderColor: AppColors.purple,
                title: "Alto's Odysseyz",
                subtitle: "Get Rs. 230",
                trailing: "4,687 users"),
            listtiles(
                imageUrl: AppAssets.icon3,
                borderColor: AppColors.blue,
                title: "Alto's Odysseyz",
                subtitle: "Get Rs. 230",
                trailing: "4,687 users"),
            listtiles(
                imageUrl: AppAssets.icon4,
                borderColor: AppColors.pink,
                title: "Alto's Odysseyz",
                subtitle: "Get Rs. 230",
                trailing: "4,687 users"),
          ])),
    );
  }

  Widget listtiles(
      {String imageUrl,
      String title = "",
      String subtitle = "",
      String trailing = "",
      Color borderColor}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor ?? Colors.green.shade300, width: 2),
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
            style: const TextStyle(color: Colors.blue),
          ),
          trailing: Text(trailing, style: const TextStyle(color: Colors.amber)),
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
              child: Image.network(
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
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
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
