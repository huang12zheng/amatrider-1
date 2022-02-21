part of verification_cubit.dart;

enum DocumentMimeType { img, doc, pdf }

@freezed
class VerificationState extends BaseState with _$VerificationState {
  const factory VerificationState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    File? frontID,
    File? backID,
    DocumentMimeType? frontMimeType,
    DocumentMimeType? backMimeType,
    @Default(false) bool frontIsImage,
    @Default(false) bool backIsImage,
    required BasicTextField<String?> frontName,
    required BasicTextField<String?> backName,
    required BasicTextField<String?> frontSize,
    required BasicTextField<String?> backSize,
    DocumentID? documentID,
    Country? selectedCountry,
    @Default(KtList.empty()) KtList<Country> countries,
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _VerificationState;

  const VerificationState._();

  factory VerificationState.initial() => VerificationState(
        backName: BasicTextField(null),
        frontName: BasicTextField(null),
        frontSize: BasicTextField(null),
        backSize: BasicTextField(null),
      );
}

extension XDocumentMimeType on DocumentMimeType {
  T? fold<T>({
    T? img,
    T Function(DocumentMimeType)? doc,
  }) {
    switch (this) {
      case DocumentMimeType.img:
        return img;
      case DocumentMimeType.pdf:
      case DocumentMimeType.doc:
      default:
        return doc?.call(this);
    }
  }
}

class DocumentID {
  static const kdefault = DocumentID(
    name: 'Government-Issued ID Card',
    value: 'Government-Issued ID Card',
    icon: AmatNow.verify_govt_id,
    // isSelected: true,
  );

  static const List<DocumentID> values = [
    kdefault,
    DocumentID(
      name: 'International Passport',
      value: 'International Passport',
      icon: AmatNow.verify_passport,
    ),
    DocumentID(
      name: 'Driver’s License',
      value: 'Driver’s License',
      icon: AmatNow.verify_driver_license,
    ),
  ];

  final IconData icon;
  final String name;
  final String value;

  const DocumentID({
    required this.name,
    required this.value,
    required this.icon,
  });

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    return other is UniqueId && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
