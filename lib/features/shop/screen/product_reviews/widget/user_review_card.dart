import 'package:e_comrc/common/widgets/custom_shapes/Container/rounded_container.dart';
import 'package:e_comrc/common/widgets/products/rating/rating_indicator.dart';
import 'package:e_comrc/utils/contsants/colors.dart';
import 'package:e_comrc/utils/contsants/sizes.dart';
import 'package:e_comrc/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utils/contsants/image_strings.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(TImages.userProfileImage1),
                ),
                SizedBox(width: TSizes.spaceBtwItems,),
                Text('John Doe',style: Theme.of(context).textTheme.titleLarge,)
              ],
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems,),
        ///Review
        Row(
          children: [
            TRatingBarIndicator(rating: 4),
            SizedBox(width: TSizes.spaceBtwItems,),
            Text('01 Nov 2023',style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems,),
        ReadMoreText(
          'The User Interface of the app is quite intuitive , I was able to navigate and continue purchasing '
              'seamlessly,Great Job!',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show More',
          moreStyle: TextStyle(fontSize: 14,fontWeight:FontWeight.bold,color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14,fontWeight:FontWeight.bold,color: TColors.primary),

        ),
        SizedBox(height: TSizes.spaceBtwItems,),

        ///Company review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(padding: EdgeInsets.all(TSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Store",style: Theme.of(context).textTheme.titleMedium,),
                  Text('07 Nov,2023',style: Theme.of(context).textTheme.bodyMedium,)
                ],
              ),
              SizedBox(height: TSizes.spaceBtwItems,),
              ReadMoreText(
                  'The User Interface of the app is quite intuitive , I was able to navigate and continue purchasing '
                      'seamlessly,Great Job!',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show More',
                  moreStyle: TextStyle(fontSize: 14,fontWeight:FontWeight.bold,color: TColors.primary),
                  lessStyle: TextStyle(fontSize: 14,fontWeight:FontWeight.bold,color: TColors.primary),

              ),
            ],
          ),),
        ),
        SizedBox(
          height: TSizes.spaceBtwSections,
        )
      ],
    );
  }
}
