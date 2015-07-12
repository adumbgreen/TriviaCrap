.class public abstract Lcom/etermax/gamescommon/f/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/etermax/gamescommon/f/a/a;->b:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.end method

.method public a()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/gamescommon/f/a/a;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/f/a/a;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/f/a/a;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/f/a/a;->a(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/f/a/a;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :cond_1
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->a()V

    .line 92
    iget-object v0, p0, Lcom/etermax/gamescommon/f/a/a;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->b()V

    .line 98
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    :try_start_1
    const-string v1, "AbstractDao"

    const-string v2, "ERROR IN ABSTRACTDAO"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->b()V

    throw v0
.end method

.method public a(Ljava/lang/Class;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 194
    .line 196
    :try_start_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->a()V

    .line 197
    iget-object v2, p0, Lcom/etermax/gamescommon/f/a/a;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v2, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    .line 198
    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 203
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->b()V

    .line 205
    :goto_0
    if-ne v2, v0, :cond_0

    :goto_1
    return v0

    .line 200
    :catch_0
    move-exception v2

    .line 201
    :try_start_1
    invoke-virtual {v2}, Ljava/sql/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->b()V

    move v2, v1

    .line 204
    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->b()V

    throw v0

    :cond_0
    move v0, v1

    .line 205
    goto :goto_1
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Long;)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Long;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    .line 182
    :try_start_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->a()V

    .line 183
    iget-object v2, p0, Lcom/etermax/gamescommon/f/a/a;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v2, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    .line 184
    invoke-interface {v2, p2}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 188
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->b()V

    .line 190
    :goto_0
    if-ne v2, v0, :cond_0

    :goto_1
    return v0

    .line 185
    :catch_0
    move-exception v2

    .line 186
    :try_start_1
    const-string v3, "AbstractDao"

    const-string v4, "ERROR IN ABSTRACTDAO"

    invoke-static {v3, v4, v2}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->b()V

    move v2, v1

    .line 189
    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->b()V

    throw v0

    :cond_0
    move v0, v1

    .line 190
    goto :goto_1
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;TT;)",
            "Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->a()V

    .line 124
    iget-object v1, p0, Lcom/etermax/gamescommon/f/a/a;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v1, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->b()V

    .line 130
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    :try_start_1
    const-string v2, "AbstractDao"

    const-string v3, "ERROR IN ABSTRACTDAO"

    invoke-static {v2, v3, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->b()V

    throw v0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 211
    :try_start_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->a()V

    .line 212
    iget-object v1, p0, Lcom/etermax/gamescommon/f/a/a;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v1, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 213
    invoke-interface {v1, p2}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->b()V

    .line 219
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    :try_start_1
    const-string v2, "AbstractDao"

    const-string v3, "ERROR IN ABSTRACTDAO"

    invoke-static {v2, v3, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/a;->b()V

    throw v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/gamescommon/f/a/a;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/etermax/gamescommon/f/a/a;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    .line 40
    :cond_0
    return-void
.end method
