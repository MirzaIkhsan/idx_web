// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:idx_web/extensions/list_widget_extension.dart';
import 'package:idx_web/models/service_item_model.dart';
import 'package:idx_web/widgets/card_service_item.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      ServiceItemModel(
        title: 'SEO Services',
        description:
            'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
        buttonColor: Colors.yellow,
      ),
      ServiceItemModel(
        title: 'Web Design',
        description:
            'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
        buttonColor: Colors.red,
      ),
      ServiceItemModel(
        title: 'Social Engagement',
        description:
            'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
        buttonColor: Colors.green,
      ),
      ServiceItemModel(
        title: 'Content Marketing',
        description:
            'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
        buttonColor: Colors.blue,
      ),
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      width: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'WHAT WE DO?',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'The service we offer is specifically\ndesigned to meet your needs.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 24),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -50,
                left: -50,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.yellow.withOpacity(0.3),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                bottom: -30,
                right: -30,
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.3),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: services
                      .map((e) => CardServiceItem(model: e))
                      .toList()
                      .separateHorizontallly(16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
