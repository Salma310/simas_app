import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 16, 23, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 4,
                    height: 25,
                    decoration: const BoxDecoration(
                      color: Color(0xFF2051E5),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(width: 13),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Intercom',
                        style: TextStyle(
                          color: Color(0xFF0D1829),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                        ),
                      ),
                      SizedBox(height: 11),
                      Text(
                        'Nama Ketua Pelaksana',
                        style: TextStyle(
                          color: Color(0xB30D1829),
                          fontSize: 14,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Text(
                'Progress',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
          const SizedBox(height: 21),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Team',
                      style: TextStyle(
                        color: Color(0xFF0D1829),
                        fontSize: 14,
                        fontFamily: 'Inter',
                      ),
                    ),
                    SizedBox(height: 14),
                    Text(
                      '5/8',
                      style: TextStyle(
                        color: Color(0x690D1829),
                        fontSize: 18,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Due date',
                      style: TextStyle(
                        color: Color(0x990D1829),
                        fontSize: 14,
                        fontFamily: 'Inter',
                      ),
                    ),
                    const SizedBox(height: 17),
                    Row(
                      children: [
                        Image.network(
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/13f8d699a1dcb74318dbf97a71b8bbdb87bc3a4efeedf44c104720947333c5bc?placeholderIfAbsent=true&apiKey=4efd590af14340948f22b09b0e3adb18',
                          width: 14,
                          height: 18,
                        ),
                        const SizedBox(width: 6),
                        const Text(
                          'July 23, 2022',
                          style: TextStyle(
                            color: Color(0xFF445668),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
