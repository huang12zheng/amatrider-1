part of app_database.dart;

abstract class BaseDAO<U> {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertItem(U item);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertItems(List<U> items);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updateItem(U item);

  @delete
  Future<void> removeItem(U item);
}
