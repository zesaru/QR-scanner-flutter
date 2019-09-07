import 'package:flutter/widgets.dart';
import 'package:qrreaderapp/src/providers/db_provider.dart';
import 'package:url_launcher/url_launcher.dart';

abrisScan(BuildContext context, ScanModel scan) async {
  if (scan.tipo == 'http') {
    if (await canLaunch(scan.valor)) {
      await launch(scan.valor);
    } else {
      throw 'Could not launch $scan.valor';
    }
  } else {
    Navigator.pushNamed(context, 'mapa', arguments: scan);
  }
}
