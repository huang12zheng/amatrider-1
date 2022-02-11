library laravel_echo_repository.dart;

import 'package:amatrider/features/auth/data/repositories/access_token/access_token_manager.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:injectable/injectable.dart';
import 'package:laravel_echo/laravel_echo.dart';
import 'package:pusher_client/pusher_client.dart';

enum EchoChannel { private, public }

@injectable
class EchoRepository {
  dynamic _channel;
  Echo? echo;

  final AccessTokenManager _accessTokenManager;

  EchoRepository._(this._accessTokenManager);

  @factoryMethod
  factory EchoRepository.initialize(AccessTokenManager _manager) => EchoRepository._(_manager);

  EchoRepository __channel(
    String? channelName, {
    void Function()? onInit,
    EchoChannel type = EchoChannel.private,
  }) {
    if (echo == null) {
      final url = env.pusherAuthUrl + '?token=${_accessTokenManager.raw().accessToken.getOrEmpty}';

      final _options = PusherOptions(
        cluster: env.pusherCluster,
        encrypted: false,
        maxReconnectionAttempts: 20,
        maxReconnectGapInSeconds: 10,
        auth: PusherAuth(
          url,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': '${_accessTokenManager.get().accessToken.getOrEmpty}',
          },
        ),
      );

      final _pusher = PusherClient(env.pusherKey, _options, autoConnect: false, enableLogging: true);

      // Initialize Laravel Echo
      echo = Echo(
        broadcaster: EchoBroadcasterType.Pusher,
        client: _pusher,
      )..connector.pusher.onConnectionStateChange((state) {
          print(state!.currentState.toString());
        });
    }

    // Echo initialized
    onInit?.call();

    switch (type) {
      case EchoChannel.private:
        _channel = channelName?.let((it) => echo?.private(it));
        break;
      case EchoChannel.public:
        _channel = channelName?.let((it) => echo?.channel(it));
        break;
      default:
    }

    if (_channel == null) throw Exception('Channel name cannot be null!');

    return this;
  }

  EchoRepository listen(
    String? event, {
    void Function(PusherEvent?)? onListen,
    required void Function(String, EchoRepository) onData,
  }) {
    assert(event != null, 'Event cannot be null!');

    if (_channel != null) {
      _channel.listen(event, (e) {
        // Started listening
        onListen?.call(e is PusherEvent ? e : null);
        // On data received
        if (e is PusherEvent && e.data != null) onData.call(e.data!, this);
      });
    }

    return this;
  }

  EchoRepository public(
    String? channelName,
    String? event, {
    void Function()? onInit,
    void Function(PusherEvent?)? onListen,
    required void Function(String, EchoRepository) onData,
  }) {
    return __channel(
      channelName,
      onInit: onInit,
      type: EchoChannel.public,
    ).listen(event, onData: onData, onListen: onListen);
  }

  EchoRepository private(
    String? channelName,
    String? event, {
    void Function()? onInit,
    void Function(PusherEvent?)? onListen,
    required void Function(String, EchoRepository) onData,
  }) {
    return __channel(
      channelName,
      onInit: onInit,
      type: EchoChannel.private,
    ).listen(event, onData: onData, onListen: onListen);
  }

  EchoRepository notification(
    String? channelName, {
    void Function()? onInit,
    void Function(PusherEvent?)? onListen,
    required void Function(String, EchoRepository) onData,
  }) {
    __channel(channelName, onInit: onInit)._channel.notification((e) {
      // Started listening
      onListen?.call(e is PusherEvent ? e : null);
      // On data received
      if (e is PusherEvent && e.data != null) onData.call(e.data!, this);
    });

    return this;
  }

  void stopListening(String channelName, String event) {
    echo?.channel(channelName).stopListening(event);
  }

  void leaveChannel(String? channelName, {String? event, bool? listen}) {
    final _stopListening = listen ?? event != null;

    assert(
      (_stopListening && event != null) || (!_stopListening && event == null) || (!_stopListening && event != null),
      'The event cannot be null!',
    );

    if (_stopListening) channelName?.let((it) => stopListening(it, event!));
    // Leave the given channel.
    channelName?.let((it) => echo?.leaveChannel(it));
  }

  void leave(String? channelName, {String? event, bool? listen}) {
    final _stopListening = listen ?? event != null;

    assert(
      (_stopListening && event != null) || (!_stopListening && event == null) || (!_stopListening && event != null),
      'The event cannot be null!',
    );

    if (_stopListening) channelName?.let((it) => stopListening(it, event!));

    // Leave the given channel, as well as its private and presence variants.
    channelName?.let((it) => echo?.leave(it));

    // Leave the given channel.
    channelName?.let((it) => echo?.leaveChannel(it));
  }

  void close(String? channelName, {String? event, bool? listen}) async {
    leave(channelName);
    // Disconnect from the Echo server.
    echo?.disconnect();
    echo = null;
    _channel = null;
  }
}
