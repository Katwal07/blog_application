part of 'add_post_imports.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.primaryColor,
        title: Center(
          child: Text(
            'Add Post',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Colors.white),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.check))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadiusDirectional.circular(20)),
              width: double.infinity,
              height: 300,
            ),
            30.h.heightBox,
            TextField(
              decoration: InputDecoration(hintText: 'Title',hintStyle: Theme.of(context).textTheme.bodyMedium,),
            ),
             10.h.heightBox,
            TextField(
              decoration: InputDecoration(hintText: 'Slug',hintStyle: Theme.of(context).textTheme.bodyMedium,),
            ),
          ],
        ),
      ),
    );
  }
}
