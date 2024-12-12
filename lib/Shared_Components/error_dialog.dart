import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorDialog extends StatelessWidget {
  String errorMessage;

  ErrorDialog({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0.01.sh,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.r)),
      child: Padding(
        padding: EdgeInsets.all(8.0.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/gifImages/Feeling sorry.gif"),
            Text(
              errorMessage,
              style: GoogleFonts.nunito(
                fontSize: 11.sp,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
