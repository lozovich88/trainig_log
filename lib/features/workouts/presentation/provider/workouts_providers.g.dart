// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workouts_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$workoutsControllerHash() =>
    r'f2f2a6dc353ac5280516a34087134249e454161b';

/// See also [WorkoutsController].
@ProviderFor(WorkoutsController)
final workoutsControllerProvider =
    AutoDisposeAsyncNotifierProvider<
      WorkoutsController,
      UiState<List<TrainingDayEntity>>
    >.internal(
      WorkoutsController.new,
      name: r'workoutsControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$workoutsControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$WorkoutsController =
    AutoDisposeAsyncNotifier<UiState<List<TrainingDayEntity>>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
