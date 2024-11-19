

import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();
  @override
  List<Object> get props=>[];
  }

class FeaturedBooksInitial extends FeaturedBooksState{}
class FeaturedBooksLoading extends FeaturedBooksState{}
class FeaturedBooksSuccess extends FeaturedBooksState{
  final List<BookModel> books;

 const FeaturedBooksSuccess(this.books);
}
class FeaturedBooksFailure extends FeaturedBooksState{
  final String errMessage;

const  FeaturedBooksFailure(this.errMessage);
}