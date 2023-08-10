class FavItems {
  static List<Map<String, dynamic>> allFavItems = [];

  void addFavItems(
      String title, String description, double price, var imageLink) {
    Map<String, dynamic> favItem = {
      'title': title,
      'description': description,
      'price': price,
      'imageLink': imageLink,
    };
    allFavItems.add(favItem);
  }

  Map<String, dynamic> getFavItem(int index) {
    return allFavItems[index];
  }

  void removeFavItems(String title) {
    allFavItems.removeWhere((item) => item['title'] == title);
  }
}
