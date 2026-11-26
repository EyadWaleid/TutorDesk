import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Core/Style/coloursExtention.dart';

class StartTimeField extends StatefulWidget {
  const StartTimeField({super.key, required this.onChanged});
  final ValueChanged<TimeOfDay> onChanged; // reports the choice, like DaysSelector

  @override
  State<StartTimeField> createState() => _StartTimeFieldState();
}

class _StartTimeFieldState extends State<StartTimeField> {
  TimeOfDay? _time; // null = nothing chosen yet

  Future<void> _pickTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: _time ?? const TimeOfDay(hour: 18, minute: 0),
    );
    if (picked == null || !mounted) return; // cancelled, so do nothing
    setState(() => _time = picked);
    widget.onChanged(picked);
  }

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).extension<TutorDeskColours>();

    return InkWell(
      onTap: _pickTime,
      borderRadius: BorderRadius.circular(16.r),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        decoration: BoxDecoration(
          color: themeColor?.primaryOffWhite,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          children: [
            Icon(Icons.access_time_outlined, size: 18, color: themeColor?.textGrey),
            SizedBox(width: 10.w),
            Text(
              _time?.format(context) ?? 'Select start time',
              style: TextStyle(
                fontSize: 14.sp,
                color: _time == null ? themeColor?.textGrey : themeColor?.primaryBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}