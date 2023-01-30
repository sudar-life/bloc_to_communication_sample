import 'package:bloc/bloc.dart';
import 'package:bloc_to_communication/src/bloc/product_bloc.dart';
import 'package:bloc_to_communication/src/repository/license_repository.dart';
import 'package:equatable/equatable.dart';

class LicenseBloc extends Bloc<LicenseEvent, LicenseState> {
  LicenseRepository _licenseRepository;
  LicenseBloc(this._licenseRepository) : super(LicenseState(false)) {
    on<BuyLicenseEvent>((event, emit) async {
      var result = await _licenseRepository.buyLicense();
      emit(LicenseState(result));
    });
  }
}

abstract class LicenseEvent extends Equatable {}

class BuyLicenseEvent extends LicenseEvent {
  @override
  List<Object?> get props => [];
}

class LicenseState extends Equatable {
  bool hasLicense;
  LicenseState(this.hasLicense);
  @override
  List<Object?> get props => [hasLicense];
}
