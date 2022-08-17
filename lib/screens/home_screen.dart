import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:home_screen_task/presentation/color_manager.dart';
import 'package:home_screen_task/presentation/value_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List tabBarTitles = [
      'Design of children\'s rooms',
      'Living rooms design',
      'sitting room design',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Interior design',
          style: TextStyle(
            fontSize: 24.0,
            color: ColorManager.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 90,
            color: ColorManager.white,
            child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: ColorManager.whiteDark,
                        borderRadius: BorderRadius.circular(AppSize.s12)),
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(vertical: 24),
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    height: AppSize.s35,
                    child: Text(
                      '${tabBarTitles[index]}',
                      style: TextStyle(
                          color: ColorManager.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                itemCount: tabBarTitles.length),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Different services',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: ColorManager.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextButton(
                            onPressed: (){},
                            child: Text(
                              'See all',
                              style: TextStyle(
                                  color: ColorManager.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.38 ,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      itemBuilder: (context , index ) => listItem(),
                      separatorBuilder: (context , index ) => const SizedBox(
                          height: 10,
                        ),
                        itemCount: 3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Offers & packages',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: ColorManager.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextButton(
                          onPressed: (){},
                          child: Text(
                            'See all',
                            style: TextStyle(
                                color: ColorManager.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.22,
                            width: MediaQuery.of(context).size.width,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: const Image(
                              image: AssetImage('assets/images/children_room.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Design of children\'s room for 2 children',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: ColorManager.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      'Interior design',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: ColorManager.dartGrey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '256 EG',
                                      style: TextStyle(
                                        fontSize: 24.0,
                                        color: ColorManager.blue,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    RatingBar.builder(
                                      initialRating: 3,
                                      itemSize: 16,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 4,
                                      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 5,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(AppSize.s12),
                              color: ColorManager.blue,
                            ),
                            child: MaterialButton(
                              onPressed: (){},
                              child: Text(
                                'Book',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: ColorManager.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listItem (){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 100,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: 100,
              width: 120,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: const Image(
                image: AssetImage('assets/images/children_room.png'),
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Design of children\'s',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: ColorManager.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'room for 2 children',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: ColorManager.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Interior design',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: ColorManager.dartGrey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '256 EG',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: ColorManager.blue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                RatingBar.builder(
                  initialRating: 3,
                  itemSize: 16,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 4,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 5,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Container(
                  height: 35,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSize.s12),
                    color: ColorManager.blue,
                  ),
                  child: MaterialButton(
                    onPressed: (){},
                    child: Text(
                      'Book',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: ColorManager.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
