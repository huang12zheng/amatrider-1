import 'package:amatrider/features/auth/data/repositories/access_token/access_token_manager.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:injectable/injectable.dart';
import 'package:pusher_client/pusher_client.dart';

@module
abstract class PusherModule {
  static final PusherOptions _options = PusherOptions(
    cluster: env.pusherCluster,
    encrypted: false,
    auth: PusherAuth(
      env.pusherAuthUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization':
            '${getIt<AccessTokenManager>().get().accessToken.getOrEmpty}',
      },
    ),
  );

  @lazySingleton
  PusherClient get pusher => PusherClient(env.pusherKey, _options,
      autoConnect: false, enableLogging: true)
    ..onConnectionError((error) {
      print(error?.code);
      print(error?.exception);
      print(error?.message);
    });
}
