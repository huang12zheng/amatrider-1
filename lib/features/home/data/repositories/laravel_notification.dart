library laravel_notification.dart;

import 'package:amatrider/features/auth/data/repositories/access_token/access_token_manager.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:injectable/injectable.dart';
import 'package:laravel_echo/laravel_echo.dart';
import 'package:pusher_client/pusher_client.dart';

@injectable
class EchoNotification {
  String? _channelName;
  final Echo? echo;

  EchoNotification._(this.echo);

  @factoryMethod
  factory EchoNotification.initialize(AccessTokenManager _manager) {
    var _options = PusherOptions(
      cluster: env.pusherCluster,
      encrypted: false,
      auth: PusherAuth(
        env.pusherAuthUrl,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': '${_manager.get().accessToken.getOrEmpty}',
        },
      ),
    );

    var _pusher = PusherClient(env.pusherKey, _options,
        autoConnect: false, enableLogging: true);

    // Initialize Laravel Echo
    var echo = Echo(
      broadcaster: EchoBroadcasterType.Pusher,
      client: _pusher,
    )..connector.pusher.onConnectionStateChange((state) {
        print(state!.currentState.toString());
      });

    return EchoNotification._(echo);
  }

  EchoNotification notification(
    String? channel, {
    void Function(PusherEvent?)? onListen,
    required void Function(String, EchoNotification) onData,
  }) {
    _channelName = channel;
    // Listen for webhook event from channel
    _channelName?.let(
      (it) => echo?.private(it).notification((e) {
        // Started listening
        onListen?.call(e is PusherEvent ? e : null);
        // On data received
        if (e is PusherEvent && e.data != null) onData.call(e.data!, this);
      }),
    );

    return this;
  }

  void leave(String? channelName) {
    // Leave the given channel.
    channelName?.let((it) => echo?.leaveChannel(it));
    // Leave the given channel, as well as its private and presence variants.
    channelName?.let((it) => echo?.leave(it));
  }

  void close() async {
    // Leave the given channel.
    leave(_channelName);
    // Disconnect from the Echo server.
    echo?.disconnect();
  }
}
