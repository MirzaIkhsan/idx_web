// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idx_web/extensions/list_widget_extension.dart';
import 'package:idx_web/widgets/empty_image.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      width: double.infinity,
      height: Get.height,
      child: Column(
        children: [
          const Spacer(),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: EmptyImage(height: Get.height * 0.6),
              ),
              const SizedBox(width: 48),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'LETS TALK',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Let's make something great together. We are truster by over 5000+ clients.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 24),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.deepOrange,
                        backgroundColor: Colors.orangeAccent,
                        fixedSize: const Size.fromHeight(45),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                      ),
                      child: const Text(
                        'START',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 48),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              6,
              (_) => Expanded(
                child: Container(
                  height: 48,
                  color: Colors.grey,
                  child: const Icon(
                    Icons.image,
                    size: 20,
                    color: Colors.red,
                  ),
                ),
              ),
            ).separateHorizontallly(16),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
