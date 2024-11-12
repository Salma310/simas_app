import 'package:flutter/material.dart';

class ParticipantList extends StatelessWidget {
  const ParticipantList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(22, 22, 66, 22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17.442),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Panitia',
                style: TextStyle(
                  color: Color(0xFF181818),
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Be Vietnam Pro',
                ),
              ),
              const SizedBox(height: 17),
              Row(
                children: [
                  _buildParticipantAvatar('assets/images/profile.png'),
                  const SizedBox(width: 15),
                  _buildParticipantAvatar('assets/images/profile.png'),
                  const SizedBox(width: 15),
                  _buildParticipantAvatar('assets/images/profile.png'),
                ],
              ),
            ],
          ),
          const Spacer(),
          // Column(
          //   children: [
          //     const SizedBox(height: 39),
          //     _buildParticipantAvatar('assets/images/profile.png'),
          //   ],
          // ),
          // const SizedBox(width: 16),
          // Column(
          //   children: [
          //     const SizedBox(height: 39),
          //     _buildParticipantAvatar('assets/images/profile.png'),
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget _buildParticipantAvatar(String imagePath) {
    return Image.asset(
      imagePath,
      width: 35,
      height: 35,
    );
  }
}
