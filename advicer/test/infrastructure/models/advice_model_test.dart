

import 'dart:convert';

import 'package:advicer/domain/entities/advice_Enitity.dart';
import 'package:advicer/infrastructure/models/advice_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/fixture_reader.dart';

void main(){

  final t_AdviceModel = AdviceModel(advice: "test", id: 1);

  test("model should be subclass of advice-entity", (){

    //assert
    expect(t_AdviceModel, isA<AdviceEntity>());
  });

  group("fromJson factory", (){

    test("should return a valid model if the JSON advice is correct", (){

      //arrange

      final Map<String,dynamic> jsonMap = json.decode(fixture("advice.json"));

      // act

      final result = AdviceModel.fromJson(jsonMap);

      //assert
      expect(result, t_AdviceModel);

    });
  });



}