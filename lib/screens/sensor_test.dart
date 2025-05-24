import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../function/sensor_controller.dart'; // 실제 경로 맞게 수정

class Sensor_test extends StatelessWidget {
  final SensorController sensorController = Get.put(SensorController());

  Sensor_test({super.key});

  String radToDegree(double rad) => (rad * 180 / 3.141592653589793).toStringAsFixed(2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('현재 위치 및 센서 데이터')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() {
          final accel = sensorController.accelerometer.value;
          final mag = sensorController.magnetometer.value;
          final heading = sensorController.direction.value;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('가속도 센서: x=${accel.x.toStringAsFixed(3)}, y=${accel.y.toStringAsFixed(3)}, z=${accel.z.toStringAsFixed(3)}'),
              Text('Pitch: ${radToDegree(accel.pitch)}°, Roll: ${radToDegree(accel.roll)}°'),
              Text('자기장 센서: x=${mag.x.toStringAsFixed(3)}, y=${mag.y.toStringAsFixed(3)}, z=${mag.z.toStringAsFixed(3)}'),
              Text('방향 (Heading): ${heading.toStringAsFixed(3)}°'),
            ],
          );
        }),
      ),
    );
  }
}
