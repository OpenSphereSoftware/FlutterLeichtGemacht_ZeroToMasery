import 'dart:io';

void main() async {
  DataFetcher fetcher = DataFetcher();
  parallelTask();
  String data = await fetcher.getData();
  print(data);
}

// um wirklich parallelität zu demonstrieren habe ich hier noch eine Funktion gebaut
void parallelTask() async {
  for (int i = 0; i < 100; i++) {
    await Future.delayed(Duration(seconds: 1));
    print(i);
  }
}

class DataFetcher {
  Future<String> _getDataFromCloud() async {
    // get data from cloud
    // sleep hällt das programm auf   Future delayed stoppt nur die spezifische Funktion
    await Future.delayed(Duration(seconds: 4));
    print("get finished");
    return "data from Cloud";
  }

  Future<String> _parseDataFromCloud({required String cloudData}) async {
    // parse cloud data
    await Future.delayed(Duration(seconds: 2));
    print("data parsing finished");
    return "parsed Data";
  }

  Future<String> getData() async {
    String _cloudDataRaw = await _getDataFromCloud();
    String _parsedData = await _parseDataFromCloud(cloudData: _cloudDataRaw);

    //? alternative schreibweise :
    /* 
    String _parsedData = await _getDataFromCloud().then((_cloudDataRaw) async {
      return await _parseDataFromCloud(cloudData: _cloudDataRaw);
    });
    */

    return _parsedData;
  }
}
