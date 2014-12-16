.class public Lcom/j256/ormlite/dao/LazyForeignCollection;
.super Lcom/j256/ormlite/dao/BaseForeignCollection;
.source "SourceFile"

# interfaces
.implements Lcom/j256/ormlite/dao/ForeignCollection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/dao/BaseForeignCollection",
        "<TT;TID;>;",
        "Lcom/j256/ormlite/dao/ForeignCollection",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4bc855175671af79L


# instance fields
.field private transient lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct/range {p0 .. p6}, Lcom/j256/ormlite/dao/BaseForeignCollection;-><init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;Z)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/j256/ormlite/dao/LazyForeignCollection;I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/LazyForeignCollection;->seperateIteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method private seperateIteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal DAO object is null.  Lazy collections cannot be used if they have been deserialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->getPreparedQuery()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/j256/ormlite/dao/Dao;->iterator(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public closeLastIterator()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    .line 99
    :cond_0
    return-void
.end method

.method public closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->closeableIterator(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public closeableIterator(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not build lazy iterator for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v1

    .line 139
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 147
    :try_start_1
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    :goto_0
    return v0

    .line 144
    :cond_1
    const/4 v0, 0x0

    .line 147
    :try_start_2
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    :try_start_3
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    .line 150
    :goto_1
    throw v0

    .line 148
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 156
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v1

    .line 158
    :goto_0
    :try_start_0
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    .line 164
    :try_start_1
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    :goto_1
    throw v0

    .line 161
    :cond_0
    :try_start_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 164
    :try_start_3
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 167
    :goto_2
    return v0

    .line 165
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 291
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getWrappedIterable()Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableWrappedIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->getWrappedIterable(I)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedIterable(I)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableWrappedIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;

    new-instance v1, Lcom/j256/ormlite/dao/LazyForeignCollection$1;

    invoke-direct {v1, p0, p1}, Lcom/j256/ormlite/dao/LazyForeignCollection$1;-><init>(Lcom/j256/ormlite/dao/LazyForeignCollection;I)V

    invoke-direct {v0, v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;-><init>(Lcom/j256/ormlite/dao/CloseableIterable;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 304
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEager()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v1

    .line 126
    :try_start_0
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 129
    :goto_0
    :try_start_1
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    :goto_1
    return v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    :try_start_2
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 132
    :goto_2
    throw v0

    .line 130
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public iterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->closeableIterator(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/LazyForeignCollection;->closeableIterator(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iteratorThrow()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/LazyForeignCollection;->seperateIteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    .line 72
    iget-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    return-object v0
.end method

.method public refreshAll()I
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call updateAll() on a lazy collection."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refreshCollection()I
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v1

    .line 175
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    const/4 v0, 0x1

    .line 184
    :try_start_1
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    :goto_0
    return v0

    .line 181
    :cond_1
    const/4 v0, 0x0

    .line 184
    :try_start_2
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    :try_start_3
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    .line 187
    :goto_1
    throw v0

    .line 185
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v1

    .line 196
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    :goto_1
    return v0

    .line 204
    :catchall_0
    move-exception v0

    .line 205
    :try_start_2
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 208
    :goto_2
    throw v0

    .line 206
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public size()I
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v1

    .line 109
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->moveToNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :goto_1
    return v0

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    :try_start_2
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 119
    :goto_2
    throw v0

    .line 117
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v1

    .line 216
    :goto_0
    :try_start_0
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    .line 222
    :try_start_1
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    :goto_1
    throw v0

    .line 219
    :cond_0
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 222
    :try_start_3
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 225
    :goto_2
    return-object v0

    .line 223
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 230
    .line 232
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v5

    move v1, v2

    move-object v0, v3

    .line 234
    :goto_0
    :try_start_0
    invoke-interface {v5}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 236
    invoke-interface {v5}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 238
    array-length v4, p1

    if-lt v1, v4, :cond_1

    .line 239
    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    array-length v7, p1

    move v4, v2

    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v8, p1, v4

    .line 242
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 245
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 250
    goto :goto_0

    .line 247
    :cond_1
    aput-object v6, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 252
    :catchall_0
    move-exception v0

    .line 253
    :try_start_1
    invoke-interface {v5}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    :goto_3
    throw v0

    .line 253
    :cond_2
    :try_start_2
    invoke-interface {v5}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 258
    :goto_4
    if-nez v0, :cond_4

    .line 259
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_3

    .line 260
    aput-object v3, p1, v1

    .line 264
    :cond_3
    :goto_5
    return-object p1

    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    .line 254
    :catch_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public updateAll()I
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call updateAll() on a lazy collection."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
