part of 'news_cubit.dart';

abstract class NewsState extends Equatable {
  const NewsState();
}

class NewsInitial extends NewsState {
  @override
  List<Object> get props => [];
}
class EgyptNewsGetDataErrorState extends NewsState {
  final String msg;

  const EgyptNewsGetDataErrorState(this.msg);
  @override
  List<Object> get props => [msg];
}
class EgyptNewsGetDataSuccessState extends NewsState {
 final List<EgyptNews>egyptNews;

  const EgyptNewsGetDataSuccessState(this.egyptNews);
  @override
  List<Object> get props => [egyptNews];
}
class BbcNewsGetDataErrorState extends NewsState {
  final String msg;

  const BbcNewsGetDataErrorState(this.msg);
  @override
  List<Object> get props => [msg];
}
class BbcNewsGetDataSuccessState extends NewsState {
 final List<BbcNews>bbcNews;

  const BbcNewsGetDataSuccessState(this.bbcNews);
  @override
  List<Object> get props => [bbcNews];
}
class TheNextWebNewsGetDataErrorState extends NewsState {
  final String msg;

  const TheNextWebNewsGetDataErrorState(this.msg);
  @override
  List<Object> get props => [msg];
}
class TheNextWebNewsGetDataSuccessState extends NewsState {
 final List<TheNextWeb>theNextWebNews;

  const TheNextWebNewsGetDataSuccessState(this.theNextWebNews);
  @override
  List<Object> get props => [theNextWebNews];
}
