.class public Lcom/etermax/gamescommon/f/a/c;
.super Lcom/etermax/gamescommon/f/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/gamescommon/f/a/a",
        "<",
        "Lcom/etermax/gamescommon/f/b/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/f/a/a;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/f/a/c;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/f/a;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Lcom/etermax/gamescommon/f/b/b;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/f/b/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/f/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    monitor-enter p0

    const/4 v0, 0x0

    .line 78
    :try_start_0
    invoke-super {p0}, Lcom/etermax/gamescommon/f/a/a;->a()V

    .line 79
    iget-object v3, p0, Lcom/etermax/gamescommon/f/a/c;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    const-class v4, Lcom/etermax/gamescommon/f/b/b;

    invoke-virtual {v3, v4}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 83
    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->a()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 84
    const-string v1, "notificationId"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->a()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move v1, v2

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->b()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 89
    const-string v5, "gameId"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->b()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 90
    add-int/lit8 v1, v1, 0x1

    .line 93
    :cond_1
    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->c()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 94
    const-string v5, "userId"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->c()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 98
    :cond_2
    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->d()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 99
    const-string v5, "username"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 100
    add-int/lit8 v1, v1, 0x1

    .line 103
    :cond_3
    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->f()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 104
    const-string v5, "messageId"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->f()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 108
    :cond_4
    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->g()Landroid/text/SpannableString;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 109
    const-string v5, "message"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->g()Landroid/text/SpannableString;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 113
    :cond_5
    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->h()Landroid/text/SpannableString;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 114
    const-string v5, "stackedMessage"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->h()Landroid/text/SpannableString;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 115
    add-int/lit8 v1, v1, 0x1

    .line 118
    :cond_6
    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->i()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 119
    const-string v5, "time"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->i()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 120
    add-int/lit8 v1, v1, 0x1

    .line 123
    :cond_7
    if-lez v1, :cond_9

    .line 124
    if-le v1, v2, :cond_8

    .line 125
    invoke-virtual {v4, v1}, Lcom/j256/ormlite/stmt/Where;->and(I)Lcom/j256/ormlite/stmt/Where;

    .line 128
    :cond_8
    const-string v1, "time"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 130
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/etermax/gamescommon/f/a/c;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    const-class v3, Lcom/etermax/gamescommon/f/b/b;

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 138
    :cond_9
    :try_start_1
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/c;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :goto_0
    monitor-exit p0

    return-object v0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    :try_start_2
    const-string v2, "NotificationsCacheDao"

    const-string v3, "ERROR EN findByCriteria"

    invoke-static {v2, v3, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    :try_start_3
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/c;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 135
    :catch_1
    move-exception v1

    .line 136
    :try_start_4
    const-string v2, "NotificationsCacheDao"

    const-string v3, "ERROR EN findByCriteria"

    invoke-static {v2, v3, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    :try_start_5
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/c;->b()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/c;->b()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized a(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/f/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    monitor-enter p0

    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-super {p0}, Lcom/etermax/gamescommon/f/a/a;->a()V

    .line 32
    iget-object v1, p0, Lcom/etermax/gamescommon/f/a/c;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    const-class v2, Lcom/etermax/gamescommon/f/b/b;

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 35
    if-nez p1, :cond_0

    .line 36
    const-string v3, "notificationId"

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/Where;->isNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    .line 41
    :goto_0
    if-nez p2, :cond_1

    .line 42
    const-string v3, "gameId"

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/Where;->isNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    .line 47
    :goto_1
    if-nez p3, :cond_2

    .line 48
    const-string v3, "userId"

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/Where;->isNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    .line 53
    :goto_2
    if-nez p4, :cond_3

    .line 54
    const-string v3, "messageId"

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/Where;->isNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    .line 59
    :goto_3
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/Where;->and(I)Lcom/j256/ormlite/stmt/Where;

    .line 61
    const-string v2, "time"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 63
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/etermax/gamescommon/f/a/c;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    const-class v3, Lcom/etermax/gamescommon/f/b/b;

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 70
    :try_start_1
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/c;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :goto_4
    monitor-exit p0

    return-object v0

    .line 38
    :cond_0
    :try_start_2
    const-string v3, "notificationId"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    :try_start_3
    const-string v2, "NotificationsCacheDao"

    const-string v3, "ERROR EN findByCriteria"

    invoke-static {v2, v3, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    :try_start_4
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/c;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 44
    :cond_1
    :try_start_5
    const-string v3, "gameId"

    invoke-virtual {v2, v3, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 67
    :catch_1
    move-exception v1

    .line 68
    :try_start_6
    const-string v2, "NotificationsCacheDao"

    const-string v3, "ERROR EN findByCriteria"

    invoke-static {v2, v3, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 70
    :try_start_7
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/c;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 50
    :cond_2
    :try_start_8
    const-string v3, "userId"

    invoke-virtual {v2, v3, p3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 70
    :catchall_1
    move-exception v0

    :try_start_9
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/c;->b()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 56
    :cond_3
    :try_start_a
    const-string v3, "messageId"

    invoke-virtual {v2, v3, p4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3
.end method

.method protected b(Landroid/content/Context;)Lcom/etermax/gamescommon/f/a;
    .locals 1
    .parameter

    .prologue
    .line 25
    new-instance v0, Lcom/etermax/gamescommon/f/a;

    invoke-direct {v0, p1}, Lcom/etermax/gamescommon/f/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public declared-synchronized b(Lcom/etermax/gamescommon/f/b/b;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 145
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/etermax/gamescommon/f/a/a;->a()V

    .line 146
    iget-object v0, p0, Lcom/etermax/gamescommon/f/a/c;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    const-class v2, Lcom/etermax/gamescommon/f/b/b;

    invoke-virtual {v0, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v2

    .line 147
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 149
    const/4 v0, 0x0

    .line 150
    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->a()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 151
    const-string v0, "notificationId"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->a()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move v0, v1

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->c()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 156
    const-string v4, "userId"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->c()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 160
    :cond_1
    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 161
    const-string v4, "username"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 162
    add-int/lit8 v0, v0, 0x1

    .line 165
    :cond_2
    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->g()Landroid/text/SpannableString;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 166
    const-string v4, "message"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->g()Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 167
    add-int/lit8 v0, v0, 0x1

    .line 170
    :cond_3
    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->i()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 171
    const-string v4, "time"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->i()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 172
    add-int/lit8 v0, v0, 0x1

    .line 175
    :cond_4
    if-lez v0, :cond_6

    .line 176
    if-le v0, v1, :cond_5

    .line 177
    invoke-virtual {v3, v0}, Lcom/j256/ormlite/stmt/Where;->and(I)Lcom/j256/ormlite/stmt/Where;

    .line 180
    :cond_5
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/etermax/gamescommon/f/a/c;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    const-class v2, Lcom/etermax/gamescommon/f/b/b;

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/c;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :goto_0
    monitor-exit p0

    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    :try_start_2
    const-string v1, "NotificationsCacheDao"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR en delete by criteria: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    :try_start_3
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/c;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 186
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Lcom/etermax/gamescommon/f/a/c;->b()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
