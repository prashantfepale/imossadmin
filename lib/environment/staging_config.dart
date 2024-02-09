import 'environment.dart';
import 'base_config.dart';

class StagingConfig implements BaseConfig {
  @override
  String get apiClient => 'MOBILE';

  @override
  String get env => Environment.STAGING;

  @override
  String get baseurl => '';

  @override
  String get defaultToken => '';

  @override
  bool get reportErrors => false;

  @override
  int get timeout => 1;
}
