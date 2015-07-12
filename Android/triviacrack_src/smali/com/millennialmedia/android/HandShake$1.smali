.class Lcom/millennialmedia/android/HandShake$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/HandShake;->a(Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/millennialmedia/android/HandShake;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/HandShake;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/millennialmedia/android/HandShake$1;->b:Lcom/millennialmedia/android/HandShake;

    iput-boolean p2, p0, Lcom/millennialmedia/android/HandShake$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0xc8

    const/4 v2, 0x0

    .line 316
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$1;->b:Lcom/millennialmedia/android/HandShake;

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->a(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 317
    if-nez v0, :cond_b

    .line 318
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$1;->b:Lcom/millennialmedia/android/HandShake;

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->b(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v4, v0

    .line 319
    :goto_0
    if-nez v4, :cond_1

    .line 411
    :cond_0
    :goto_1
    return-void

    .line 323
    :cond_1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 326
    const-string v1, "ua"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Android:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake$1;->b:Lcom/millennialmedia/android/HandShake;

    invoke-static {v1, v4}, Lcom/millennialmedia/android/HandShake;->a(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result v1

    .line 328
    if-eqz v1, :cond_2

    .line 329
    :try_start_1
    const-string v3, "firstlaunch"

    const-string v6, "1"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_2
    iget-boolean v3, p0, Lcom/millennialmedia/android/HandShake$1;->a:Z

    if-eqz v3, :cond_3

    .line 332
    const-string v3, "init"

    const-string v6, "1"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_3
    invoke-static {v4, v0}, Lcom/millennialmedia/android/MMSDK;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 334
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 336
    const-string v6, "&%s=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 400
    :catch_0
    move-exception v0

    .line 401
    :goto_3
    :try_start_2
    const-string v2, "HandShake"

    const-string v3, "Could not get a handshake. "

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 407
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_4

    .line 408
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake$1;->b:Lcom/millennialmedia/android/HandShake;

    invoke-static {v1, v4}, Lcom/millennialmedia/android/HandShake;->c(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)V

    :cond_4
    throw v0

    .line 340
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/millennialmedia/android/HandShake;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/millennialmedia/android/HandShake;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    const-string v3, "HandShake"

    const-string v6, "Performing handshake: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 345
    const/4 v3, 0x0

    .line 348
    :try_start_4
    new-instance v6, Lcom/millennialmedia/android/HttpGetRequest;

    const/16 v7, 0xbb8

    invoke-direct {v6, v7}, Lcom/millennialmedia/android/HttpGetRequest;-><init>(I)V

    invoke-virtual {v6, v0}, Lcom/millennialmedia/android/HttpGetRequest;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v3

    .line 355
    :goto_5
    if-eqz v3, :cond_6

    :try_start_5
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v0

    if-eq v0, v10, :cond_7

    .line 358
    :cond_6
    :try_start_6
    invoke-static {}, Lcom/millennialmedia/android/HandShake;->d()Ljava/lang/String;

    move-result-object v0

    const-string v6, "https://"

    const-string v7, "http://"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/millennialmedia/android/HandShake;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lcom/millennialmedia/android/HandShake;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    const-string v6, "HandShake"

    const-string v7, "Performing handshake (HTTP Fallback): %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    new-instance v6, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v6}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    invoke-virtual {v6, v0}, Lcom/millennialmedia/android/HttpGetRequest;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v3

    .line 373
    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    :try_start_7
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result v0

    if-eq v0, v10, :cond_9

    .line 376
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://ads.mp.mydas.mobi/appConfigServlet?apid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lcom/millennialmedia/android/HandShake;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    const-string v5, "HandShake"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Performing handshake (HTTP Fallback Original): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    new-instance v5, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v5}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    invoke-virtual {v5, v0}, Lcom/millennialmedia/android/HttpGetRequest;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v0

    .line 389
    :goto_7
    if-eqz v0, :cond_a

    :try_start_9
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    if-ne v3, v10, :cond_a

    .line 391
    iget-object v2, p0, Lcom/millennialmedia/android/HandShake$1;->b:Lcom/millennialmedia/android/HandShake;

    iget-object v3, p0, Lcom/millennialmedia/android/HandShake$1;->b:Lcom/millennialmedia/android/HandShake;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HttpGetRequest;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/millennialmedia/android/HandShake;->a(Lcom/millennialmedia/android/HandShake;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/millennialmedia/android/HandShake;->a(Lcom/millennialmedia/android/HandShake;Lorg/json/JSONObject;)V

    .line 394
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$1;->b:Lcom/millennialmedia/android/HandShake;

    invoke-static {v0, v4}, Lcom/millennialmedia/android/HandShake;->b(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)V

    .line 395
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$1;->b:Lcom/millennialmedia/android/HandShake;

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->e(Lcom/millennialmedia/android/HandShake;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/millennialmedia/android/HandShake$1;->b:Lcom/millennialmedia/android/HandShake;

    invoke-static {v2}, Lcom/millennialmedia/android/HandShake;->c(Lcom/millennialmedia/android/HandShake;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/HandShake$1;->b:Lcom/millennialmedia/android/HandShake;

    invoke-static {v3}, Lcom/millennialmedia/android/HandShake;->d(Lcom/millennialmedia/android/HandShake;)J

    move-result-wide v5

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 397
    const-string v0, "HandShake"

    const-string v2, "Obtained a new handshake"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 407
    :goto_8
    if-eqz v1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$1;->b:Lcom/millennialmedia/android/HandShake;

    invoke-static {v0, v4}, Lcom/millennialmedia/android/HandShake;->c(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 350
    :catch_1
    move-exception v0

    .line 351
    :try_start_a
    const-string v6, "HandShake"

    const-string v7, "Could not get a handshake. "

    invoke-static {v6, v7, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_5

    .line 403
    :catch_2
    move-exception v0

    .line 404
    :goto_9
    :try_start_b
    const-string v2, "HandShake"

    const-string v3, "Could not get a handshake. "

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 368
    :catch_3
    move-exception v0

    .line 369
    :try_start_c
    const-string v6, "HandShake"

    const-string v7, "Could not get a handshake. "

    invoke-static {v6, v7, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 383
    :catch_4
    move-exception v0

    .line 384
    const-string v5, "HandShake"

    const-string v6, "Could not get a handshake. "

    invoke-static {v5, v6, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :cond_9
    move-object v0, v3

    goto :goto_7

    :cond_a
    move v1, v2

    .line 399
    goto :goto_8

    .line 407
    :catchall_1
    move-exception v0

    move v1, v2

    goto/16 :goto_4

    .line 403
    :catch_5
    move-exception v0

    move v1, v2

    goto :goto_9

    .line 400
    :catch_6
    move-exception v0

    move v1, v2

    goto/16 :goto_3

    :cond_b
    move-object v4, v0

    goto/16 :goto_0
.end method
