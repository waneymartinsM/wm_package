import 'package:flutter/material.dart';
import 'package:wm_package/src/utils/wm_package_typedef.dart';

class WMPackage extends StatefulWidget {
  const WMPackage({
    Key? key,
    this.width,
    this.height = 120.0,
    this.color1,
    this.color2,
    this.subtitleColor,
    this.textColor,
    this.title = 'Title',
    this.subtitle = 'Subtitle',
    this.padding,
    this.titleStyle,
    this.subtitleStyle,
    this.onTap,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color? color1;
  final Color? color2;
  final Color? subtitleColor;
  final Color? textColor;
  final String title;
  final String subtitle;
  final WMPackageCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;

  @override
  _WMPackageState createState() => _WMPackageState();
}

class _WMPackageState extends State<WMPackage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap!() ?? () {},
      child: Container(
        width: widget.width ?? MediaQuery.of(context).size.width * 0.90,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(
            colors: [
              widget.color1 ?? const Color(0xFFCB1841),
              widget.color2 ?? const Color(0xFF2604DE),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 12,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                widget.title,
                style: widget.titleStyle ??
                    TextStyle(
                      color: widget.textColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                widget.subtitle,
                style: widget.subtitleStyle ??
                    TextStyle(
                      color: widget.subtitleColor,
                      fontSize: 15.0,
                    ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
