import 'package:qrreaderapp/src/providers/db_provider.dart';
import 'package:url_launcher/url_launcher.dart';

abrisScan(ScanModel scan) async {
  if (scan.tipo == 'http') {
    if (await canLaunch(scan.valor)) {
      await launch(scan.valor);
    } else {
      throw 'Could not launch $scan.valor';
    }
  } else {
    print('GEO...');
  }
}
