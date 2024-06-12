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
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
           Stack(
             children: [
               const Image(
                image: AssetImage('assets/images/image_placeholder.webp'),),
               Positioned(
                bottom: 0,
                right: 0,
                child: IconButton(onPressed: (){}, icon: const Icon(FeatherIcons.camera)))
             ],
           ),
          30.h.heightBox,
          TextField(
            decoration: InputDecoration(
              hintText: 'Title',
              hintStyle: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          10.h.heightBox,
          TextField(
            decoration: InputDecoration(
              hintText: 'Slug',
              hintStyle: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          20.h.heightBox,
          Container(
             padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Tags',style: Theme.of(context).textTheme.bodyMedium,),
                const Icon(FeatherIcons.chevronRight)
              ],
            ),
          ),
           10.h.heightBox,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Categories',style: Theme.of(context).textTheme.bodyMedium,),
                const Icon(FeatherIcons.chevronRight)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
