part of 'categories_imports.dart';

@RoutePage()
class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.primaryColor,
          title: Center(
            child: Text(
              'Categories',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: Colors.white),
            ),
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: () => AutoRouter.of(context).push(const AddNewCategoryRoute()), icon: const Icon(FeatherIcons.plus))
          ],
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(height: 10.h,),
          itemCount: 100,
          shrinkWrap: true,
          itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            shadowColor: Colors.black,
            elevation: 2,
            child: ListTile(
              leading: Text("${index + 1}".toString(),style: Theme.of(context).textTheme.bodyMedium,),
              title: Text('Snapchat',style: Theme.of(context).textTheme.bodyMedium,),
              trailing:
                  SizedBox(
                    width: 120.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: () => AutoRouter.of(context).push(const UpdateCategoryRoute()), icon: const Icon(FeatherIcons.edit2,color: Colors.green,),),
                        IconButton(onPressed: (){}, icon: const Icon(FeatherIcons.trash,color: Colors.red,))
                      ],
                    ),
                  )
            ),
          );
        }));
  }
}
