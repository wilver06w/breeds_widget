part of 'bloc.dart';

abstract class CardFavoriteState extends Equatable {
  final Model model;
  const CardFavoriteState(this.model);

  @override
  List<Object?> get props => [model];
}

class InitialState extends CardFavoriteState {
  const InitialState(super.model);
}

class ChangedQuantityState extends CardFavoriteState {
  const ChangedQuantityState(super.model);
}

class Model extends Equatable {
  const Model({
    required this.quantity,
  });

  final int quantity;

  Model copyWith({
    int? quantity,
  }) {
    return Model(
      quantity: quantity ?? this.quantity,
    );
  }

  @override
  List<Object?> get props {
    return [quantity];
  }
}
