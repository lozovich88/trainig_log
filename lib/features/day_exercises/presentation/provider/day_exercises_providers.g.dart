// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_exercises_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dayExercisesControllerHash() =>
    r'1850b9285e3eac3b530613381726d32fe6edf902';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$DayExercisesController
    extends
        BuildlessAutoDisposeAsyncNotifier<
          UiState<List<TrainingExerciseEntity>>
        > {
  late final int dayId;

  FutureOr<UiState<List<TrainingExerciseEntity>>> build(int dayId);
}

/// See also [DayExercisesController].
@ProviderFor(DayExercisesController)
const dayExercisesControllerProvider = DayExercisesControllerFamily();

/// See also [DayExercisesController].
class DayExercisesControllerFamily
    extends Family<AsyncValue<UiState<List<TrainingExerciseEntity>>>> {
  /// See also [DayExercisesController].
  const DayExercisesControllerFamily();

  /// See also [DayExercisesController].
  DayExercisesControllerProvider call(int dayId) {
    return DayExercisesControllerProvider(dayId);
  }

  @override
  DayExercisesControllerProvider getProviderOverride(
    covariant DayExercisesControllerProvider provider,
  ) {
    return call(provider.dayId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'dayExercisesControllerProvider';
}

/// See also [DayExercisesController].
class DayExercisesControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          DayExercisesController,
          UiState<List<TrainingExerciseEntity>>
        > {
  /// See also [DayExercisesController].
  DayExercisesControllerProvider(int dayId)
    : this._internal(
        () => DayExercisesController()..dayId = dayId,
        from: dayExercisesControllerProvider,
        name: r'dayExercisesControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$dayExercisesControllerHash,
        dependencies: DayExercisesControllerFamily._dependencies,
        allTransitiveDependencies:
            DayExercisesControllerFamily._allTransitiveDependencies,
        dayId: dayId,
      );

  DayExercisesControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dayId,
  }) : super.internal();

  final int dayId;

  @override
  FutureOr<UiState<List<TrainingExerciseEntity>>> runNotifierBuild(
    covariant DayExercisesController notifier,
  ) {
    return notifier.build(dayId);
  }

  @override
  Override overrideWith(DayExercisesController Function() create) {
    return ProviderOverride(
      origin: this,
      override: DayExercisesControllerProvider._internal(
        () => create()..dayId = dayId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        dayId: dayId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    DayExercisesController,
    UiState<List<TrainingExerciseEntity>>
  >
  createElement() {
    return _DayExercisesControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DayExercisesControllerProvider && other.dayId == dayId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dayId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DayExercisesControllerRef
    on
        AutoDisposeAsyncNotifierProviderRef<
          UiState<List<TrainingExerciseEntity>>
        > {
  /// The parameter `dayId` of this provider.
  int get dayId;
}

class _DayExercisesControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          DayExercisesController,
          UiState<List<TrainingExerciseEntity>>
        >
    with DayExercisesControllerRef {
  _DayExercisesControllerProviderElement(super.provider);

  @override
  int get dayId => (origin as DayExercisesControllerProvider).dayId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
