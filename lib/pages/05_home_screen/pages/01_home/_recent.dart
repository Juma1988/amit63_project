
part of 'view.dart';

class _RecentJobPage extends StatefulWidget {
  const _RecentJobPage();

  @override
  State<_RecentJobPage> createState() => _RecentJobPageState();
}

class _RecentJobPageState extends State<_RecentJobPage> {
  bool isSaved2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recent Job',
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
          width: MediaQuery.of(context).size.width,
          height: 128,
          child: Column(
            children: [
              SizedBox(
                height: 46.h,
                child: Row(
                  children: [
                    AppImage(
                      'home_page_twitter_logo.png',
                      //todo get the logo from API or If state
                      height: 40.h,
                      width: 40.w,
                    ),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Senior UI Designer',
                          //todo Grab the job title from API
                          style: TextStyle(
                            color: Colors.black,
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
                          isSaved2 = !isSaved2;
                        });
                      },
                      icon: Icon(
                        Icons.save,
                        size: 24,
                        color: isSaved2 ? Colors.blue : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              SizedBox(
                  height: 26,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffd6e4ff),
                        ),
                        child: Center(
                          child: Text(
                            'FullTime', // todo get the work type
                            style: TextStyle(
                                color: Color(0xff4e7bfe),
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
                          color: Color(0xffd6e4ff),
                        ),
                        child: Center(
                          child: Text(
                            'Remote', // todo get the work type
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
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
                          color: Color(0xffd6e4ff),
                        ),
                        child: Center(
                          child: Text(
                            'Senior', // todo get the work type
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Row(
                        children: [
                          Text(
                            '\$15K',
                            style: TextStyle(
                                color: Color(0xFF2E8E18),
                                fontWeight: FontWeight.w500,
                                fontSize: 18.sp),
                          ),
                          Text(
                            '/Month',
                            style: TextStyle(
                                color: Color(0xFF6B7280),
                                fontWeight: FontWeight.w500,
                                fontSize: 10.sp),
                          ),
                        ],
                      )
                    ],
                  )),
              SizedBox(height: 16.h),
              SizedBox(
                width: 327.w,
                child: Divider(
                  thickness: 1.5,
                  color: Color(0xFFE5E7EB),
                ),
              )
            ],
          ),
        )      ],
    );
  }
}
