import 'package:get/get.dart';

class SensorData{
  double x;
  double y;
  double z;
  double pitch;
  double roll;
  double heading;

  SensorData(this.x, this.y, this.z, {this.pitch = 0.0, this.roll = 0.0, this.heading = 0.0});
}

class SensorController extends GetxController {
  var accelerometer = SensorData(0, 0, 0).obs; //가속센서
  var magnetometer = SensorData(0, 0, 0).obs; //지자기센서
  var direction = 0.0.obs; //방향센서

  void updateAccelerometer(double x, double y, double z) {
    accelerometer.value = SensorData(x, y, z);
  }

  void updateMagnetometer(double x, double y, double z) {
    magnetometer.value = SensorData(x, y, z);
  }

  void updateDirection(double heading) {
    direction.value = heading;
  }
}