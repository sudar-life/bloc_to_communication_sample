import 'dart:async';

class LicenseRepository {
  StreamController<bool> changeLicenseStatus =
      StreamController<bool>.broadcast();
  late Stream<bool> stream;
  LicenseRepository() {
    stream = changeLicenseStatus.stream;
  }
  Future<bool> buyLicense() async {
    await Future.delayed(Duration(milliseconds: 800));
    changeLicenseStatus.sink.add(true);
    return true;
  }
}
