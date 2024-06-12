part of 'profile_imports.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FeatherIcons.arrowRightCircle,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400.h,
              decoration: const BoxDecoration(
                color: AppColor.primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(
                        width: 120.w,
                        height: 130.h,
                        image:
                            const AssetImage(AppImageStrings.onBoardingImage1),
                       
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Sangam',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .apply(color: Colors.white),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'rohankatwal07@gmail.com',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .apply(color: Colors.white),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Rohan Katwal is a Software engineer who is more passionate about about ',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .apply(color: Colors.white),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              '6',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .apply(color: Colors.white),
                            ),
                            Text(
                              'Post',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .apply(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '0',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .apply(color: Colors.white),
                            ),
                            Text(
                              'Following',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .apply(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '0',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .apply(color: Colors.white),
                            ),
                            Text(
                              'Followers',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .apply(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(30),
                  topStart: Radius.circular(30),
                )
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'My Posts',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 240.h,
                            crossAxisSpacing: 10.w),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: Image(
                                  width: double.infinity,
                                  height: 150.h,
                                  fit: BoxFit.cover,
                                  image: const AssetImage(
                                    AppImageStrings.backgroundImage,
                                  ),
                                ),
                              ),
                              Text(
                                'Netflix Will Charge Money For Password Sharing',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ],
                          );
                        })
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
