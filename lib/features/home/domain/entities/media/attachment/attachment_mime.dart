library attachment_mime.dart;

import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as p;
import 'package:amatrider/utils/utils.dart';

part 'attachment_mime.gen.dart';

enum AttachmentType { video, image, document, unknown }

class AttachmentMime {
  static const AttachmentMime avi = _$avi;
  static const AttachmentMime csv = _$csv;
  // Document mime types
  static const AttachmentMime doc = _$doc;

  static const AttachmentMime docx = _$docx;
  static const AttachmentMime f4v = _$f4v;
  static const AttachmentMime flv = _$flv;
  static const AttachmentMime gif = _$gif;
  static const AttachmentMime jpeg = _$jpeg;
  static const AttachmentMime jpg = _$jpg;
  static const AttachmentMime mkv = _$mkv;
  static const AttachmentMime mov = _$mov;
  // Video mime types
  static const AttachmentMime mp4 = _$mp4;

  static const AttachmentMime pdf = _$pdf;
  // Image mime types
  static const AttachmentMime png = _$png;

  // Unknown mime types
  static const AttachmentMime unknown = _$unknown;

  static const AttachmentMime webm = _$webm;
  static const AttachmentMime xlsx = _$xlsx;

  final String name;

  const AttachmentMime._(this.name);

  bool get isDocument => this == doc || this == docx || this == pdf || this == csv || this == xlsx;
  bool get isImage => this == png || this == jpeg || this == jpg || this == gif;
  bool get isVideo => this == mp4 || this == mov || this == avi || this == flv || this == f4v || this == mkv || this == webm;

  AttachmentType get type => isDocument
      ? AttachmentType.document
      : isImage
          ? AttachmentType.image
          : isVideo
              ? AttachmentType.video
              : AttachmentType.unknown;

  static AttachmentMime valueOf(String name) => _$valueOf(name);

  static AttachmentMime lookupFromFile(File file) {
    final mime = p.extension(file.path).erase(['.']);
    return AttachmentMime.valueOf(mime);
  }

  static AttachmentType lookupTypeFromFile(File file) {
    final type = lookupFromFile(file);

    if (type.isImage) {
      return AttachmentType.image;
    } else if (type.isDocument) {
      return AttachmentType.document;
    } else if (type.isVideo) {
      return AttachmentType.video;
    } else {
      return AttachmentType.unknown;
    }
  }

  static AttachmentMime lookupFromFileName(String fileName) {
    final mime = p.extension(fileName).erase(['.']);
    return AttachmentMime.valueOf(mime);
  }

  static AttachmentMime fromMime(String? name) {
    switch (name) {
      case 'application/msword':
        return AttachmentMime.doc;
      case 'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
        return AttachmentMime.docx;
      case 'application/pdf':
        return AttachmentMime.pdf;
      case 'text/csv':
        return AttachmentMime.csv;
      case 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
        return AttachmentMime.xlsx;
      case 'image/png':
        return AttachmentMime.png;
      case 'image/jpeg':
        return AttachmentMime.jpeg;
      case 'image/gif':
        return AttachmentMime.gif;
      case 'video/mp4':
        return AttachmentMime.mp4;
      case 'video/quicktime':
        return AttachmentMime.mov;
      case 'video/x-msvideo':
        return AttachmentMime.avi;
      case 'video/x-flv':
        return AttachmentMime.flv;
      case 'video/x-f4v':
        return AttachmentMime.f4v;
      case 'video/x-matroska':
        return AttachmentMime.mkv;
      case 'video/webm':
        return AttachmentMime.webm;
      default:
        return AttachmentMime.unknown;
    }
  }
}

class AttachmentMimeSerializer implements JsonConverter<AttachmentMime?, String?> {
  const AttachmentMimeSerializer();

  @override
  AttachmentMime fromJson(String? value) => AttachmentMime.fromMime(value);

  @override
  String? toJson(AttachmentMime? instance) => instance?.mime;
}

extension AttachmentMimeExt on AttachmentMime {
  T? fold<T>({
    T Function()? image,
    T Function()? document,
    T Function()? video,
    T Function()? unknown,
  }) {
    switch (this) {
      case AttachmentMime.png:
      case AttachmentMime.jpg:
      case AttachmentMime.jpeg:
      case AttachmentMime.gif:
        return image?.call();
      case AttachmentMime.doc:
      case AttachmentMime.docx:
      case AttachmentMime.pdf:
      case AttachmentMime.csv:
      case AttachmentMime.xlsx:
        return document?.call();
      case AttachmentMime.mp4:
      case AttachmentMime.mov:
      case AttachmentMime.avi:
      case AttachmentMime.flv:
      case AttachmentMime.f4v:
      case AttachmentMime.mkv:
      case AttachmentMime.webm:
        return video?.call();
      default:
        return unknown?.call();
    }
  }
}

extension AttachmentMimeX on AttachmentMime {
  String get mime {
    switch (this) {
      case AttachmentMime.doc:
        return 'application/msword';
      case AttachmentMime.docx:
        return 'application/vnd.openxmlformats-officedocument.wordprocessingml.document';
      case AttachmentMime.pdf:
        return 'application/pdf';
      case AttachmentMime.csv:
        return 'text/csv';
      case AttachmentMime.xlsx:
        return 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet';
      case AttachmentMime.png:
        return 'image/png';
      case AttachmentMime.jpg:
      case AttachmentMime.jpeg:
        return 'image/jpeg';
      case AttachmentMime.gif:
        return 'image/gif';
      case AttachmentMime.mp4:
        return 'video/mp4';
      case AttachmentMime.mov:
        return 'video/quicktime';
      case AttachmentMime.avi:
        return 'video/x-msvideo';
      case AttachmentMime.flv:
        return 'video/x-flv';
      case AttachmentMime.f4v:
        return 'video/x-f4v';
      case AttachmentMime.mkv:
        return 'video/x-matroska';
      case AttachmentMime.webm:
        return 'video/webm';
      default:
        return 'application/octet-stream';
    }
  }
}

extension AttachmentTypeX on AttachmentType {
  T when<T>({
    required T Function() image,
    required T Function() document,
    required T Function() video,
    required T Function() unknown,
  }) {
    switch (this) {
      case AttachmentType.image:
        return image.call();
      case AttachmentType.document:
        return document.call();
      case AttachmentType.video:
        return video.call();
      case AttachmentType.unknown:
        return unknown.call();
    }
  }

  T maybeWhen<T>({
    T Function()? image,
    T Function()? document,
    T Function()? video,
    T Function()? unknown,
    required T Function() orElse,
  }) {
    switch (this) {
      case AttachmentType.image:
        return image?.call() ?? orElse.call();
      case AttachmentType.document:
        return document?.call() ?? orElse.call();
      case AttachmentType.video:
        return video?.call() ?? orElse.call();
      case AttachmentType.unknown:
        return unknown?.call() ?? orElse.call();
    }
  }
}
