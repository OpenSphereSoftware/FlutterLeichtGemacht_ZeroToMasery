import 'dart:io';

void main() async {
  DataFetcher fetcher = DataFetcher();

  String data = await fetcher.getData();

  print(data);
}

class DataFetcher {
  Future<String> _getDataFromCloud() async {
    // get data from cloud
    sleep(Duration(seconds: 6));
    print("get finished");
    return "data from Cloud";
  }

  Future<String> _parseDataFromCloud({required String cloudData}) async {
    // parse cloud data
    sleep(Duration(seconds: 2));
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
