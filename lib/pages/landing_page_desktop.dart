// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gsheets/gsheets.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'package:true_story/constants/colors.dart';
import 'package:true_story/constants/json.dart';
import 'package:uuid/uuid.dart';
import 'package:websafe_svg/websafe_svg.dart';

class LandingPageDekstop extends StatelessWidget {
  const LandingPageDekstop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/image1_orang.jpeg",
                colorBlendMode: BlendMode.screen,
                height: 350,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      // the end is the bottom of the image
                      end: const Alignment(0.0, 0.4),
                      begin: const Alignment(0.0, -1),
                      colors: [
                        ColorConstants.darkBlueColor,
                        ColorConstants.darkBlueColor,
                        ColorConstants.darkBlueColor,
                        ColorConstants.darkBlueColor,
                        ColorConstants.darkBlueColor,
                        ColorConstants.darkBlueColor,
                        ColorConstants.darkBlueColor,
                        ColorConstants.darkBlueColor,
                        ColorConstants.darkBlueColor.withOpacity(0.1),
                        ColorConstants.darkBlueColor.withOpacity(0.1),
                        ColorConstants.darkBlueColor.withOpacity(0.1),
                        ColorConstants.darkBlueColor.withOpacity(0.1),
                        ColorConstants.darkBlueColor.withOpacity(0.1),
                        ColorConstants.darkBlueColor.withOpacity(0.1),
                        ColorConstants.darkBlueColor.withOpacity(0.1),
                        ColorConstants.darkBlueColor.withOpacity(0.1),
                        ColorConstants.darkBlueColor.withOpacity(0.2),
                        ColorConstants.darkBlueColor.withOpacity(0.2),
                        ColorConstants.darkBlueColor.withOpacity(0.2),
                        ColorConstants.primaryColor.withOpacity(0.2),
                        ColorConstants.primaryColor.withOpacity(0.3),
                        ColorConstants.primaryColor.withOpacity(0.3),
                        ColorConstants.primaryColor.withOpacity(0.3),
                        ColorConstants.primaryColor.withOpacity(0.3),
                        ColorConstants.primaryColor.withOpacity(0.4),
                        ColorConstants.primaryColor.withOpacity(0.4),
                        ColorConstants.primaryColor.withOpacity(0.4),
                        ColorConstants.primaryColor.withOpacity(0.6),
                        ColorConstants.primaryColor.withOpacity(0.7),
                        ColorConstants.primaryColor.withOpacity(0.7),
                        ColorConstants.primaryColor.withOpacity(0.8),
                        ColorConstants.primaryColor.withOpacity(0.8),
                        ColorConstants.primaryColor.withOpacity(0.9),
                        ColorConstants.primaryColor,
                        ColorConstants.primaryColor,
                        ColorConstants.primaryColor,
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const TextScroll(
                    "Terbiasa harus menanggung segala sesuatu sendiri",
                    style: TextStyle(
                      fontFamily: "VSC",
                      color: ColorConstants.tertiaryColor,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const TextScroll(
                    "Aku merasa diriku kurang",
                    style: TextStyle(
                      fontFamily: "VSC",
                      color: ColorConstants.tertiaryColor,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(left: 80, top: 6, bottom: 3),
                    decoration: const BoxDecoration(color: ColorConstants.tertiaryColor),
                    child: const Text(
                      "Aku Berjumpa dengan kasih.",
                      style: TextStyle(
                        fontFamily: 'VSC',
                        fontSize: 13,
                        color: ColorConstants.darkBlueColor,
                      ),
                    ).animate().fadeIn(duration: 1500.ms).slide(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          "Bapa yang menyempurnakan dan membuat aku utuh.",
                          textStyle: const TextStyle(
                            fontFamily: "VSC",
                            color: ColorConstants.tertiaryColor,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                          speed: const Duration(milliseconds: 200),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 60),
                      child: const Text(
                        "Youth Serpong 2023",
                        style: TextStyle(
                          fontFamily: "VSC",
                          color: ColorConstants.tertiaryColor,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          // let me tell you story
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 530,
            child: Stack(
              children: [
                const Positioned(
                  top: 10,
                  left: 130,
                  child: Text(
                    "let me tell you a...",
                    style: TextStyle(
                      fontFamily: 'Cherry Days',
                      fontSize: 18,
                      color: ColorConstants.whiteColor,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: -120,
                  top: 50,
                  child: BounceInDown(
                      duration: const Duration(milliseconds: 1000),
                      child: Image.asset("assets/images/logo.png", width: 200, height: 200)),
                ),

                // Positioned(
                //   top: 260,
                //   left: 20,
                //   child: Transform.scale(
                //       scale: 1.8, child: Image.asset("assets/images/image2.png", width: MediaQuery.of(context).size.width)),
                // ),

                Column(
                  children: [
                    Transform.translate(
                      offset: const Offset(0, 230),
                      child: Stack(
                        children: [
                          Transform.scale(
                            scale: 1.25,
                            child: Image.asset(
                              "assets/images/image2_null.png",
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(20, -10),
                            child: Transform.rotate(
                              angle: -pi / 40,
                              child: const Text(
                                "Let's join this event",
                                style: TextStyle(fontFamily: "VSC", fontSize: 24, color: ColorConstants.whiteColor),
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(20, 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "On Sunday",
                                  style: TextStyle(fontFamily: "VSC", fontSize: 18, color: ColorConstants.whiteColor),
                                ),
                                const Text(
                                  "Sept 10, 2023",
                                  style: TextStyle(fontFamily: "VSC", fontSize: 18, color: ColorConstants.whiteColor),
                                ),
                                const SizedBox(height: 10),
                                Stack(
                                  children: [
                                    Transform.rotate(
                                      angle: -pi / 24,
                                      child: Container(
                                        width: 100,
                                        color: ColorConstants.tertiaryColor,
                                        padding: const EdgeInsets.all(18),
                                      ),
                                    ),
                                    Transform.translate(
                                      offset: const Offset(10, 10),
                                      child: const Text(
                                        "01:30 PM",
                                        style: TextStyle(
                                          fontFamily: "VSC",
                                          color: ColorConstants.darkBlueColor,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "Graha Jasmine",
                                  style: TextStyle(fontFamily: "VSC", fontSize: 17, color: ColorConstants.whiteColor),
                                ),
                                const Text(
                                  "Jl. Kelapa Gading Selatan,\nBlok HA1. No. 2-6",
                                  style: TextStyle(
                                      fontFamily: "VSC",
                                      fontSize: 17,
                                      color: ColorConstants.whiteColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(-30, 245),
                      child: Transform.rotate(
                        angle: -pi / 30,
                        child: Transform.scale(
                          scale: 1.4,
                          child: const TextScroll(
                            "He restores my soul. He guides me in paths of",
                            style: TextStyle(
                              fontFamily: "MADE Soulmaze Outline",
                              fontSize: 14,
                              color: ColorConstants.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          const FormTrueStory(),
          const SizedBox(height: 20),

          Transform.translate(
            offset: const Offset(30, 0),
            child: Transform.scale(
              scale: 1.35,
              child: Image.asset("assets/images/image3.png", width: MediaQuery.of(context).size.width),
            ),
          )
        ],
      )),
    );
  }
}

class FormTrueStory extends HookWidget {
  const FormTrueStory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final gsheets = GSheets(json);
    const spreadsheetId = '1X9px38gFV-y5HlPW0-RTN7WT6azK5J8SAqNtVYtroVw'; // Replace with your spreadsheet ID

    final isSubmit = useState(false);
    final nameController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final form = GlobalKey<FormState>();
    return Center(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            decoration: BoxDecoration(
              color: ColorConstants.whiteColor,
              border: Border.all(color: ColorConstants.darkBlueColor, width: 5),
            ),
            child: Form(
              key: form,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Let's come and taste!",
                    style: TextStyle(
                      fontFamily: 'VSC',
                      color: ColorConstants.darkBlueColor,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TrueStoryTextField(
                    textFieldName: 'name',
                    textFieldHintText: 'Enter your name',
                    textFieldController: nameController,
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(height: 20),
                  TrueStoryTextField(
                    textFieldName: 'phone number',
                    textFieldHintText: 'Enter your phone number',
                    textFieldController: phoneNumberController,
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: InkWell(
                      onTap: () async {
                        if (nameController.text.isEmpty || phoneNumberController.text.isEmpty) {
                          showTopSnackBar(
                            Overlay.of(context),
                            const CustomSnackBar.error(
                              message: "Please fill the form",
                            ),
                          );
                          return;
                        }

                        isSubmit.value = true;
                        var uuid = const Uuid();
                        final ss = await gsheets.spreadsheet(spreadsheetId);
                        final sheet = ss.worksheetByTitle('Sheet1');

                        // get the last row key

                        //  check the last column and row that contain data
                        await sheet!.values.insertRowByKey(
                          uuid.v4(),
                          [
                            nameController.text,
                            phoneNumberController.text,
                          ],
                        ).then((value) => isSubmit.value = false);
                      },
                      child: isSubmit.value
                          ? Center(
                              child: LoadingAnimationWidget.inkDrop(
                              color: ColorConstants.darkBlueColor,
                              size: 50,
                            ))
                          : Container(
                              padding: const EdgeInsets.all(10),
                              color: ColorConstants.tertiaryColor,
                              child: const Text(
                                "I'M IN!",
                                style: TextStyle(
                                  fontFamily: 'VSC',
                                  fontSize: 16,
                                  color: ColorConstants.darkBlueColor,
                                ),
                              ),
                            ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: -4,
            right: 20,
            child: Image.asset(
              "assets/images/logostamp.png",
              width: 80,
              height: 80,
            ),
          )
        ],
      ),
    );
  }
}

class TrueStoryTextField extends StatelessWidget {
  final String textFieldName;
  final String textFieldHintText;
  final TextEditingController textFieldController;
  final TextInputType keyboardType;
  const TrueStoryTextField({
    Key? key,
    required this.textFieldName,
    this.textFieldHintText = 'Enter your name',
    required this.textFieldController,
    required this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textFieldName,
          style: const TextStyle(
            fontFamily: 'VSC',
            color: ColorConstants.darkBlueColor,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: textFieldController,
          keyboardType: keyboardType,
          validator: (value) => value!.isEmpty ? 'Please fill the form' : null,
          decoration: InputDecoration(
            fillColor: ColorConstants.quaternaryColor,
            filled: true,
            hintText: textFieldHintText,
            hintStyle: const TextStyle(
              fontFamily: 'VSC',
              color: ColorConstants.darkBlueColor,
              fontSize: 18,
            ),
            enabledBorder: InputBorder.none,
          ),
        )
      ],
    );
  }
}
