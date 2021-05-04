import 'package:DevQuiz/core/app_gradients.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
              height: 250,
              decoration: BoxDecoration(gradient: AppGradients.linear),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                          text: "Ola, ",
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(
                                text: "Sidinei Silva",
                                style: AppTextStyles.titleBold)
                          ]),
                    ),
                    Container(
                      width: 58,
                      height: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://avatars.githubusercontent.com/u/20242151?v=4"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
}
