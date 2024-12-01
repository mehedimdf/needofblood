import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum ImageType {
  png,
  svg,
}

class CustomImage extends StatefulWidget {
  final String imageSrc;
  final Color? imageColor;
  final double? height;
  final double? scale;
  final double? width;
  final double? sizeWidth;
  final ImageType imageType;
  final BoxFit? fit;
  final double horizontal;
  final double vertical;
  final BoxFit? boxFit;

  const CustomImage({
    required this.imageSrc,
    this.imageColor,
    this.sizeWidth,
    this.imageType = ImageType.svg,
    super.key,
    this.fit,
    this.scale,
    this.horizontal = 0.0,
    this.vertical = 0.0,
    this.boxFit,
    this.height,
    this.width,
  });

  @override
  State<CustomImage> createState() => _CustomImageState();
}

class _CustomImageState extends State<CustomImage> {
  late Widget imageWidget;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    if(widget.imageSrc.endsWith('svg')){
      imageWidget = SvgPicture.asset(
        widget.imageSrc,
        // ignore: deprecated_member_use
        color: widget.imageColor,
        height: widget.height,
        width: widget.width,
        fit: widget.boxFit ?? BoxFit.cover,
      );
    }

    /* if (widget.imageType == ImageType.svg) {
      imageWidget = SvgPicture.asset(
        widget.imageSrc,
        // ignore: deprecated_member_use
        color: widget.imageColor,
        height: widget.height,
        width: widget.width,
        fit: widget.boxFit ?? BoxFit.cover,
      );
    }*/

    if (widget.imageSrc.endsWith('png')) {
      imageWidget = Image.asset(
        fit: widget.fit,
        widget.imageSrc,
        color: widget.imageColor,
        height: widget.height,
        width: widget.width,
        scale: widget.scale ?? 1,
      );
    }

    return Container(
        margin: EdgeInsets.symmetric(
            horizontal: widget.horizontal, vertical: widget.vertical),
        width: widget.sizeWidth,
        child: imageWidget);
  }
}
