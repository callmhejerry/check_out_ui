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
        backgroundColor: Colors.white,
        title: Text(
          "Checkout",
          style: TextStyle(
            fontSize: 17.sp,
            height: 1.29.h,
            letterSpacing: -0.41.w,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        leading: TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          label: Text(
            "back",
            style: TextStyle(
              fontSize: 17.sp,
              height: 1.29.h,
              color: Colors.black,
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
              height: 64.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Deliver carefully to your door",
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
            Container(
              margin: EdgeInsets.only(
                left: 16.w,
                top: 24.h,
                bottom: 14.h,
              ),
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
                  SizedBox(
                    width: 24.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Yellow bag edition",
                        style: TextStyle(
                          fontSize: 17.sp,
                          height: 1.29.h,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.41.w,
                        ),
                      ),
                      Text(
                        "100% Synthentic \n Leather",
                        style: TextStyle(
                          height: 1.33.h,
                          fontSize: 15.sp,
                          color: const Color(0xFF3C3C43),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CheckoutCard(
              children: [
                Text(
                  "Shipping Address",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    height: 1.29.h,
                    letterSpacing: -0.41.w,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "234, Forest Street Lincolnton,NC 28092.",
                      style: TextStyle(
                        color: const Color(0xff3c3c43).withOpacity(0.60),
                        fontSize: 15.sp,
                        height: 1.33.h,
                        letterSpacing: -0.24.w,
                      ),
                    ),
                    const Icon(Icons.check),
                  ],
                ),
                SizedBox(
                  height: 35.h,
                ),
              ],
            ),
            CheckoutCard(
              children: [
                Text(
                  "Delivery Method",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    height: 1.29.h,
                    letterSpacing: -0.41.w,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "2 Deliveries \nfrom french & italy",
                      style: TextStyle(
                        color: const Color(0xff3c3c43).withOpacity(0.60),
                        fontSize: 15.sp,
                        height: 1.33.h,
                        letterSpacing: -0.24.w,
                      ),
                    ),
                    const Icon(Icons.check),
                  ],
                ),
                Text(
                  "Free Delivery",
                  style: TextStyle(
                      fontSize: 15.sp,
                      height: 1.33.h,
                      color: const Color(0xff1C1C1E),
                      letterSpacing: -0.24.w),
                ),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CheckoutCard extends StatelessWidget {
  final List<Widget> children;
  const CheckoutCard({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
        left: 16.w,
        top: 16.h,
        right: 14.w,
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...children,
          const Divider(
            thickness: 1,
            height: 0,
          ),
        ],
      ),
    );
  }
}
