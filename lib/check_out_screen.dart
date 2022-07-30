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
            height: 1.29,
            letterSpacing: -0.41.w,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        leadingWidth: 100,
        leading: TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          label: Text(
            "Back",
            style: TextStyle(
              fontSize: 17.sp,
              height: 1.29,
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
                      height: 1.38,
                      letterSpacing: -0.08.w,
                    ),
                  ),
                  Text(
                    "it is completely free",
                    style: TextStyle(
                      fontSize: 12.sp,
                      height: 1.33,
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
                          height: 1.29,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.41.w,
                        ),
                      ),
                      Text(
                        "100% Synthentic \n Leather",
                        style: TextStyle(
                          height: 1.33,
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
                    height: 1.29,
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
                        height: 1.33,
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
                    height: 1.29,
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
                        height: 1.33,
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
                    height: 1.33,
                    color: const Color(0xff1C1C1E),
                    letterSpacing: -0.24.w,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
            CheckoutCard(
              children: [
                Text(
                  "Payment",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    height: 1.29,
                    letterSpacing: -0.41.w,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Select a payment method",
                      style: TextStyle(
                        color: const Color(0xff3c3c43).withOpacity(0.60),
                        fontSize: 15.sp,
                        height: 1.33,
                        letterSpacing: -0.24.w,
                      ),
                    ),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.w, vertical: 11.h),
                fillColor: Colors.white,
                hintText: "Discount promo code...",
                hintStyle: TextStyle(
                  fontSize: 17.sp,
                  height: 1.29,
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFFC300),
                  ),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: const Color(0xff3c3c43).withOpacity(0.30),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 16.w,
                top: 16.h,
                right: 16.w,
                bottom: 10.h,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal: \$2227.00",
                        style: TextStyle(
                          fontSize: 15.sp,
                          height: 1.33,
                          letterSpacing: -0.24.w,
                        ),
                      ),
                      Text(
                        "Total",
                        style: TextStyle(fontSize: 12.sp, height: 1.33.h),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipping: Free",
                        style: TextStyle(
                          fontSize: 15.sp,
                          height: 1.33,
                          letterSpacing: -0.24.w,
                        ),
                      ),
                      Text(
                        "\$2227.00",
                        style: TextStyle(
                          fontSize: 22.sp,
                          height: 1.27,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.35.w,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffFFC300),
                      fixedSize: Size(343.w, 54.h),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                    ),
                    child: Text(
                      "Place order",
                      style: TextStyle(
                        fontSize: 22.sp,
                        height: 1.27,
                        letterSpacing: 0.35.w,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
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
