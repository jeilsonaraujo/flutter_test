import 'package:flutter/widgets.dart';

class RTImageNetwork {
  Widget build({required String location, required Widget errorWidget}) {
    return Image.network(fit: BoxFit.cover, location, errorBuilder: (_, __, ___) => errorWidget);
  }
}
