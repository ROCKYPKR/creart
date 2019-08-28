import 'package:creartfinal/skills/skill.dart';
import 'package:creartfinal/skills/skill_arvr.dart';
import 'package:creartfinal/skills/skill_digital.dart';
import 'package:creartfinal/skills/skill_embedded.dart';
import 'package:creartfinal/skills/skillai.dart';
import 'package:creartfinal/skills/skillux.dart';
import 'package:creartfinal/skills/skillweb.dart';
import 'package:flutter/material.dart';

class SkillList extends StatefulWidget {
  @override
  _SkillListState createState() => _SkillListState();
}

class _SkillListState extends State<SkillList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Text("Skill List"),
          ),
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios)),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(Icons.search),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            newSkill(
                context, "UX/UI Design", "Web & Mobile App Design", SkillUx()),
            newSkill(context, "Web Development",
                "Responsive Websites,Web Apps etc..", SkillWeb()),
            newSkill(context, "Mobile Development",
                "Responsive Android,iOS Apps etc..", Skill()),
            newSkill(
                context, "AI/ML", "Android, iOS Apps,Web Services", SkillAi()),
            newSkill(context, "Embedded System",
                "Raspberry PI, Arduino, IOT, Helth Care etc..", SkillEmb()),
            newSkill(context, "AR/VR", "Augment Reality & Virtual Reality",
                SkillArVr()),
            newSkill(context, "Digital & Offline Marketting", "SMM, SEO, SMO",
                SkillDigital()),
          ],
        ));
  }
}

Widget newSkill(BuildContext context, var tittle, var subtittle, var navigate) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      elevation: 8.0,
      child: ListTile(
        title: Text(tittle),
        subtitle: Text(subtittle),
        leading: Icon(
          Icons.apps,
          color: Colors.orange,
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => navigate));
        },
      ),
    ),
  );
}
