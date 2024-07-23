For example:



abstract class IHomeRepository {
  Future<CategoryModel?> getCategory();

}

class HomeRepository with DioUtility implements IHomeRepository {

  @override
  Future<CategoryModel?> getCategory() async {
    final response = await fetchSingleData(
      interceptor: DioIntercepter(),
      dioEnums: DioEnums.CATEGORY,
      model: CategoryModel(),
    );
    return response;
  }
 ....


}

