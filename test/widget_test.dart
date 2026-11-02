import 'package:flutter_test/flutter_test.dart';
import 'package:belajarflutter/main.dart';

void main() {
  testWidgets('Memverifikasi tampilan List Data Produk pada halaman utama',
      (WidgetTester tester) async {
    // Bangun aplikasi dan jalankan 1 frame
    await tester.pumpWidget(const MyApp());

    // Verifikasi bahwa judul AppBar muncul
    expect(find.text('List Data Produk'), findsOneWidget);

    // Verifikasi bahwa data ketiga produk dan harganya muncul
    expect(find.text('Kulkas'), findsOneWidget);
    expect(find.text('Playstation'), findsOneWidget);
    expect(find.text('Radio'), findsOneWidget);
    expect(find.text('30000'), findsNWidgets(3));
  });
}
