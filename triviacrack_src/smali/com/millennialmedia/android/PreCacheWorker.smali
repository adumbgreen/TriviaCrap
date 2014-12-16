.class Lcom/millennialmedia/android/PreCacheWorker;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static a:Z


# instance fields
.field private b:[Lcom/millennialmedia/android/DTOCachedVideo;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private volatile e:Z


# direct methods
.method private constructor <init>([Lcom/millennialmedia/android/DTOCachedVideo;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/PreCacheWorker;->e:Z

    .line 50
    iput-object p1, p0, Lcom/millennialmedia/android/PreCacheWorker;->b:[Lcom/millennialmedia/android/DTOCachedVideo;

    .line 51
    iput-object p3, p0, Lcom/millennialmedia/android/PreCacheWorker;->d:Ljava/lang/String;

    .line 52
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/PreCacheWorker;->c:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/PreCacheWorker;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/millennialmedia/android/PreCacheWorker;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/millennialmedia/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/PreCacheWorker;->b(Lcom/millennialmedia/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    if-eqz v0, :cond_0

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/PreCacheWorker;->c(Lcom/millennialmedia/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method

.method static declared-synchronized a([Lcom/millennialmedia/android/DTOCachedVideo;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    const-class v1, Lcom/millennialmedia/android/PreCacheWorker;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/PreCacheWorker;->a:Z

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/PreCacheWorker;->a:Z

    .line 41
    new-instance v0, Lcom/millennialmedia/android/PreCacheWorker;

    invoke-direct {v0, p0, p1, p2}, Lcom/millennialmedia/android/PreCacheWorker;-><init>([Lcom/millennialmedia/android/DTOCachedVideo;Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Lcom/millennialmedia/android/PreCacheWorker;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    monitor-exit v1

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/millennialmedia/android/PreCacheWorker;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/millennialmedia/android/PreCacheWorker;->e:Z

    return p1
.end method

.method private b(Lcom/millennialmedia/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 118
    .line 122
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/HttpGetRequest;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    new-instance v0, Lcom/millennialmedia/android/VideoAd;

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoAd;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const/4 v1, 0x1

    :try_start_1
    iput v1, v0, Lcom/millennialmedia/android/VideoAd;->e:I

    .line 139
    iget-object v1, p0, Lcom/millennialmedia/android/PreCacheWorker;->c:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Lcom/millennialmedia/android/PreCacheWorker$1;

    invoke-direct {v3, p0, p1}, Lcom/millennialmedia/android/PreCacheWorker$1;-><init>(Lcom/millennialmedia/android/PreCacheWorker;Lcom/millennialmedia/android/DTOCachedVideo;)V

    invoke-static {v1, v2, v0, v3}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 179
    :cond_1
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 128
    const-string v0, "PreCacheWorker"

    const-string v1, "Pre cache worker: Millennial ad return failed. Invalid response data."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 132
    const-string v0, "PreCacheWorker"

    const-string v1, "Pre cache worker: Millennial ad return failed. Invalid response data."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_2
    :try_start_2
    iget-object v0, p1, Lcom/millennialmedia/android/DTOCachedVideo;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->a(Ljava/lang/String;)V

    .line 171
    iget-object v0, p1, Lcom/millennialmedia/android/DTOCachedVideo;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 173
    :catch_2
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 175
    const-string v1, "PreCacheWorker"

    const-string v2, "Pre cache worker interrupted: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c(Lcom/millennialmedia/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 184
    iget-object v0, p1, Lcom/millennialmedia/android/DTOCachedVideo;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p1, Lcom/millennialmedia/android/DTOCachedVideo;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->a(Ljava/lang/String;)V

    .line 186
    iget-object v0, p1, Lcom/millennialmedia/android/DTOCachedVideo;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/millennialmedia/android/DTOCachedVideo;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "video.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/PreCacheWorker;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/AdCache;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p1, Lcom/millennialmedia/android/DTOCachedVideo;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->a(Ljava/lang/String;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p1, Lcom/millennialmedia/android/DTOCachedVideo;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/PreCacheWorker;->b:[Lcom/millennialmedia/android/DTOCachedVideo;

    if-eqz v1, :cond_4

    .line 62
    iget-object v2, p0, Lcom/millennialmedia/android/PreCacheWorker;->b:[Lcom/millennialmedia/android/DTOCachedVideo;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v0, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    new-instance v4, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v4}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    .line 65
    iget-object v5, v0, Lcom/millennialmedia/android/DTOCachedVideo;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/millennialmedia/android/HttpGetRequest;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 66
    if-nez v4, :cond_0

    .line 67
    const-string v0, "PreCacheWorker"

    const-string v4, "Pre cache worker: HTTP response is null"

    invoke-static {v0, v4}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 77
    if-nez v4, :cond_2

    .line 78
    :try_start_2
    const-string v0, "PreCacheWorker"

    const-string v4, "Pre cache worker: Null HTTP entity"

    invoke-static {v0, v4}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 90
    :catchall_0
    move-exception v0

    :try_start_3
    const-class v1, Lcom/millennialmedia/android/PreCacheWorker;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    const/4 v2, 0x0

    :try_start_4
    sput-boolean v2, Lcom/millennialmedia/android/PreCacheWorker;->a:Z

    .line 92
    iget-boolean v2, p0, Lcom/millennialmedia/android/PreCacheWorker;->e:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/android/PreCacheWorker;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/android/PreCacheWorker;->b:[Lcom/millennialmedia/android/DTOCachedVideo;

    if-nez v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/millennialmedia/android/PreCacheWorker;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Event;->a(Ljava/lang/String;)V

    .line 97
    :cond_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 90
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 61
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    :try_start_6
    const-string v4, "PreCacheWorker"

    const-string v5, "Pre cache worker HTTP error: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 82
    :cond_2
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 83
    const-string v0, "PreCacheWorker"

    const-string v4, "Pre cache worker: Millennial ad return failed. Zero content length returned."

    invoke-static {v0, v4}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_3
    invoke-direct {p0, v0, v4}, Lcom/millennialmedia/android/PreCacheWorker;->a(Lcom/millennialmedia/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 90
    :cond_4
    :try_start_7
    const-class v1, Lcom/millennialmedia/android/PreCacheWorker;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 91
    const/4 v0, 0x0

    :try_start_8
    sput-boolean v0, Lcom/millennialmedia/android/PreCacheWorker;->a:Z

    .line 92
    iget-boolean v0, p0, Lcom/millennialmedia/android/PreCacheWorker;->e:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/android/PreCacheWorker;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/android/PreCacheWorker;->b:[Lcom/millennialmedia/android/DTOCachedVideo;

    if-nez v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/millennialmedia/android/PreCacheWorker;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->a(Ljava/lang/String;)V

    .line 97
    :cond_5
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 99
    monitor-exit p0

    return-void

    .line 97
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
.end method
