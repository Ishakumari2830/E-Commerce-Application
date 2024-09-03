import 'package:e_comrc/common/widgets/appBar/appbar.dart';
import 'package:e_comrc/common/widgets/images/t_circular_images.dart';
import 'package:e_comrc/common/widgets/texts/section_heading.dart';
import 'package:e_comrc/utils/contsants/image_strings.dart';
import 'package:e_comrc/utils/contsants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'Widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,

        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///profile Picture
              SizedBox(
              width: double.infinity, /// to keep profile at centre
              child: Column(
                children: [

                  const TCircularImage(image: TImages.user,width: 80,height: 80,),
                  TextButton(onPressed: (){}, child: const Text('Change profile picture')),
                ],
              ),
            ),
              const SizedBox(height: TSizes.spaceBtwItems/2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),
              const TSectionheading(title: 'Profile Information',showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(
                title: 'Name',
                value: 'Isha Kumari',
                onPressed: (){},
              ),

              TProfileMenu(
                title: 'UserName',
                value: 'Isha_Gupta',
                onPressed: (){},
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              ///Heading Personal info
              const TSectionheading(title: "Personal Information",showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              TProfileMenu(
                title: 'User ID',
                value: '1234IK',
                onPressed: (){},
                icon: Iconsax.copy,
              ),
              TProfileMenu(
                title: 'E-mail',
                value: 'ishaguptarg2019@gmail.com',
                onPressed: (){},
              ),
              TProfileMenu(
                title: 'Phone Number',
                value: '+91 9572323234',
                onPressed: (){},
              ),
              TProfileMenu(
                title: 'gender',
                value: 'female',
                onPressed: (){},
              ),
              TProfileMenu(
                title: 'Date of Birth',
                value: ' 28 Nov 2001',
                onPressed: (){},
              ),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Close Account',style: TextStyle(color: Colors.red),),
                ),
              )



          ],
          ),
          ///Details

        ),
      ),
    );
  }
}

