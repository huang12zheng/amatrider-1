library laravel_echo_repository.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:injectable/injectable.dart';
import 'package:laravel_echo/laravel_echo.dart';
import 'package:pusher_client/pusher_client.dart';

@injectable
class LaravelEchoRepository {
  dynamic channel;
  Echo? echo;

  final PusherClient _pusher;

  LaravelEchoRepository(this._pusher);

  Echo _init() {
    // Initialize Laravel Echo
    if (echo == null)
      echo = Echo(
        broadcaster: EchoBroadcasterType.Pusher,
        client: _pusher,
      )..connector.pusher.onConnectionStateChange((state) {
          print(state!.currentState.toString());
        });
    else
      echo!.connect();

    return echo!;
  }

  LaravelEchoRepository private(
    String? channelName,
    String? event, {
    void Function()? onInit,
    void Function(PusherEvent?)? onListen,
    required void Function(String, LaravelEchoRepository) onData,
  }) {
    if (event == null) throw Exception('Event cannot be null!');

    // Creates an instance of Echo or resuse previous instance with a new connection
    if (echo == null) _init();

    // Leave the current channel if already listening
    leave(channelName);

    // Echo initialized
    onInit?.call();

    // Listen for webhook event from channel
    channel = channelName?.let(
      (it) => echo?.private(it).listen(event, (e) {
        // Started listening
        onListen?.call(e is PusherEvent ? e : null);
        // On data received
        if (e is PusherEvent && e.data != null) onData.call(e.data!, this);
      }),
    );

    return this;
  }

  void stopListening(String channelName, String event) {
    echo?.channel(channelName).stopListening(event);
  }

  void leave(String? channelName) {
    // Leave the given channel.
    channelName?.let((it) => echo?.leaveChannel(it));
    // Leave the given channel, as well as its private and presence variants.
    channelName?.let((it) => echo?.leave(it));
  }

  void close(String? channelName, {bool nullify = false}) async {
    leave(channelName);
    // Disconnect from the Echo server.
    echo?.disconnect();
    if (nullify) {
      echo = null;
      channel = null;
    }
  }
}
