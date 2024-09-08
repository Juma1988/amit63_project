part of 'view.dart';

class _SuggestedJob extends StatefulWidget {
  const _SuggestedJob();

  @override
  State<_SuggestedJob> createState() => _SuggestedJobState();
}

class _SuggestedJobState extends State<_SuggestedJob> {
  bool isSaved1 = false;
  final cubit = GetIt.instance<HomeCubit>();

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Suggested Job',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xFF111827),
            ),
          ),
          TextButton(
              onPressed: () {
                //todo go to view all Suggested jobs
              },
              child: Text('View all')),
        ],
      ),
      SizedBox(height: 10),
      SizedBox(
        height: 200.h,
        width: MediaQuery
            .of(context)
            .size
            .width * .90,
        child: ListView.separated(
          clipBehavior: Clip.none,
          separatorBuilder: (context, index) => SizedBox(width: 16.w),
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 18),
          scrollDirection: Axis.horizontal,
          itemCount: 1,
          itemBuilder: (context, index) =>
              Container(
                width: 320.w,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF0b1a7b),
                ),
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: SizedBox(
                    height: 183,
                    width: 300.w,
                    child: Column(
                      children: [
                        SizedBox(
                            height: 45.h,
                            child: Row(
                              children: [
                                AppImage(
                                  'home_page_zoom_logo.png',
                                  //todo get the logo from API or If state
                                  height: 40.h,
                                  width: 40.w,
                                ),
                                SizedBox(width: 16.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Product Designer',
                                      //todo Grab the job title from API
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Zoom',
                                          //todo replace it with method form api
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12.sp,
                                              color: Color(0xFF9CA3AF)),
                                          textAlign: TextAlign.start,
                                        ),
                                        Text(
                                          '\t•\t',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12.sp,
                                              color: Color(0xFF9CA3AF)),
                                        ),
                                        Text('United States',
                                            //todo replace it with country form api
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12.sp,
                                                color: Color(0xFF9CA3AF))),
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isSaved1 = !isSaved1;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.save,
                                    size: 24,
                                    color: isSaved1 ? Colors.blue : Colors
                                        .white,
                                  ),
                                )
                              ],
                            )),
                        SizedBox(height: 20),
                        SizedBox(
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xFF2d3a8c),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'FullTime', // todo get the work type
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30.h,
                                  width: 80.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xFF2d3a8c),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Remote', // todo get the work type
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xFF2d3a8c),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Design', // todo get the work type
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        SizedBox(height: 20.h),
                        SizedBox(
                            height: 30.h,
                            child: Row(
                              children: [
                                Text(
                                  '\$12K-\$15K',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.sp,
                                      color: Colors.white),
                                ),
                                Text(
                                  '/Month',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.sp,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                                Spacer(),
                                FilledButton(
                                    onPressed: () {
                                      //todo go to Applies
                                    },
                                    child: Text(
                                      'Apply now',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFFFFFFF)),
                                    ))
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
        ),
      )
    ]);
  }
}
