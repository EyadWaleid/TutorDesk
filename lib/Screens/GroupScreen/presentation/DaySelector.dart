import 'package:flutter/material.dart';

import '../../../Core/Style/coloursExtention.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DaysSelector extends StatefulWidget {
  const DaysSelector({super.key, required this.onChanged});
  final ValueChanged<Set<String>> onChanged;

  @override
  State<DaysSelector> createState() => _DaysSelectorState();
}

class _DaysSelectorState extends State<DaysSelector> {
  static const _days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  final Set<String> _selected = {};

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).extension<TutorDeskColours>();

    return Wrap(
      spacing: 8.w,     // gap between chips in a row
      runSpacing: 8.h,  // gap between rows
      children: _days.map((day) {
        final isSelected = _selected.contains(day);
        return FilterChip(
          label: Text(day),
          selected: isSelected,
          showCheckmark: false, // your design has no tick
          backgroundColor: Colors.white,
          selectedColor: themeColor?.primaryColour,
          labelStyle: TextStyle(
            fontSize: 12.sp,
            color: isSelected ? Colors.white : themeColor?.primaryBlack,
          ),
          shape: const StadiumBorder(), // the pill shape
          side: BorderSide(
            color: themeColor?.primaryBlack.withOpacity(0.1) ?? Colors.grey,
          ),
          onSelected: (value) {
            setState(() {
              value ? _selected.add(day) : _selected.remove(day);
            });
            widget.onChanged(_selected);
          },
        );
      }).toList(),
    );
  }
}