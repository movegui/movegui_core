import 'package:flutter/widgets.dart';

abstract class StoreSubmitHadler<
  M extends EstablishmentModel,
  T extends ModelService<M>,
  S extends StoreFormController<M>,
  F extends FormService<M, S>

> {
  // <M extends Model, F extends FormController<M>>
  final T service;
  final ImageService imageService;
  final String collectionName;
  final F formService;
  final UserService userService;
  final BuildContext context;
  final EstablishmentMembersService establishmentMembersService;

  StoreSubmitHadler({
    required this.service,
    required this.imageService,
    required this.collectionName,
    required this.formService,
    required this.userService,
    required this.context,
    required this.establishmentMembersService,
  });

  Future<void> submit({required S form});
}
