import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';

abstract class MediaDecorator {
  const MediaDecorator();

  UniqueId<String?> get id;
  MediaField get url;
  AttachmentMime get mime;
  MediaField get streamUrl;
  DateTime? get stopShowingAt;
  DateTime? get createdAt;
  DateTime? get updatedAt;
}
