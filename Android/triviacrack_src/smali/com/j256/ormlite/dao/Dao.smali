.class public interface abstract Lcom/j256/ormlite/dao/Dao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableIterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/CloseableIterable",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract assignEmptyForeignCollection(Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TCT;>;)TCT;"
        }
    .end annotation
.end method

.method public abstract clearObjectCache()V
.end method

.method public abstract closeLastIterator()V
.end method

.method public abstract commit(Lcom/j256/ormlite/support/DatabaseConnection;)V
.end method

.method public abstract countOf()J
.end method

.method public abstract countOf(Lcom/j256/ormlite/stmt/PreparedQuery;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;)J"
        }
    .end annotation
.end method

.method public abstract create(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract createIfNotExists(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;"
        }
    .end annotation
.end method

.method public abstract delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedDelete",
            "<TT;>;)I"
        }
    .end annotation
.end method

.method public abstract delete(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract delete(Ljava/util/Collection;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)I"
        }
    .end annotation
.end method

.method public abstract deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/DeleteBuilder",
            "<TT;TID;>;"
        }
    .end annotation
.end method

.method public abstract deleteById(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)I"
        }
    .end annotation
.end method

.method public abstract deleteIds(Ljava/util/Collection;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TID;>;)I"
        }
    .end annotation
.end method

.method public abstract endThreadConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V
.end method

.method public varargs abstract executeRaw(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract executeRawNoArgs(Ljava/lang/String;)I
.end method

.method public abstract extractId(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TID;"
        }
    .end annotation
.end method

.method public abstract findForeignFieldType(Ljava/lang/Class;)Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/j256/ormlite/field/FieldType;"
        }
    .end annotation
.end method

.method public abstract getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;
.end method

.method public abstract getDataClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getEmptyForeignCollection(Ljava/lang/String;)Lcom/j256/ormlite/dao/ForeignCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/dao/ForeignCollection",
            "<TFT;>;"
        }
    .end annotation
.end method

.method public abstract getObjectCache()Lcom/j256/ormlite/dao/ObjectCache;
.end method

.method public abstract getRawRowMapper()Lcom/j256/ormlite/dao/RawRowMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RawRowMapper",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getSelectStarRowMapper()Lcom/j256/ormlite/stmt/GenericRowMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/GenericRowMapper",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getWrappedIterable()Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableWrappedIterable",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;)",
            "Lcom/j256/ormlite/dao/CloseableWrappedIterable",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract idExists(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)Z"
        }
    .end annotation
.end method

.method public abstract isAutoCommit()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;)Z
.end method

.method public abstract isTableExists()Z
.end method

.method public abstract isUpdatable()Z
.end method

.method public abstract iterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract iterator(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract iterator(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract iterator(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract mapSelectStarRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseResults;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public abstract query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation
.end method

.method public abstract queryForAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract queryForFieldValues(Ljava/util/Map;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract queryForFieldValuesArgs(Ljava/util/Map;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract queryForFirst(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract queryForId(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)TT;"
        }
    .end annotation
.end method

.method public abstract queryForMatching(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract queryForMatchingArgs(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract queryForSameId(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public varargs abstract queryRaw(Ljava/lang/String;Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UO:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/RawRowMapper",
            "<TUO;>;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults",
            "<TUO;>;"
        }
    .end annotation
.end method

.method public varargs abstract queryRaw(Ljava/lang/String;[Lcom/j256/ormlite/field/DataType;Lcom/j256/ormlite/dao/RawRowObjectMapper;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UO:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/DataType;",
            "Lcom/j256/ormlite/dao/RawRowObjectMapper",
            "<TUO;>;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults",
            "<TUO;>;"
        }
    .end annotation
.end method

.method public varargs abstract queryRaw(Ljava/lang/String;[Lcom/j256/ormlite/field/DataType;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/DataType;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract queryRawValue(Ljava/lang/String;[Ljava/lang/String;)J
.end method

.method public abstract refresh(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract rollBack(Lcom/j256/ormlite/support/DatabaseConnection;)V
.end method

.method public abstract setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
.end method

.method public abstract setAutoCommit(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setObjectCache(Lcom/j256/ormlite/dao/ObjectCache;)V
.end method

.method public abstract setObjectCache(Z)V
.end method

.method public abstract setObjectFactory(Lcom/j256/ormlite/table/ObjectFactory;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/ObjectFactory",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract startThreadConnection()Lcom/j256/ormlite/support/DatabaseConnection;
.end method

.method public abstract update(Lcom/j256/ormlite/stmt/PreparedUpdate;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedUpdate",
            "<TT;>;)I"
        }
    .end annotation
.end method

.method public abstract update(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/UpdateBuilder",
            "<TT;TID;>;"
        }
    .end annotation
.end method

.method public abstract updateId(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TID;)I"
        }
    .end annotation
.end method

.method public varargs abstract updateRaw(Ljava/lang/String;[Ljava/lang/String;)I
.end method
