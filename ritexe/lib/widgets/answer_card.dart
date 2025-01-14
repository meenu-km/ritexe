// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnswerCard extends StatefulWidget {
  final bool isUpVoted, isDownVoted;
  final String ans;
  const AnswerCard({
    this.isDownVoted = false,
    this.isUpVoted = true,
    required this.ans,
    Key? key,
  }) : super(key: key);

  @override
  State<AnswerCard> createState() => _AnswerCardState();
}

class _AnswerCardState extends State<AnswerCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                const BoxShadow(
                  color: Colors.black,
                ),
                const BoxShadow(
                  color: Colors.black,
                  offset: Offset(0, 1.6),
                  blurRadius: 3,
                  spreadRadius: -3,
                ),
              ],
            ),
            child: Padding(
                padding: EdgeInsets.all(10.sp),
                child: Text(
                  widget.ans,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    fontFamily: 'sans-serif-light',
                    color: Colors.black,
                  ),
                ))));
  }
}
