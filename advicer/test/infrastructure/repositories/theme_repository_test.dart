

import 'package:advicer/domain/failures/failures.dart';
import 'package:advicer/domain/reposetories/theme_repositroy.dart';
import 'package:advicer/infrastructure/datasources/theme_local_datasource.dart';
import 'package:advicer/infrastructure/exceptions/exceptions.dart';
import 'package:advicer/infrastructure/repositories/theme_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'theme_repository_test.mocks.dart';

@GenerateMocks([ThemeLocalDatasource])
void main (){

  late MockThemeLocalDatasource mockThemeLocalDatasource;
  late ThemeRepository themeRepository;

  setUp((){
    mockThemeLocalDatasource = MockThemeLocalDatasource();
    themeRepository = ThemeRespositoryImpl(themeLocalDatasource: mockThemeLocalDatasource);
  });

  group("getThemeMode", (){
     final t_themeMode = true;

     test("should return theme mode if cached data is present", ()async{
       // arrange
       when(mockThemeLocalDatasource.getCachedThemeData()).thenAnswer((_) async => t_themeMode);

       // act
       final result = await themeRepository.getThemeMode();

       // assert
       expect(result, Right(t_themeMode));
       verify(mockThemeLocalDatasource.getCachedThemeData());
       verifyNoMoreInteractions(mockThemeLocalDatasource);

     });

     test("should return CacheFailure if local datasource throws a chache exeption", ()async{
       // arrange
       when(mockThemeLocalDatasource.getCachedThemeData()).thenThrow(CacheException());

       // act
       final result = await themeRepository.getThemeMode();

       // assert
       expect(result, Left(CacheFailure()));
       verify(mockThemeLocalDatasource.getCachedThemeData());
       verifyNoMoreInteractions(mockThemeLocalDatasource);

     });

  });


  group("setThemeMode", (){

    final t_themeMode = true;

    test("should call function to chache theme mode in local datasource", (){


      //arrange
      when(mockThemeLocalDatasource.cacheThemeData(mode: anyNamed("mode"))).thenAnswer((_) async => true);

      // act
      themeRepository.setThemeMode(mode: t_themeMode);

      // assert
      verify(mockThemeLocalDatasource.cacheThemeData(mode: t_themeMode));
    });
  });





}