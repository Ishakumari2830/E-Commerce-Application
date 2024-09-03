import 'package:e_comrc/common/widgets/appBar/appbar.dart';
import 'package:e_comrc/features/shop/screen/product_reviews/widget/rating_progress_indicator.dart';
import 'package:e_comrc/features/shop/screen/product_reviews/widget/user_review_card.dart';
import 'package:e_comrc/utils/contsants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/rating/rating_indicator.dart';

class ProductReviewsscreen extends StatelessWidget {
  const ProductReviewsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(
        title: Text('Reviews & Ratings',),showBackArrow: true,
      ),
      ///Body
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Rating and Reviews are Verified and are from people who use the same type of things"
                  " that you use"),
              const SizedBox(height: TSizes.spaceBtwItems,),

              ///OverAll Product rating

              const TOverAllproductRating(),
              const TRatingBarIndicator(rating: 3.5,),
              Text("250",style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              ///User Reviews List
               const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),

        ),
      ),

    );
  }
}



