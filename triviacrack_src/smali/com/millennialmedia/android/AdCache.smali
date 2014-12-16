.class final Lcom/millennialmedia/android/AdCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Z

.field private static b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/String;

.field private static d:Z

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Z

.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 988
    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/AdCache;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 120
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/millennialmedia/android/AdCache;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 121
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->d:Z

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 124
    const/4 v2, 0x2

    new-instance v3, Lcom/millennialmedia/android/AdCache$1;

    invoke-direct {v3, p0, v0}, Lcom/millennialmedia/android/AdCache$1;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    invoke-static {p0, v2, v3}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    .line 137
    sput-object v0, Lcom/millennialmedia/android/AdCache;->b:Ljava/util/Set;

    .line 138
    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/AdCache;->d:Z

    .line 141
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/AdCache;->b:Ljava/util/Set;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/millennialmedia/android/AdCache;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    sget-object v0, Lcom/millennialmedia/android/AdCache;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 147
    :cond_1
    :try_start_1
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/AdCache;->c:Ljava/lang/String;

    .line 152
    :cond_3
    sget-object v0, Lcom/millennialmedia/android/AdCache;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method static a(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 356
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 358
    const/4 v7, 0x0

    .line 365
    if-eqz v0, :cond_3

    .line 366
    new-instance v1, Lcom/millennialmedia/android/AdCache$2;

    invoke-direct {v1}, Lcom/millennialmedia/android/AdCache$2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v9

    .line 375
    if-eqz v9, :cond_3

    .line 376
    array-length v10, v9

    const/4 v0, 0x0

    move v8, v0

    move-object v0, v7

    :goto_0
    if-ge v8, v10, :cond_3

    aget-object v11, v9, v8

    .line 378
    if-eqz v11, :cond_0

    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    move-result v1

    if-nez v1, :cond_2

    .line 417
    :cond_0
    if-eqz v0, :cond_a

    .line 418
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 419
    const/4 v7, 0x0

    .line 376
    :cond_1
    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move-object v0, v7

    goto :goto_0

    .line 421
    :catch_0
    move-exception v1

    .line 422
    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v0

    .line 423
    goto :goto_1

    .line 380
    :cond_2
    if-nez p1, :cond_5

    .line 381
    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/millennialmedia/android/AdCache$Iterator;->a(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    move-result v1

    if-nez v1, :cond_4

    .line 417
    if-eqz v0, :cond_3

    .line 418
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 428
    :cond_3
    :goto_2
    invoke-virtual {p2}, Lcom/millennialmedia/android/AdCache$Iterator;->a()V

    .line 429
    return-void

    .line 421
    :catch_1
    move-exception v0

    .line 422
    const-string v1, "AdCache"

    const-string v2, "Failed to close"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 417
    :cond_4
    if-eqz v0, :cond_a

    .line 418
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 419
    const/4 v7, 0x0

    goto :goto_1

    .line 421
    :catch_2
    move-exception v1

    .line 422
    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v0

    .line 423
    goto :goto_1

    .line 386
    :cond_5
    :try_start_5
    new-instance v7, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 390
    :try_start_6
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 391
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    .line 392
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 393
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v5

    .line 394
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 395
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Lcom/millennialmedia/android/AdCache$Iterator;->a(Ljava/lang/String;ILjava/util/Date;Ljava/lang/String;JLjava/io/ObjectInputStream;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 398
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 399
    const/4 v0, 0x0

    .line 417
    if-eqz v0, :cond_3

    .line 418
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 421
    :catch_3
    move-exception v0

    .line 422
    const-string v1, "AdCache"

    const-string v2, "Failed to close"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 404
    :cond_6
    :try_start_8
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/CachedAd;

    .line 405
    invoke-virtual {p2, v0}, Lcom/millennialmedia/android/AdCache$Iterator;->a(Lcom/millennialmedia/android/CachedAd;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 406
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 407
    const/4 v0, 0x0

    .line 417
    if-eqz v0, :cond_3

    .line 418
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    .line 421
    :catch_4
    move-exception v0

    .line 422
    const-string v1, "AdCache"

    const-string v2, "Failed to close"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 417
    :cond_7
    if-eqz v7, :cond_1

    .line 418
    :try_start_a
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 419
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 421
    :catch_5
    move-exception v0

    .line 422
    const-string v1, "AdCache"

    const-string v2, "Failed to close"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 411
    :catch_6
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    .line 412
    :goto_3
    :try_start_b
    const-string v2, "AdCache"

    const-string v3, "There was a problem reading the cached ad %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 417
    if-eqz v0, :cond_8

    .line 418
    :try_start_c
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 419
    const/4 v0, 0x0

    :cond_8
    move-object v7, v0

    .line 423
    goto/16 :goto_1

    .line 421
    :catch_7
    move-exception v1

    .line 422
    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v0

    .line 424
    goto/16 :goto_1

    .line 416
    :catchall_0
    move-exception v0

    .line 417
    :goto_4
    if-eqz v7, :cond_9

    .line 418
    :try_start_d
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 423
    :cond_9
    :goto_5
    throw v0

    .line 421
    :catch_8
    move-exception v1

    .line 422
    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 416
    :catchall_1
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_4

    .line 411
    :catch_9
    move-exception v1

    goto :goto_3

    :cond_a
    move-object v7, v0

    goto/16 :goto_1
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    if-eqz p1, :cond_2

    .line 82
    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->d:Z

    if-nez v0, :cond_0

    .line 83
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 84
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/AdCache;->b:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/AdCache;->b:Ljava/util/Set;

    .line 86
    :cond_1
    sget-object v0, Lcom/millennialmedia/android/AdCache;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/android/AdCache;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_2
    monitor-exit v1

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->g:Z

    if-nez v0, :cond_0

    .line 212
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->j(Landroid/content/Context;)V

    .line 213
    :cond_0
    if-eqz p1, :cond_2

    .line 214
    sget-object v0, Lcom/millennialmedia/android/AdCache;->e:Ljava/util/Map;

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->k(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_2
    monitor-exit v1

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 301
    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 302
    if-ltz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 303
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 304
    if-eqz v2, :cond_2

    .line 305
    sget-object v0, Lcom/millennialmedia/android/AdCache;->f:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 306
    const/4 v0, 0x0

    .line 307
    sget-object v1, Lcom/millennialmedia/android/AdCache;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 308
    sget-object v0, Lcom/millennialmedia/android/AdCache;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/millennialmedia/android/MMSDK;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 315
    :cond_1
    const-string v1, "nextCachedAd_apids"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    sget-object v0, Lcom/millennialmedia/android/AdCache;->f:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_2
    return-void

    .line 315
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter

    .prologue
    .line 287
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/AdCache;->f:Ljava/util/Set;

    .line 288
    const-string v0, "nextCachedAd_apids"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_0

    .line 290
    sget-object v1, Lcom/millennialmedia/android/MMSDK;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 291
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 292
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 293
    sget-object v4, Lcom/millennialmedia/android/AdCache;->f:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_0
    return-void
.end method

.method static a(Ljava/io/File;J)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 506
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 508
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 509
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v4, v4, p1

    if-lez v4, :cond_0

    .line 511
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 508
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 512
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 514
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/millennialmedia/android/AdCache;->a(Ljava/io/File;J)V

    .line 515
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    .line 516
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 517
    :catch_0
    move-exception v0

    .line 518
    const-string v4, "AdCache"

    const-string v5, "Security Exception cleaning up directory"

    invoke-static {v4, v5, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 522
    :cond_2
    return-void
.end method

.method static a()Z
    .locals 2

    .prologue
    .line 984
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static a(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 901
    .line 903
    const/4 v3, 0x0

    .line 905
    if-nez p1, :cond_1

    .line 957
    :cond_0
    :goto_0
    return v0

    .line 908
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/millennialmedia/android/AdCache;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 909
    if-eqz v5, :cond_0

    .line 912
    const-string v4, "AdCache"

    const-string v6, "Saving CachedAd %s to %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->e()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    aput-object v5, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ad.lock"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 920
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_2

    .line 921
    const-string v1, "AdCache"

    const-string v5, "Could not save the cached ad %s. Ad was locked."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->e()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 943
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 944
    if-eqz v2, :cond_0

    .line 945
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 946
    :catch_0
    move-exception v1

    .line 947
    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 927
    :cond_2
    :try_start_3
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 931
    :try_start_4
    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->c()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 932
    iget-object v2, p1, Lcom/millennialmedia/android/CachedAd;->b:Ljava/util/Date;

    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 933
    iget-object v2, p1, Lcom/millennialmedia/android/CachedAd;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 934
    iget-wide v5, p1, Lcom/millennialmedia/android/CachedAd;->c:J

    invoke-virtual {v3, v5, v6}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 936
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 943
    :try_start_5
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 944
    if-eqz v3, :cond_3

    .line 945
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 952
    :cond_3
    :goto_1
    invoke-virtual {p1, p0}, Lcom/millennialmedia/android/CachedAd;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 953
    invoke-virtual {p1, p0}, Lcom/millennialmedia/android/CachedAd;->c(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 946
    :catch_1
    move-exception v2

    .line 947
    const-string v3, "AdCache"

    const-string v4, "Failed to close"

    invoke-static {v3, v4, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 937
    :catch_2
    move-exception v1

    move-object v3, v2

    .line 938
    :goto_2
    :try_start_6
    const-string v4, "AdCache"

    const-string v5, "There was a problem saving the cached ad %s."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->e()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 943
    :try_start_7
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 944
    if-eqz v2, :cond_0

    .line 945
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 946
    :catch_3
    move-exception v1

    .line 947
    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 942
    :catchall_0
    move-exception v0

    move-object v4, v2

    .line 943
    :goto_3
    :try_start_8
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 944
    if-eqz v2, :cond_4

    .line 945
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 948
    :cond_4
    :goto_4
    throw v0

    .line 946
    :catch_4
    move-exception v1

    .line 947
    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    move v0, v1

    .line 957
    goto/16 :goto_0

    .line 942
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_3

    .line 937
    :catch_5
    move-exception v1

    move-object v3, v4

    goto :goto_2

    :catch_6
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_2
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-static {}, Lcom/millennialmedia/android/AdCacheThreadPool;->a()Lcom/millennialmedia/android/AdCacheThreadPool;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/millennialmedia/android/AdCacheThreadPool;->a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z

    move-result v0

    return v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 711
    invoke-static {p2}, Lcom/millennialmedia/android/AdCache;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 712
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 713
    :cond_0
    const/4 v0, 0x0

    .line 716
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, v0, p2}, Lcom/millennialmedia/android/AdCache;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 755
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    const-string v0, "AdCache"

    const-string v1, "No Url ..."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const/4 v0, 0x0

    .line 840
    :cond_0
    :goto_0
    return v0

    .line 760
    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 761
    const-string v0, "AdCache"

    const-string v1, "Downloading Component: %s from %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 765
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 766
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 767
    const-string v1, "AdCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not exist and cannot create directory."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const/4 v0, 0x0

    goto :goto_0

    .line 772
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 773
    const-string v0, "AdCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists, skipping..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const/4 v0, 0x1

    goto :goto_0

    .line 777
    :cond_3
    const/4 v2, 0x0

    .line 778
    const/4 v1, 0x0

    .line 779
    const-wide/16 v4, -0x1

    .line 781
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 782
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 783
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 785
    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 786
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 788
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v3

    .line 789
    :try_start_1
    const-string v2, "Content-Length"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 794
    if-eqz v0, :cond_4

    .line 795
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 796
    :cond_4
    if-nez v3, :cond_7

    .line 797
    const-string v0, "AdCache"

    const-string v2, "Connection stream is null downloading %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 799
    const/4 v0, 0x0

    .line 827
    if-eqz v3, :cond_5

    .line 828
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 829
    :cond_5
    if-eqz v1, :cond_0

    .line 830
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 831
    :catch_0
    move-exception v0

    .line 832
    const-string v1, "AdCache"

    const-string v2, "Content caching error downloading component: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    if-eqz v6, :cond_6

    .line 834
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 835
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 802
    :cond_7
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    .line 803
    const/16 v0, 0x1000

    :try_start_4
    new-array v0, v0, [B

    .line 805
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_b

    .line 806
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 822
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 823
    :goto_2
    :try_start_5
    const-string v3, "AdCache"

    const-string v4, "Exception downloading component %s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const/4 v7, 0x1

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 827
    if-eqz v2, :cond_8

    .line 828
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 829
    :cond_8
    if-eqz v1, :cond_9

    .line 830
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 838
    :cond_9
    :goto_3
    if-eqz v6, :cond_a

    .line 839
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 840
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 808
    :cond_b
    if-eqz v6, :cond_10

    .line 811
    :try_start_7
    invoke-virtual {v6}, Ljava/io/File;->length()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_c

    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_f

    .line 813
    :cond_c
    const/4 v0, 0x1

    .line 827
    if-eqz v3, :cond_d

    .line 828
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 829
    :cond_d
    if-eqz v2, :cond_0

    .line 830
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 831
    :catch_2
    move-exception v0

    .line 832
    const-string v1, "AdCache"

    const-string v2, "Content caching error downloading component: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    if-eqz v6, :cond_e

    .line 834
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 835
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 815
    :cond_f
    :try_start_9
    const-string v0, "AdCache"

    const-string v1, "Content-Length does not match actual length."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 827
    :cond_10
    :goto_4
    if-eqz v3, :cond_11

    .line 828
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 829
    :cond_11
    if-eqz v2, :cond_9

    .line 830
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    .line 831
    :catch_3
    move-exception v0

    .line 832
    const-string v1, "AdCache"

    const-string v2, "Content caching error downloading component: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    if-eqz v6, :cond_12

    .line 834
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 835
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 817
    :catch_4
    move-exception v0

    .line 818
    :try_start_b
    const-string v1, "AdCache"

    const-string v4, "Exception downloading component %s: "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_4

    .line 826
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 827
    :goto_5
    if-eqz v3, :cond_13

    .line 828
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 829
    :cond_13
    if-eqz v1, :cond_14

    .line 830
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 835
    :cond_14
    throw v0

    .line 831
    :catch_5
    move-exception v0

    .line 832
    const-string v1, "AdCache"

    const-string v2, "Content caching error downloading component: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    if-eqz v6, :cond_15

    .line 834
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 835
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 831
    :catch_6
    move-exception v0

    .line 832
    const-string v1, "AdCache"

    const-string v2, "Content caching error downloading component: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    if-eqz v6, :cond_16

    .line 834
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 835
    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 826
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_5

    .line 822
    :catch_7
    move-exception v0

    goto/16 :goto_2

    :catch_8
    move-exception v0

    move-object v2, v3

    goto/16 :goto_2
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 733
    invoke-static {p3}, Lcom/millennialmedia/android/AdCache;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 734
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 735
    :cond_0
    const/4 v0, 0x0

    .line 739
    :goto_0
    return v0

    .line 738
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 739
    invoke-static {p0, p2, v1, p3}, Lcom/millennialmedia/android/AdCache;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method static b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 433
    new-instance v0, Lcom/millennialmedia/android/AdCache$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/AdCache$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 443
    return-void
.end method

.method static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 101
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    if-eqz p1, :cond_1

    .line 102
    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->d:Z

    if-nez v0, :cond_0

    .line 103
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 104
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/AdCache;->b:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 105
    sget-object v0, Lcom/millennialmedia/android/AdCache;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/android/AdCache;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_1
    monitor-exit v1

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->i:Z

    if-nez v0, :cond_0

    .line 276
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->k(Landroid/content/Context;)V

    .line 277
    :cond_0
    if-eqz p1, :cond_2

    .line 278
    sget-object v0, Lcom/millennialmedia/android/AdCache;->h:Ljava/util/Map;

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->l(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :cond_2
    monitor-exit v1

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 722
    invoke-static {p2}, Lcom/millennialmedia/android/AdCache;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 723
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 724
    :cond_0
    const/4 v0, 0x0

    .line 727
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, v0, p2}, Lcom/millennialmedia/android/AdCache;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 580
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 581
    const/4 v0, 0x0

    .line 582
    if-eqz v1, :cond_0

    .line 583
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 585
    :cond_0
    return-object v0
.end method

.method static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 196
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->g:Z

    if-nez v0, :cond_0

    .line 197
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->j(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/millennialmedia/android/AdCache;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static c(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 448
    const/4 v0, 0x1

    new-instance v1, Lcom/millennialmedia/android/AdCache$4;

    invoke-direct {v1}, Lcom/millennialmedia/android/AdCache$4;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    .line 471
    return-void
.end method

.method static d(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, v0}, Lcom/millennialmedia/android/AdCache;->i(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    goto :goto_0
.end method

.method static d(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 475
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->l(Landroid/content/Context;)V

    .line 476
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->m(Landroid/content/Context;)V

    .line 479
    :cond_0
    return-void
.end method

.method static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 260
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->i:Z

    if-nez v0, :cond_0

    .line 261
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->k(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/millennialmedia/android/AdCache;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static e(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 532
    const/4 v0, 0x2

    new-instance v1, Lcom/millennialmedia/android/AdCache$5;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/AdCache$5;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    .line 545
    sput-object v2, Lcom/millennialmedia/android/AdCache;->b:Ljava/util/Set;

    .line 546
    sput-object v2, Lcom/millennialmedia/android/AdCache;->c:Ljava/lang/String;

    .line 547
    const/4 v0, 0x0

    sput-boolean v0, Lcom/millennialmedia/android/AdCache;->d:Z

    .line 549
    sget-object v0, Lcom/millennialmedia/android/AdCache;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 550
    sget-object v0, Lcom/millennialmedia/android/AdCache;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 551
    invoke-static {p0, v0, v2}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/AdCache;->h:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 555
    sget-object v0, Lcom/millennialmedia/android/AdCache;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 556
    invoke-static {p0, v0, v2}, Lcom/millennialmedia/android/AdCache;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 558
    :cond_1
    return-void
.end method

.method static f(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lcom/millennialmedia/android/AdCache;->i(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    goto :goto_0
.end method

.method static f(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 596
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 599
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method static g(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 604
    .line 605
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 606
    if-eqz v2, :cond_0

    .line 607
    new-instance v1, Ljava/io/File;

    const-string v3, ".mmsyscache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 609
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 610
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 570
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 571
    const/4 v0, 0x0

    .line 572
    if-eqz v1, :cond_0

    .line 573
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 575
    :cond_0
    return-object v0
.end method

.method static h(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 619
    if-nez p0, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-object v0

    .line 621
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".mmsyscache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 623
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static h(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 590
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static i(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 853
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-object v1

    .line 862
    :cond_1
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 863
    if-eqz v0, :cond_0

    .line 867
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 870
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    .line 871
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 872
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 873
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readLong()J

    .line 875
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/CachedAd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 884
    if-eqz v2, :cond_2

    .line 885
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    move-object v1, v0

    .line 891
    goto :goto_0

    .line 886
    :catch_0
    move-exception v1

    .line 887
    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 876
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 877
    :goto_2
    :try_start_3
    const-string v3, "AdCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There was a problem loading up the cached ad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Ad is not on disk."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 884
    if-eqz v2, :cond_3

    .line 885
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    move-object v0, v1

    .line 888
    goto :goto_1

    .line 886
    :catch_2
    move-exception v0

    .line 887
    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 889
    goto :goto_1

    .line 879
    :catch_3
    move-exception v0

    move-object v2, v1

    .line 880
    :goto_3
    :try_start_5
    const-string v3, "AdCache"

    const-string v4, "There was a problem loading up the cached ad %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 884
    if-eqz v2, :cond_4

    .line 885
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    move-object v0, v1

    .line 888
    goto :goto_1

    .line 886
    :catch_4
    move-exception v0

    .line 887
    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 889
    goto :goto_1

    .line 883
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 884
    :goto_4
    if-eqz v2, :cond_5

    .line 885
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 888
    :cond_5
    :goto_5
    throw v0

    .line 886
    :catch_5
    move-exception v1

    .line 887
    const-string v2, "AdCache"

    const-string v3, "Failed to close"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 883
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 879
    :catch_6
    move-exception v0

    goto :goto_3

    .line 876
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method static i(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 972
    if-nez p0, :cond_1

    .line 975
    :cond_0
    :goto_0
    return v0

    .line 974
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 975
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/millennialmedia/android/AdCache;->a:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static j(Landroid/content/Context;)V
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0x5f

    const/4 v2, 0x0

    .line 161
    const-string v0, "MillennialMediaSettings"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 163
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/AdCache;->e:Ljava/util/Map;

    .line 165
    sget-object v0, Lcom/millennialmedia/android/AdCache;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 166
    invoke-static {v3}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/SharedPreferences;)V

    .line 168
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/AdCache;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    invoke-static {}, Lcom/millennialmedia/android/MMAdImpl;->l()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_1

    aget-object v7, v5, v1

    .line 170
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nextCachedAd_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 172
    if-eqz v8, :cond_2

    .line 173
    sget-object v9, Lcom/millennialmedia/android/AdCache;->e:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/AdCache;->g:Z

    .line 177
    return-void
.end method

.method static j(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 962
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 963
    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 966
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static k(Landroid/content/Context;)V
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0x5f

    const/4 v2, 0x0

    .line 224
    const-string v0, "MillennialMediaSettings"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 226
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/AdCache;->h:Ljava/util/Map;

    .line 229
    sget-object v0, Lcom/millennialmedia/android/AdCache;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 230
    invoke-static {v3}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/SharedPreferences;)V

    .line 232
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/AdCache;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    invoke-static {}, Lcom/millennialmedia/android/MMAdImpl;->l()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_1

    aget-object v7, v5, v1

    .line 234
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "incompleteDownload_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 236
    if-eqz v8, :cond_2

    .line 237
    sget-object v9, Lcom/millennialmedia/android/AdCache;->h:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/AdCache;->i:Z

    .line 241
    return-void
.end method

.method private static k(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    const-string v0, "MillennialMediaSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 187
    invoke-static {v1, p1}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextCachedAd_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/millennialmedia/android/AdCache;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    :cond_0
    return-void
.end method

.method private static l(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 483
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 484
    if-nez v0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    invoke-static {p0}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    .line 488
    iget-wide v1, v1, Lcom/millennialmedia/android/HandShake;->d:J

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/AdCache;->a(Ljava/io/File;J)V

    goto :goto_0
.end method

.method private static l(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    const-string v0, "MillennialMediaSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 250
    invoke-static {v1, p1}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incompleteDownload_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/millennialmedia/android/AdCache;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    :cond_0
    return-void
.end method

.method private static m(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 647
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->i(Landroid/content/Context;)Z

    move-result v2

    .line 649
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 653
    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 654
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 656
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 659
    :cond_0
    if-nez v2, :cond_1

    .line 660
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 662
    if-eqz v4, :cond_1

    .line 663
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".mmsyscache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 666
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 676
    :goto_1
    return-object v0

    .line 672
    :catch_0
    move-exception v1

    .line 673
    const-string v2, "AdCache"

    const-string v3, "getCachedAdFile: "

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 676
    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private static m(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 494
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 495
    if-nez v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    invoke-static {p0}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    .line 499
    iget-wide v1, v1, Lcom/millennialmedia/android/HandShake;->d:J

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/AdCache;->a(Ljava/io/File;J)V

    goto :goto_0
.end method
