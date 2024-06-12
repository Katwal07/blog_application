part of 'tags_imports.dart';

class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.primaryColor,
          title: Center(
            child: Text(
              'Add tags',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: Colors.white),
            ),
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: () => AutoRouter.of(context).push(const AddNewTagRoute()), icon: const Icon(FeatherIcons.plus))
          ],
        ),
        body: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
                  height: 10.h,
                ),
            itemCount: 100,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                shadowColor: Colors.black,
                elevation: 2,
                child: ListTile(
                  leading: Text(
                    "${index + 1}".toString(),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  title: Text(
                    'entertainment',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  trailing: SizedBox(
                    width: 120.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () => AutoRouter.of(context).push(const UpdateTagRoute()),
                          icon: const Icon(
                            FeatherIcons.edit2,
                            color: Colors.green,
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              FeatherIcons.trash,
                              color: Colors.red,
                            ))
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
