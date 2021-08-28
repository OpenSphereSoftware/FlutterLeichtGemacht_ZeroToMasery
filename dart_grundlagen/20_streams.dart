import 'dart:async';

void main() {

  Stream numberStream = NumberGenerator().getStream.asBroadcastStream();
  //! broadcast -> ermöglicht mehrere subscriber
  StreamSubscription sub1 = numberStream.listen((event) {
    print(event);
  }, 
  onDone: () {},        //! was soll passieren wenn stream geschlossen
  onError: (error) {},  //! was soll bei einem error passieren
  cancelOnError: false  //! hey ich will nach einen error weiter zuhören
  );
  /* sub1.pause(); //!pause
  sub1.resume(); //!weiter
  sub1.cancel(); //! subscription beenden */


  StreamSubscription sub2 = numberStream.listen((event) {
    print("sub2  :  $event");
  });

 
}

class NumberGenerator {
  int _counter = 0;

  StreamController<int> _controller = StreamController<int>();

  Stream<int> get getStream => _controller.stream;

  NumberGenerator() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _controller.sink.add(_counter);

      _counter++;
    });
  }
}
