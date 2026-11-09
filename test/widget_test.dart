import 'package:flutter_test/flutter_test.dart';
import 'package:belajarflutter/main.dart';

void main() {
  testWidgets('Memverifikasi tampilan Login Page pada halaman utama',
      (WidgetTester tester) async {
    // Bangun aplikasi dan jalankan 1 frame
    await tester.pumpWidget(const MyApp());

    // Verifikasi bahwa judul AppBar muncul
    expect(find.text('Login'), findsWidgets);
    expect(find.text('Masukkan Username'), findsOneWidget);
    expect(find.text('Masukkan Password'), findsOneWidget);
  });
}
