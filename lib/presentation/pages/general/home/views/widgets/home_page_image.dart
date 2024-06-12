part of 'widget_imports.dart';

class HomePageImages extends StatelessWidget {
  const HomePageImages({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: Image(
        width: double.infinity,
        height: 200.h,
        fit: BoxFit.fill,
        image: AssetImage(image),
      ),
    );
  }
}