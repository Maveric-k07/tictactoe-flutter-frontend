import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketClient {
  // String ip = 'http://192.168.0.103:3000';
  IO.Socket? socket;
  static SocketClient? _instance;

  SocketClient._internal() {
    socket =
        IO.io('https://secret-wildwood-79314.herokuapp.com/', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });
    socket!.connect();
  }

  static SocketClient get instance {
    _instance ??= SocketClient._internal();
    return _instance!;
  }
}
