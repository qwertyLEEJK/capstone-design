import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          child: Image.asset('images/123.jpg'),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 80,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            height: 60,
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 3,
                    child: Column(
                      children: [
                        Icon(Icons.location_on_outlined, size: 17,),
                        Text('주변', style: TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.w400, fontSize: 10),),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Column(
                      children: [
                        Icon(Icons.star_border, size: 17,),
                        Text('저장', style: TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.w400, fontSize: 10),),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Column(
                      children: [
                        Icon(Icons.directions_bus_filled_outlined, size: 17,),
                        Text('대중교통', style: TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.w400, fontSize: 10),),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Column(
                      children: [
                        Icon(Icons.directions_car_filled_outlined, size: 17,),
                        Text('내비게이션', style: TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.w400, fontSize: 10),),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Column(
                      children: [
                        Icon(Icons.account_circle_outlined, size: 17,),
                        Text('내 정보', style: TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.w400, fontSize: 10),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
