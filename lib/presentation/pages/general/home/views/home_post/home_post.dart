import 'package:auto_route/auto_route.dart';
import 'package:blog_application/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart'; 
import '../../../../../../core/constants/app_image_strings.dart';

@RoutePage()
class HomeDetailsPost extends StatelessWidget {
  const HomeDetailsPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: Text(
          'Netflix Will Charge Money For Password Sharing',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: Theme.of(context).textTheme.titleLarge!.apply(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              width: double.infinity,
              height: 300.h,
              fit: BoxFit.fill,
              image: const AssetImage(
                AppImageStrings.backgroundImage,
              ),
            ),
            12.h.heightBox,
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                    Text(
                'Netflix Will Charge Money For Password Sharing',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              12.h.heightBox,
              Row(
                children: [
                  const Icon(FeatherIcons.eye),
                  4.h.widthBox,
                  Text(
                    '129 Views',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      FeatherIcons.thumbsUp,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    '0',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  14.h.widthBox,
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      FeatherIcons.thumbsDown,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    '0',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              12.h.heightBox,
              Text(
                'Netflix has officially implemented new rules to curb password sharing in the United States, a move aimed at converting the estimated 100 million people who share accounts into paying subscribers. Under these new rules, accounts are intended to be shared only within the same household, defined as people living in the same physical location.Netflix has officially implemented new rules to curb password sharing in the United States, a move aimed at converting the estimated 100 million people who share accounts into paying subscribers. Under these new ruleNetflix has officially implemented new rules to curb password sharing in the United States, a move aimed at converting the estimated 100 million people who share accounts into paying subscribers. Under these new ruleNetflix has officially implemented new rules to curb password sharing in the United States, a move aimed at converting the estimated 100 million people who share accounts into paying subscribers. Under these new rule',
                style: Theme.of(context).textTheme.titleSmall,
              ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
