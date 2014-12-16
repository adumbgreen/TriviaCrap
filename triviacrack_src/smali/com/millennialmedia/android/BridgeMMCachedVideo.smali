.class Lcom/millennialmedia/android/BridgeMMCachedVideo;
.super Lcom/millennialmedia/android/MMJSObject;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 34
    return-void
.end method

.method private a()Lcom/millennialmedia/android/VideoPlayerActivity;
    .locals 3

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 295
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->i()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/android/MMActivity;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 298
    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->i()Landroid/app/Activity;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/millennialmedia/android/MMActivity;

    if-eqz v2, :cond_0

    .line 301
    check-cast v0, Lcom/millennialmedia/android/MMActivity;

    .line 302
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->h()Lcom/millennialmedia/android/MMBaseActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->h()Lcom/millennialmedia/android/MMBaseActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/millennialmedia/android/VideoPlayerActivity;

    if-eqz v2, :cond_0

    .line 304
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->h()Lcom/millennialmedia/android/MMBaseActivity;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoPlayerActivity;

    .line 310
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 322
    const-string v1, "availableCachedVideos"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->availableCachedVideos(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 340
    :cond_0
    :goto_0
    return-object v0

    .line 324
    :cond_1
    const-string v1, "cacheVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 325
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->cacheVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_2
    const-string v1, "endVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 327
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->endVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_3
    const-string v1, "pauseVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 329
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->pauseVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 330
    :cond_4
    const-string v1, "playCachedVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 331
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->playCachedVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_5
    const-string v1, "playVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 333
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->playVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 334
    :cond_6
    const-string v1, "restartVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 335
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->restartVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 336
    :cond_7
    const-string v1, "videoIdExists"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->videoIdExists(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public availableCachedVideos(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 68
    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 70
    const/4 v2, 0x2

    new-instance v3, Lcom/millennialmedia/android/BridgeMMCachedVideo$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/millennialmedia/android/BridgeMMCachedVideo$1;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Landroid/content/Context;Lorg/json/JSONArray;)V

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    .line 85
    new-instance v0, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 86
    const/4 v2, 0x1

    iput v2, v0, Lcom/millennialmedia/android/MMJSResponse;->c:I

    .line 87
    iput-object v1, v0, Lcom/millennialmedia/android/MMJSResponse;->d:Ljava/lang/Object;

    .line 90
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized cacheVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 141
    const-string v1, "url"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 148
    :try_start_1
    new-instance v3, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v3}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    invoke-virtual {v3, v1}, Lcom/millennialmedia/android/HttpGetRequest;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 149
    if-nez v3, :cond_0

    .line 150
    const-string v0, "BridgeMMCachedVideo"

    const-string v1, "HTTP response is null"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    .line 220
    :goto_0
    monitor-exit p0

    return-object v0

    .line 153
    :cond_0
    :try_start_2
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 159
    if-nez v3, :cond_1

    .line 160
    :try_start_3
    const-string v0, "BridgeMMCachedVideo"

    const-string v1, "Null HTTP entity"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 161
    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    const-string v1, "BridgeMMCachedVideo"

    const-string v3, "HTTP error: "

    invoke-static {v1, v3, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 156
    goto :goto_0

    .line 164
    :cond_1
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 165
    const-string v0, "BridgeMMCachedVideo"

    const-string v1, "Millennial ad return failed. Zero content length returned."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 166
    goto :goto_0

    .line 169
    :cond_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v4

    .line 170
    if-eqz v4, :cond_4

    .line 171
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 172
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/json"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 178
    :try_start_4
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/HttpGetRequest;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 180
    new-instance v4, Lcom/millennialmedia/android/VideoAd;

    invoke-direct {v4, v3}, Lcom/millennialmedia/android/VideoAd;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 189
    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Lcom/millennialmedia/android/VideoAd;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 190
    const/4 v3, 0x3

    iput v3, v4, Lcom/millennialmedia/android/VideoAd;->e:I

    .line 191
    const/4 v3, 0x0

    invoke-static {v0, v3, v4, p0}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    .line 196
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 198
    iget-boolean v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->a:Z

    if-eqz v0, :cond_3

    .line 199
    const-string v0, "Cached video(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v0

    .line 205
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 181
    :catch_1
    move-exception v0

    .line 182
    :try_start_8
    const-string v1, "BridgeMMCachedVideo"

    const-string v3, "Millennial ad return failed. Invalid response data."

    invoke-static {v1, v3, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 183
    goto/16 :goto_0

    .line 184
    :catch_2
    move-exception v0

    .line 185
    const-string v1, "BridgeMMCachedVideo"

    const-string v3, "Millennial ad return failed. Invalid response data."

    invoke-static {v1, v3, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 186
    goto/16 :goto_0

    .line 205
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_4
    :goto_1
    move-object v0, v2

    .line 220
    goto/16 :goto_0

    .line 202
    :catch_3
    move-exception v0

    .line 203
    :try_start_9
    const-string v1, "BridgeMMCachedVideo"

    const-string v3, "Caching interrupted: "

    invoke-static {v1, v3, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 205
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw v0

    .line 208
    :cond_5
    const-string v0, "Unable to start download for Cached video(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method public downloadCompleted(Lcom/millennialmedia/android/CachedAd;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 124
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {v0, p1}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z

    .line 126
    :cond_0
    iput-boolean p2, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->a:Z

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 128
    monitor-exit p0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public downloadStart(Lcom/millennialmedia/android/CachedAd;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    return-void
.end method

.method public endVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->a()Lcom/millennialmedia/android/VideoPlayerActivity;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    .line 244
    new-instance v1, Lcom/millennialmedia/android/BridgeMMCachedVideo$3;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$3;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->a()Lcom/millennialmedia/android/VideoPlayerActivity;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    .line 261
    new-instance v1, Lcom/millennialmedia/android/BridgeMMCachedVideo$4;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$4;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playCachedVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 101
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 102
    const-string v1, "videoId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {v0, v1}, Lcom/millennialmedia/android/AdCache;->i(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/VideoAd;

    .line 106
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v3, v5}, Lcom/millennialmedia/android/VideoAd;->a(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    const-string v3, "PROPERTY_EXPANDING"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->b(Ljava/lang/String;)J

    move-result-wide v3

    .line 109
    invoke-virtual {v2, v0, v3, v4}, Lcom/millennialmedia/android/VideoAd;->a(Landroid/content/Context;J)V

    .line 110
    const-string v0, "Playing Video(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v3

    goto :goto_0
.end method

.method public playVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->a()Lcom/millennialmedia/android/VideoPlayerActivity;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    .line 227
    new-instance v1, Lcom/millennialmedia/android/BridgeMMCachedVideo$2;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$2;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restartVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->a()Lcom/millennialmedia/android/VideoPlayerActivity;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_0

    .line 278
    new-instance v1, Lcom/millennialmedia/android/BridgeMMCachedVideo$5;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$5;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public videoIdExists(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 47
    const-string v1, "videoId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {v0, v1}, Lcom/millennialmedia/android/AdCache;->i(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/VideoAd;

    .line 51
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/millennialmedia/android/VideoAd;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/millennialmedia/android/VideoAd;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
