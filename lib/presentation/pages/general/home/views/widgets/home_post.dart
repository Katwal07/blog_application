part of 'widget_imports.dart';



class HomePostDetails extends StatelessWidget {
  const HomePostDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(bottom: 15, right: 6),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                width: 100.w,
                height: 90.h,
                fit: BoxFit.cover,
                image: const AssetImage(
                  AppImageStrings.backgroundImage,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  'Netflix Will Charge Money For Password Sharing',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Row(
                  children: [
                    const Icon(FeatherIcons.clock),
                    4.w.widthBox,
                    Text(
                      '6 months ago',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '129 Views',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium,
                    ),
                    const Icon(FeatherIcons.bookmark),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}