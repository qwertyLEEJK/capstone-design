import 'package:get/get.dart';

class SensorData {
  double x;
  double y;
  double z;
  double pitch;
  double roll;
  double heading;

  SensorData(this.x, this.y, this.z, {this.pitch = 0.0, this.roll = 0.0, this.heading = 0.0});
}

class SensorController extends GetxController {
  var accelerometer = SensorData(0, 0, 0).obs; // 가속센서
  var magnetometer = SensorData(0, 0, 0).obs;  // 지자기센서
  var direction = 0.0.obs;                      // 방향센서

  void updateAccelerometer(double x, double y, double z) {
    accelerometer.value = SensorData(x, y, z);
  }

  void updateMagnetometer(double x, double y, double z) {
    magnetometer.value = SensorData(x, y, z);
  }

  // pitch와 roll도 같이 업데이트하는 메서드
  void updateDirection(double heading, double pitch, double roll) {
    direction.value = heading;
    // 기존 accelerometer 객체를 복사해 pitch, roll, heading 반영
    final current = accelerometer.value;
    accelerometer.value = SensorData(
      current.x,
      current.y,
      current.z,
      pitch: pitch,
      roll: roll,
      heading: heading,
    );
  }
}
