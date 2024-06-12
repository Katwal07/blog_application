import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../../core/constants/app_colors.dart';

@RoutePage()
class UpdateTag extends StatelessWidget {
  const UpdateTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(left: 26.w),
        child: SizedBox(
          width: double.infinity,
          child: FloatingActionButton(
            backgroundColor: AppColor.primaryColor,
            onPressed: () {},
            child:  Text('Update',style: Theme.of(context).textTheme.titleLarge!.apply(color: Colors.white),),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: Text(
          'Update Tag',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Title
            Text('Title',style: Theme.of(context).textTheme.bodyLarge,),
            4.h.heightBox,
            TextField(
              decoration: InputDecoration(hintText: 'entertainments',hintStyle: Theme.of(context).textTheme.bodyMedium,),
            ),
            24.h.heightBox,

            /// Slug
            Text('Slug',style: Theme.of(context).textTheme.bodyLarge,),
            4.h.heightBox,
             TextField(
              decoration: InputDecoration(hintText: 'entertainments',hintStyle: Theme.of(context).textTheme.bodyMedium,),
            ),
          ],
        ),
      ),
    );
  }
}
