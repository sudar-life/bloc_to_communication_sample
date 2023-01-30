class ProductRepository {
  Future<List<String>> loadDefaultProduct() async {
    await Future.delayed(Duration(seconds: 1));
    return List.generate(10, (index) => 'default : $index');
  }

  Future<List<String>?> loadPayDefaultProduct(bool hasLicense) async {
    if (hasLicense) {
      await Future.delayed(Duration(milliseconds: 500));
      return List.generate(10, (index) => 'pay : $index');
    } else {
      return null;
    }
  }
}
