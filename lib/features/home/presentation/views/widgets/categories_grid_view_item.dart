
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class CategoriesGridViewItem extends StatelessWidget {
  const CategoriesGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black54.withOpacity(0.1),
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            Assets.imagesCategoriesgrideTest1,
                            fit: BoxFit
                                .fill,  //height: MediaQuery.of(context).size.height*.09,
                          )),
                      const SizedBox(
                        width: 4,
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            Assets.imagesCategoriesgrideTest2,
                            fit: BoxFit
                                .fill, // height: MediaQuery.of(context).size.height*.09
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            Assets.imagesCategoriesgrideTest3,
                            fit: BoxFit
                                .fill,  //height: MediaQuery.of(context).size.height*.09
                          )),
                      const SizedBox(
                        width: 4,
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            Assets.imagesCategoriesgrideTest4,
                            fit: BoxFit.fill, //height: MediaQuery.of(context).size.height*.09
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 6.0, horizontal: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Clothing",
                    style: Styles.styleBoldLeagueSpartan17,
                  ),
                  Container(
                    height: 20,
                    width: 38,
                    decoration: BoxDecoration(
                        color: const Color(0xffF3F3F3),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Text(
                        "109",
                        style: Styles.styleBoldLeagueSpartan12,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
