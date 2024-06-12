part of 'widget_imports.dart';

class HomeSectionHeading extends StatelessWidget {
  const HomeSectionHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Latest Post',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'See All',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}