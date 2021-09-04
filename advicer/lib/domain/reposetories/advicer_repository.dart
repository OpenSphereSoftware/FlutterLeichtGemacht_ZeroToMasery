

import 'package:advicer/domain/entities/advice_Enitity.dart';

abstract class AdvicerRepository {

  Future<AdviceEntity> getAdviceFromApi();
}