part of 'blog_bloc.dart';

@immutable
sealed class BlogEvent {}

final class BlogUpload extends BlogEvent {
  final String posterId;
  final String content;
  final String title;
  final File image;
  final List<String> topics;

  BlogUpload({
    required this.posterId,
    required this.content,
    required this.title,
    required this.image,
    required this.topics,
  });
}


final class BlogFetchAllBlogs extends BlogEvent{}