part of 'widget_imports.dart';



class HomePageView extends StatelessWidget {
  const HomePageView({
    super.key,
    required this.homeViewModel,
  });

  final HomeViewModel homeViewModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200.h,
      child: PageView(
        controller: homeViewModel.pageController,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 16.w, left: 16.w),
            child: const HomePageImages(
              image: AppImageStrings.backgroundImage,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.w, left: 16.w),
            child: const HomePageImages(
              image: AppImageStrings.backgroundImage,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.w, left: 16.w),
            child: const HomePageImages(
              image: AppImageStrings.backgroundImage,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.w, left: 16.w),
            child: const HomePageImages(
              image: AppImageStrings.backgroundImage,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.w, left: 16.w),
            child: const HomePageImages(
              image: AppImageStrings.backgroundImage,
            ),
          ),
        ],
      ),
    );
  }
}