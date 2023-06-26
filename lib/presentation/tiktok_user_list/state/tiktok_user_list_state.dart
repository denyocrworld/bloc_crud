import 'package:freezed_annotation/freezed_annotation.dart';
part 'tiktok_user_list_state.freezed.dart';

@unfreezed
class TiktokUserListState with _$TiktokUserListState {
  factory TiktokUserListState({
    @Default(0) int counter,
  }) = _TiktokUserListState;
}
