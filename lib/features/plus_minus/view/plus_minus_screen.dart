import 'package:flutter/material.dart';
import 'package:masary/core/utils/colors.dart';
import 'package:masary/features/home_page/data/models/finance_model.dart';
import 'package:masary/features/plus_minus/view/widgets/key_bad_button.dart';

class PlusMinusScreen extends StatefulWidget {
  final bool isPlus;
  const PlusMinusScreen({super.key, required this.isPlus});

  @override
  State<PlusMinusScreen> createState() => _PlusMinusScreenState();
}

class _PlusMinusScreenState extends State<PlusMinusScreen> {
  late final TextEditingController financeController;
  String num = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    financeController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    financeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.isPlus == true ? "Plus" : "Subtract",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: financeController,
                  cursorColor: Colors.white,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: "Details...",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.75),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 24,
                    ),
                    filled: true,
                    fillColor: AppColors.kPrimaryPurble,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: double.infinity,
                  // height: 60,
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: widget.isPlus == true
                        ? AppColors.kSeconderyGreen
                        : AppColors.kSeconderyRed,
                  ),
                  child: Center(
                    child: Text(
                      "${widget.isPlus == true ? "+" : "-"} ${num == "" ? "0.0" : num}",
                      style: TextStyle(
                        fontSize: 24,
                        color: widget.isPlus == true
                            ? AppColors.kPrimaryGreen
                            : AppColors.kPrimaryRed,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                      child: KeyBadButton(
                        onTap: () {
                          setState(() {});
                          num += "7";
                        },
                        text: "7",
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: KeyBadButton(
                        onTap: () {
                          setState(() {});

                          num += "8";
                        },
                        text: "8",
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: KeyBadButton(
                        onTap: () {
                          setState(() {});

                          num += "9";
                        },
                        text: "9",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                      child: KeyBadButton(
                        onTap: () {
                          setState(() {});

                          num += "6";
                        },
                        text: "6",
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: KeyBadButton(
                        onTap: () {
                          setState(() {});

                          num += "5";
                        },
                        text: "5",
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: KeyBadButton(
                        onTap: () {
                          setState(() {});

                          num += "4";
                        },
                        text: "4",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                      child: KeyBadButton(
                        onTap: () {
                          setState(() {});

                          num += "1";
                        },
                        text: "1",
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: KeyBadButton(
                        onTap: () {
                          setState(() {});

                          num += "2";
                        },
                        text: "2",
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: KeyBadButton(
                        onTap: () {
                          setState(() {});

                          num += "3";
                        },
                        text: "3",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                      child: KeyBadButton(
                        onTap: () {
                          if (!num.contains(".")) {
                            setState(() {});

                            num += ".";
                          }
                        },
                        text: ".",
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: KeyBadButton(
                        onTap: () {
                          setState(() {});
                          num += "0";
                        },
                        text: "0",
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: KeyBadButton(
                        onTap: () {
                          if (num.isNotEmpty) {
                            num = num.substring(0, num.length - 1);
                            setState(() {});
                          }
                        },
                        text: "<",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            backgroundColor: AppColors.kSeconderyBlue,
                            foregroundColor:
                                AppColors.kBlackColor.withOpacity(0.8),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Done",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            backgroundColor: AppColors.kSeconderyRed,
                            foregroundColor:
                                AppColors.kBlackColor.withOpacity(0.8),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
