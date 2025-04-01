import 'package:flutter/material.dart';

class BusInfoScreen extends StatelessWidget {
  const BusInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('버스 정류장 정보'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('영남대 앞', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const Divider(thickness: 1),
          _busRow(
            number: '309',
            direction: '임당삼성 앞 방면',
            route: '대구 서대구역(농협1) ↔ 부적주공A 건너',
            times: '11분  6정류장,  12분  7정류장',
            iconColor: Colors.blue,
          ),
          const SizedBox(height: 12),
          _busRow(
            number: '609',
            direction: '임당삼성 앞 방면',
            route: '대구 대현공영차고지앞 ↔ 금구동(종점)',
            times: '15분  3정류장,  13분  19정류장',
            iconColor: Colors.indigo,
          ),
          const SizedBox(height: 12),
          _busRow(
            number: '649',
            direction: '임당삼성 앞 방면',
            route: '대구 대곡공원앞 ↔ 금구동(종점)',
            times: '15분  11정류장,  27분  19정류장',
            iconColor: Colors.green,
          ),
        ],
      ),
    );
  }

  Widget _busRow({
    required String number,
    required String direction,
    required String route,
    required String times,
    required Color iconColor,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.directions_bus, color: iconColor),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$number  $direction', style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(route, style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 4),
              Text(times, style: const TextStyle(color: Colors.red)),
            ],
          ),
        )
      ],
    );
  }
}
