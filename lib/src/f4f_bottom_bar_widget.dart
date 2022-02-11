import 'package:flutter/material.dart';
import 'utils.dart';

class F4FBottomBarWidget extends StatelessWidget {
  final bool isThemeDark;
  final List<F4FBottomBarSection> sections;
  final F4FDivider divider;

  const F4FBottomBarWidget({
    Key? key,
    this.isThemeDark = true,
    required this.sections,
    this.divider = const F4FDivider(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final widgets = <Widget>[];
    sections.asMap().entries.forEach((element) {
      final index = element.key;
      final section = element.value;
      if (index != 0) {
        widgets.add(divider);
      }
      widgets.add(section);
    });

    return Container(
      color: isThemeDark ? const Color(0xFF20202A) : Colors.white,
      width: double.infinity,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: widgets,
      ),
    );
  }
}

class F4FBottomBarSection extends StatelessWidget {
  final String title;
  final String link;

  const F4FBottomBarSection({
    Key? key,
    required this.title,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Utils.launchURL(link);
      },
      child: Text(title),
    );
  }
}

class F4FDivider extends StatelessWidget {
  const F4FDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 1,
      color: const Color(0xFFA7A7A7),
      margin: const EdgeInsets.only(top: 2),
    );
  }
}
