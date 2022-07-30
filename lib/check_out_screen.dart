import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F7),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Checkout",
          style: TextStyle(
            fontSize: 17.sp,
            height: 1.29.h,
            letterSpacing: -0.41.w,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          label: Text(
            "back",
            style: TextStyle(
              fontSize: 17.sp,
              height: 1.29.h,
              letterSpacing: -0.41.w,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xFFFFC300),
              width: double.maxFinite,
              alignment: Alignment.center,
              height: 64.h,
              child: Column(
                children: [
                  Text(
                    "Deliver to your door",
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      height: 1.38.h,
                      letterSpacing: -0.08.w,
                    ),
                  ),
                  Text(
                    "it is completely free",
                    style: TextStyle(
                      fontSize: 12.sp,
                      height: 1.33.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Image.asset(
                      "assets/Previewpreview.png",
                      height: 118.r,
                      width: 118.r,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Yellow bag edition",
                        style: TextStyle(
                          fontSize: 17.sp,
                          height: 1.29.h,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.41.w,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
