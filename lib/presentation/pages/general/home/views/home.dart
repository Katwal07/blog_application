part of 'home_imports.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final HomeViewModel homeViewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 4.w,right: 4.w,top: 8.h),
            child: Column(
              children: [
                /// Home Page View
                HomePageView(homeViewModel: homeViewModel),
                SizedBox(
                  height: 12.h,
                ),

                ///Home Page Indicator
                HomePageIndicator(homeViewModel: homeViewModel),
                SizedBox(
                  height: 24.h,
                ),
                /// Home Section Heading
                const HomeSectionHeading(),
                SizedBox(
                  height: 24.h,
                ),

                /// Home Post Details 
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return const HomePostDetails();
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}