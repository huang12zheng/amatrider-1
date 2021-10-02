part of 'modules.dart';

class _HttpClients {
  static final BaseOptions _options = BaseOptions(
    baseUrl: env.baseUri.toString(),
    contentType: 'application/json',
    headers: {'Accept': 'application/json'},
  );

  static List<Interceptor> get interceptors {
    var interceptors = <Interceptor>[];

    final cacheOptions = CacheOptions(
      // A default store is required for interceptor.
      store: MemCacheStore(),
      // Default.
      policy: CachePolicy.request,
      // Optional. Returns a cached response on error but for statuses 401 & 403.
      hitCacheOnErrorExcept: [401, 403],
      // Optional. Overrides any HTTP directive to delete entry past this duration.
      maxStale: const Duration(days: 14),
      // Default. Allows 3 cache sets and ease cleanup.
      priority: CachePriority.normal,
      // Default. Key builder to retrieve requests.
      keyBuilder: CacheOptions.defaultCacheKeyBuilder,
      // Default. Allows to cache POST requests.
      // Overriding [keyBuilder] is strongly recommended.
      allowPostMethod: false,
    );

    // Attach cache interceptor
    interceptors.add(DioCacheInterceptor(options: cacheOptions));

    // if (env.flavor == BuildFlavor.dev)
    interceptors.add(
      PrettyDioLogger(
        request: false,
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 100,
      ),
    );

    interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        // final result = getIt<AccessTokenManager>().get();
        // options.headers.putIfAbsent(
        //   'Authorization',
        //   () => result.accessToken.getOrEmpty,
        // );
        // return handler.next(options);
      },
    ));

    return interceptors;
  }

  static AppHttpClient _clientv2() {
    var client = AppHttpClient(
      client: _dio(),
      mapper: AppHttpResponse.fromDioResponse,
    );

    client.options.connectTimeout = 16000;

    client.options.receiveTimeout = 16000;

    client.interceptors.addAll(interceptors);

    return client;
  }

  static Dio _dio() {
    var dio = Dio(_options);

    dio.options.connectTimeout = 16000;

    dio.options.receiveTimeout = 16000;

    dio.interceptors.addAll(interceptors);

    return dio;
  }
}
