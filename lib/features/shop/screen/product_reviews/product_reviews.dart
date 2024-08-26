import 'package:e_comrc/common/widgets/appBar/appbar.dart';
import 'package:e_comrc/features/shop/screen/product_reviews/widget/progress_indicator_and_rating.dart';
import 'package:e_comrc/features/shop/screen/product_reviews/widget/rating_progress_indicator.dart';
import 'package:e_comrc/features/shop/screen/product_reviews/widget/user_review_card.dart';
import 'package:e_comrc/utils/contsants/colors.dart';
import 'package:e_comrc/utils/contsants/sizes.dart';
import 'package:e_comrc/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/rating/rating_indicator.dart';

class ProductReviewsscreen extends StatelessWidget {
  const ProductReviewsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        title: Text('Reviews & Ratings',),showBackArrow: true,
      ),
      ///Body
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Rating and Reviews are Verified and are from people who use the same type of things"
                  " that you use"),
              SizedBox(height: TSizes.spaceBtwItems,),

              ///OverAll Product rating

              TOverAllproductRating(),
              TRatingBarIndicator(rating: 3.5,),
              Text("250",style: Theme.of(context).textTheme.bodySmall,),
              SizedBox(height: TSizes.spaceBtwSections,),

              ///User Reviews List
               UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),

        ),
      ),

    );
  }
}



