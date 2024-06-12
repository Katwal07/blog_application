part of 'general_imports.dart';

@RoutePage()
class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  List<TabItem> items = [
     const TabItem(
      icon: FeatherIcons.home,
    ),
    const TabItem(
      icon: FeatherIcons.grid,
    ),
    const TabItem(
      icon: FeatherIcons.plus,
    ),
    const TabItem(
      icon: FeatherIcons.tag,
    ),
    const TabItem(
      icon: FeatherIcons.user,
    ),
  ];
  int visit = 0;
  double height = 80.h;

  List<Widget> pages = [
     Home(),
     const Categories(),
     const AddPost(),
     const Tags(),
     const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(visit),
      bottomNavigationBar: SizedBox(
        height: height,
        child: BottomBarCreative(
          items: items,
          backgroundColor: const Color.fromARGB(255, 232, 229, 229),
          color: AppColor.primaryColor.withOpacity(.5),
          colorSelected: AppColor.primaryColor,
          indexSelected: visit,
          onTap: (int index) => setState(() {
            visit = index;
          }),
        ),
      ),
    );
  }
}
