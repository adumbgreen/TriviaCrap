.class public Lcom/inmobi/commons/cache/ProductCacheConfig;
.super Lcom/inmobi/commons/cache/ProductConfig;
.source "SourceFile"


# static fields
.field public static final DEFAULT_EXPIRY:I = 0x69780

.field public static final DEFAULT_INTERVAL:I = 0x3c

.field public static final DEFAULT_MAX_RETRY:I = 0x3

.field private static a:Ljava/util/Timer;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/util/Map;
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

.field private d:Lcom/inmobi/commons/cache/CacheController$Validator;

.field private e:Lcom/inmobi/commons/cache/RetryMechanism;

.field private f:Lcom/inmobi/commons/cache/CacheController$Committer;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/inmobi/commons/cache/ProductCacheConfig;->a:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/inmobi/commons/cache/ProductConfig;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->c:Ljava/util/Map;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    .line 63
    new-instance v0, Lcom/inmobi/commons/cache/RetryMechanism;

    const/4 v1, 0x3

    const v2, 0xea60

    sget-object v3, Lcom/inmobi/commons/cache/ProductCacheConfig;->a:Ljava/util/Timer;

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/commons/cache/RetryMechanism;-><init>(IILjava/util/Timer;)V

    iput-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->e:Lcom/inmobi/commons/cache/RetryMechanism;

    .line 80
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->loadFromJSON(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string v0, "[InMobi]-4.3.0"

    const-string v1, "JSON retrieved is invalid."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/inmobi/commons/cache/CacheController$Committer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/inmobi/commons/cache/ProductCacheConfig;-><init>(Lorg/json/JSONObject;)V

    .line 70
    iput-object p2, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->f:Lcom/inmobi/commons/cache/CacheController$Committer;

    .line 71
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 174
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->c()Lcom/inmobi/commons/cache/ProductCacheConfig$b;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/inmobi/commons/cache/ProductCacheConfig$b;->a(Lcom/inmobi/commons/cache/ProductCacheConfig$b;)Ljava/lang/String;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_2

    .line 177
    iget-object v2, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    if-eqz v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-virtual {p0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/inmobi/commons/cache/CacheController$Validator;->validate(Ljava/util/Map;)Z

    move-result v2

    .line 179
    if-eqz v2, :cond_0

    .line 180
    invoke-virtual {p0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setData(Ljava/lang/String;)V

    .line 191
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setTimestamp(I)V

    .line 192
    invoke-static {v0}, Lcom/inmobi/commons/cache/ProductCacheConfig$b;->b(Lcom/inmobi/commons/cache/ProductCacheConfig$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->g:J

    .line 193
    const-string v0, "[InMobi]-4.3.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Product with url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " accepted data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getRawData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->f:Lcom/inmobi/commons/cache/CacheController$Committer;

    invoke-interface {v0}, Lcom/inmobi/commons/cache/CacheController$Committer;->onCommit()V

    .line 207
    :goto_1
    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid config."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    const-string v1, "[InMobi]-4.3.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error connecting to url, or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not return 200. Purge cache update."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    throw v0

    .line 189
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setData(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setTimestamp(I)V

    .line 199
    invoke-static {v0}, Lcom/inmobi/commons/cache/ProductCacheConfig$b;->b(Lcom/inmobi/commons/cache/ProductCacheConfig$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->g:J

    .line 200
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->f:Lcom/inmobi/commons/cache/CacheController$Committer;

    invoke-interface {v0}, Lcom/inmobi/commons/cache/CacheController$Committer;->onCommit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/inmobi/commons/cache/ProductCacheConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->a()V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/commons/cache/ProductCacheConfig;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->e:Lcom/inmobi/commons/cache/RetryMechanism;

    new-instance v1, Lcom/inmobi/commons/cache/ProductCacheConfig$a;

    invoke-direct {v1, p0}, Lcom/inmobi/commons/cache/ProductCacheConfig$a;-><init>(Lcom/inmobi/commons/cache/ProductCacheConfig;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/cache/RetryMechanism;->rescheduleTimer(Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;)V

    goto :goto_0
.end method

.method private c()Lcom/inmobi/commons/cache/ProductCacheConfig$b;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 263
    .line 267
    const-string v1, ""

    .line 268
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->c:Ljava/util/Map;

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDUtil;->bindToGetParam(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 271
    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 286
    const-string v3, "[InMobi]-4.3.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending request to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " to retreive cache.."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 290
    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->addCommonPropertiesToConnection(Ljava/net/HttpURLConnection;)V

    .line 292
    iget-wide v2, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 293
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 297
    const/16 v3, 0x130

    if-ne v2, v3, :cond_3

    .line 298
    new-instance v1, Lcom/inmobi/commons/cache/ProductCacheConfig$b;

    invoke-direct {v1, p0, v6}, Lcom/inmobi/commons/cache/ProductCacheConfig$b;-><init>(Lcom/inmobi/commons/cache/ProductCacheConfig;Lcom/inmobi/commons/cache/ProductCacheConfig$a;)V

    .line 299
    invoke-static {v1, v6}, Lcom/inmobi/commons/cache/ProductCacheConfig$b;->a(Lcom/inmobi/commons/cache/ProductCacheConfig$b;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/cache/ProductCacheConfig$b;->a(Lcom/inmobi/commons/cache/ProductCacheConfig$b;J)J

    move-object v0, v1

    .line 316
    :goto_1
    return-object v0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 278
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 303
    :cond_3
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_4

    .line 304
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Server did not return 200. "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_4
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 308
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 311
    :cond_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 312
    new-instance v2, Lcom/inmobi/commons/cache/ProductCacheConfig$b;

    invoke-direct {v2, p0, v6}, Lcom/inmobi/commons/cache/ProductCacheConfig$b;-><init>(Lcom/inmobi/commons/cache/ProductCacheConfig;Lcom/inmobi/commons/cache/ProductCacheConfig$a;)V

    .line 313
    invoke-static {v2, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig$b;->a(Lcom/inmobi/commons/cache/ProductCacheConfig$b;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig$b;->a(Lcom/inmobi/commons/cache/ProductCacheConfig$b;J)J

    move-object v0, v2

    .line 316
    goto/16 :goto_1
.end method


# virtual methods
.method public getConfig()Lcom/inmobi/commons/cache/ProductConfig;
    .locals 0

    .prologue
    .line 87
    return-object p0
.end method

.method public getData(Lcom/inmobi/commons/cache/CacheController$Validator;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    iput-object p1, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    .line 121
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setRetryNumber(I)V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 124
    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getTimestamp()I

    move-result v1

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getExpiry()I

    move-result v2

    add-int/2addr v1, v2

    sub-int v0, v1, v0

    .line 126
    if-gtz v0, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->b()V

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getRawData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData(Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/inmobi/commons/cache/CacheController$Validator;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 320
    if-eqz p1, :cond_0

    .line 321
    iput-object p1, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->c:Ljava/util/Map;

    .line 323
    :cond_0
    invoke-virtual {p0, p2}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getData(Lcom/inmobi/commons/cache/CacheController$Validator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getValidator()Lcom/inmobi/commons/cache/CacheController$Validator;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    return-object v0
.end method

.method public final loadFromJSON(Lorg/json/JSONObject;)V
    .locals 4
    .parameter

    .prologue
    .line 97
    const-string v0, "expiry"

    const v1, 0x69780

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setExpiry(I)V

    .line 98
    const-string v0, "maxRetry"

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setMaxRetry(I)V

    .line 99
    const-string v0, "retryInterval"

    const/16 v1, 0x3c

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setRetryInterval(I)V

    .line 100
    const-string v0, "lastModified"

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->g:J

    .line 101
    const-string v0, "url"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setUrl(Ljava/lang/String;)V

    .line 102
    const-string v0, "protocol"

    const-string v1, "json"

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setProtocol(Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/inmobi/commons/cache/RetryMechanism;

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getMaxRetry()I

    move-result v1

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getRetryInterval()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    sget-object v3, Lcom/inmobi/commons/cache/ProductCacheConfig;->a:Ljava/util/Timer;

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/commons/cache/RetryMechanism;-><init>(IILjava/util/Timer;)V

    iput-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->e:Lcom/inmobi/commons/cache/RetryMechanism;

    .line 106
    const-string v0, "timestamp"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setTimestamp(I)V

    .line 107
    const-string v0, "data"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setData(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method protected reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setExpiry(I)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setRetryInterval(I)V

    .line 248
    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setMaxRetry(I)V

    .line 249
    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setTimestamp(I)V

    .line 250
    invoke-virtual {p0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setUrl(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setProtocol(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0, v1}, Lcom/inmobi/commons/cache/ProductCacheConfig;->setData(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public setMap(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->c:Ljava/util/Map;

    .line 53
    return-void
.end method

.method public setValidator(Lcom/inmobi/commons/cache/CacheController$Validator;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    .line 59
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 141
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 143
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{expiry:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getExpiry()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "maxRetry:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getMaxRetry()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "retryInterval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getRetryInterval()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "protocol:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",timestamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getTimestamp()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :try_start_1
    const-string v1, "url"

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v1, "data"

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getRawData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v1, "lastModified"

    iget-wide v2, p0, Lcom/inmobi/commons/cache/ProductCacheConfig;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 150
    :goto_1
    const-string v2, "[InMobi]-4.3.0"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ill formed JSON product("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") toString"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 149
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductCacheConfig;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
