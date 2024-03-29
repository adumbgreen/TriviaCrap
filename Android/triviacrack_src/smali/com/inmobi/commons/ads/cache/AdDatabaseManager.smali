.class public Lcom/inmobi/commons/ads/cache/AdDatabaseManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/inmobi/commons/ads/cache/AdDatabaseManager;


# instance fields
.field private a:Lcom/inmobi/commons/ads/cache/AdDatabaseHelper;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private d:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->d:I

    .line 17
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/inmobi/commons/ads/cache/AdDatabaseManager;
    .locals 4

    .prologue
    .line 20
    const-class v1, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->c:Lcom/inmobi/commons/ads/cache/AdDatabaseManager;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;

    invoke-direct {v0}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;-><init>()V

    sput-object v0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->c:Lcom/inmobi/commons/ads/cache/AdDatabaseManager;

    .line 23
    sget-object v0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->c:Lcom/inmobi/commons/ads/cache/AdDatabaseManager;

    new-instance v2, Lcom/inmobi/commons/ads/cache/AdDatabaseHelper;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/inmobi/commons/ads/cache/AdDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->a:Lcom/inmobi/commons/ads/cache/AdDatabaseHelper;

    .line 27
    :cond_0
    sget-object v0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->c:Lcom/inmobi/commons/ads/cache/AdDatabaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected close()V
    .locals 3

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 46
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "Failed to close ads db"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized getAd(Ljava/lang/String;)Lcom/inmobi/commons/ads/cache/AdData;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 79
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->open()V

    .line 80
    iget-object v0, p0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * FROM ad WHERE appid = ? Order by timestamp Limit 1;"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 81
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 82
    new-instance v0, Lcom/inmobi/commons/ads/cache/AdData;

    invoke-direct {v0}, Lcom/inmobi/commons/ads/cache/AdData;-><init>()V

    .line 83
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/inmobi/commons/ads/cache/AdData;->setAdId(J)V

    .line 84
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/inmobi/commons/ads/cache/AdData;->setTimestamp(J)V

    .line 85
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inmobi/commons/ads/cache/AdData;->setAppId(Ljava/lang/String;)V

    .line 86
    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inmobi/commons/ads/cache/AdData;->setContent(Ljava/lang/String;)V

    .line 87
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 89
    iget-object v2, p0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ad"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/inmobi/commons/ads/cache/AdData;->getAdId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    monitor-exit p0

    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 95
    :try_start_1
    const-string v2, "[InMobi]-4.3.0"

    const-string v3, "Failed to get native ads from db"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 97
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getDBSize()I
    .locals 3

    .prologue
    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->open()V

    .line 121
    iget-object v0, p0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT * FROM ad; "

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 123
    invoke-virtual {p0}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return v0

    .line 125
    :catch_0
    move-exception v0

    .line 127
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "Failed to get native ads from db"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getNoOfAds(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 101
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->open()V

    .line 102
    iget-object v0, p0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * FROM ad WHERE appid = ?; "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 104
    invoke-virtual {p0}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    monitor-exit p0

    return v0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    :try_start_1
    const-string v2, "[InMobi]-4.3.0"

    const-string v3, "Failed to get native ads from db"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 110
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insertAd(Lcom/inmobi/commons/ads/cache/AdData;)V
    .locals 7
    .parameter

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 53
    const-string v1, "timestamp"

    invoke-virtual {p1}, Lcom/inmobi/commons/ads/cache/AdData;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    const-string v1, "appid"

    invoke-virtual {p1}, Lcom/inmobi/commons/ads/cache/AdData;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "content"

    invoke-virtual {p1}, Lcom/inmobi/commons/ads/cache/AdData;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "adtype"

    invoke-virtual {p1}, Lcom/inmobi/commons/ads/cache/AdData;->getAdType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->getDBSize()I

    move-result v1

    iget v2, p0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->d:I

    if-lt v1, v2, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->open()V

    .line 61
    iget-object v1, p0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT adid FROM ad WHERE timestamp= (SELECT MIN(timestamp) FROM ad Limit 1);"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 62
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 63
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 65
    iget-object v1, p0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ad"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->close()V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->open()V

    .line 69
    iget-object v1, p0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ad"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 70
    invoke-virtual {p0}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    monitor-exit p0

    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 73
    :try_start_1
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "Failed to insert native ads to db"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected open()V
    .locals 3

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->a:Lcom/inmobi/commons/ads/cache/AdDatabaseHelper;

    invoke-virtual {v0}, Lcom/inmobi/commons/ads/cache/AdDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 36
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "Failed to open ads db"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDBLimit(I)V
    .locals 0
    .parameter

    .prologue
    .line 114
    if-lez p1, :cond_0

    .line 115
    iput p1, p0, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->d:I

    .line 116
    :cond_0
    return-void
.end method
