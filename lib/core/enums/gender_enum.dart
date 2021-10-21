enum Gender { male, female, other, unknown }

extension GenderExtension on Gender {
  int get getGenderCode {
    switch (this) {
      case Gender.unknown:
        return 0;
      case Gender.male:
        return 1;
      case Gender.female:
        return 2;
      case Gender.other:
        return 3;
      default:
        return 0;
    }
  }
}
