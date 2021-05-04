import 'package:flutter/material.dart';
import 'package:flutter_ui_demo/model/profile.dart';

class ProfileHead extends StatelessWidget {
  final Profile profile;

  ProfileHead(this.profile);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                '${profile.name}, ${profile.age}',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .merge(TextStyle(fontWeight: FontWeight.bold)),
              )),
              Icon(Icons.phone),
              profile.isVerifyMobile ? Text('전화번호 인증됨') : Text('전화번호 인증 안됨'),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '${profile.location}, ${profile.distance}',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: 5,
          ),
          Text('${profile.height}cm, ${profile.bloodType}'),
        ],
      ),
    );
  }
}
