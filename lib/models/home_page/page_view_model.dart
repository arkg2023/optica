class PageViewModel {
  PageViewModel({
    required this.image,
    required this.title,
    required this.text,
  });
  final String image;
  final String title;
  final String text;
}

final firstPage = PageViewModel(
    image: 'assets/images/photo.png',
    title: 'bhjbfjkfkudfcg',
    text:
        'Lorem Ipsum is simply dummy text \nof the printing and typesetting industry');
final secondPage = PageViewModel(
    image: 'assets/images/photo.png',
    title: '',
    text:
        'Lorem Ipsum is simply dummy text \nof the printing and typesetting industry');

// List<PageViewModel> pages = [firstPage, secondPage];
