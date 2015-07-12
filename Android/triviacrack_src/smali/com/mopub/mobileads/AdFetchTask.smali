.class public Lcom/mopub/mobileads/AdFetchTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/mopub/mobileads/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/mopub/mobileads/TaskTracker;

.field private b:Lcom/mopub/mobileads/AdViewController;

.field private c:Ljava/lang/Exception;

.field private d:Lorg/apache/http/client/HttpClient;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Lcom/mopub/mobileads/b;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/TaskTracker;Lcom/mopub/mobileads/AdViewController;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    sget-object v0, Lcom/mopub/mobileads/b;->NOT_SET:Lcom/mopub/mobileads/b;

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->g:Lcom/mopub/mobileads/b;

    .line 30
    iput-object p1, p0, Lcom/mopub/mobileads/AdFetchTask;->a:Lcom/mopub/mobileads/TaskTracker;

    .line 32
    iput-object p2, p0, Lcom/mopub/mobileads/AdFetchTask;->b:Lcom/mopub/mobileads/AdViewController;

    .line 33
    invoke-static {p4}, Lcom/mopub/mobileads/factories/HttpClientFactory;->create(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->d:Lorg/apache/http/client/HttpClient;

    .line 34
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->a:Lcom/mopub/mobileads/TaskTracker;

    invoke-virtual {v0}, Lcom/mopub/mobileads/TaskTracker;->getCurrentTaskId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/AdFetchTask;->e:J

    .line 35
    iput-object p3, p0, Lcom/mopub/mobileads/AdFetchTask;->f:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/mopub/mobileads/c;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 52
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 53
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->USER_AGENT:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v2}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdFetchTask;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetchTask;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/mopub/mobileads/AdFetchTask;->d:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 59
    invoke-direct {p0, v1}, Lcom/mopub/mobileads/AdFetchTask;->b(Lorg/apache/http/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/mopub/mobileads/AdFetchTask;->b:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v2, v1}, Lcom/mopub/mobileads/AdViewController;->a(Lorg/apache/http/HttpResponse;)V

    .line 63
    invoke-direct {p0, v1}, Lcom/mopub/mobileads/AdFetchTask;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->b:Lcom/mopub/mobileads/AdViewController;

    invoke-static {v1, v0}, Lcom/mopub/mobileads/c;->a(Lorg/apache/http/HttpResponse;Lcom/mopub/mobileads/AdViewController;)Lcom/mopub/mobileads/c;

    move-result-object v0

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdFetchTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    sget-object v1, Lcom/mopub/mobileads/b;->FETCH_CANCELLED:Lcom/mopub/mobileads/b;

    iput-object v1, p0, Lcom/mopub/mobileads/AdFetchTask;->g:Lcom/mopub/mobileads/b;

    .line 126
    :goto_0
    return v0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/AdFetchTask;->b:Lcom/mopub/mobileads/AdViewController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mopub/mobileads/AdFetchTask;->b:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdViewController;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    :cond_1
    const-string v1, "Error loading ad: AdViewController has already been GCed or destroyed."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lorg/apache/http/HttpResponse;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 70
    const-string v1, "1"

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->WARMUP:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {p1, v2}, Lcom/mopub/mobileads/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Unit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdFetchTask;->b:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/AdViewController;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is still warming up. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Please try again in a few minutes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 73
    sget-object v1, Lcom/mopub/mobileads/b;->AD_WARMING_UP:Lcom/mopub/mobileads/b;

    iput-object v1, p0, Lcom/mopub/mobileads/AdFetchTask;->g:Lcom/mopub/mobileads/b;

    .line 85
    :goto_0
    return v0

    .line 78
    :cond_0
    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {p1, v1}, Lcom/mopub/mobileads/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v1

    .line 79
    const-string v2, "clear"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ads found for adunit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdFetchTask;->b:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/AdViewController;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/mopub/mobileads/b;->CLEAR_AD_TYPE:Lcom/mopub/mobileads/b;

    iput-object v1, p0, Lcom/mopub/mobileads/AdFetchTask;->g:Lcom/mopub/mobileads/b;

    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    const v0, 0x927c0

    .line 216
    iget-object v1, p0, Lcom/mopub/mobileads/AdFetchTask;->b:Lcom/mopub/mobileads/AdViewController;

    if-nez v1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/AdFetchTask;->b:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdViewController;->h()I

    move-result v1

    .line 222
    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 223
    if-le v1, v0, :cond_1

    .line 227
    :goto_1
    iget-object v1, p0, Lcom/mopub/mobileads/AdFetchTask;->b:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/AdViewController;->a(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private b(Lorg/apache/http/HttpResponse;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 89
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 90
    :cond_0
    const-string v1, "MoPub server returned null response."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 91
    sget-object v1, Lcom/mopub/mobileads/b;->INVALID_SERVER_RESPONSE_NOBACKOFF:Lcom/mopub/mobileads/b;

    iput-object v1, p0, Lcom/mopub/mobileads/AdFetchTask;->g:Lcom/mopub/mobileads/b;

    .line 111
    :goto_0
    return v0

    .line 95
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 98
    const/16 v2, 0x190

    if-lt v1, v2, :cond_2

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server error: returned HTTP status code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Please try again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 101
    sget-object v1, Lcom/mopub/mobileads/b;->INVALID_SERVER_RESPONSE_BACKOFF:Lcom/mopub/mobileads/b;

    iput-object v1, p0, Lcom/mopub/mobileads/AdFetchTask;->g:Lcom/mopub/mobileads/b;

    goto :goto_0

    .line 105
    :cond_2
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoPub server returned invalid response: HTTP status code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 108
    sget-object v1, Lcom/mopub/mobileads/b;->INVALID_SERVER_RESPONSE_NOBACKOFF:Lcom/mopub/mobileads/b;

    iput-object v1, p0, Lcom/mopub/mobileads/AdFetchTask;->g:Lcom/mopub/mobileads/b;

    goto :goto_0

    .line 111
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->a:Lcom/mopub/mobileads/TaskTracker;

    .line 232
    iput-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->c:Ljava/lang/Exception;

    .line 233
    sget-object v0, Lcom/mopub/mobileads/b;->NOT_SET:Lcom/mopub/mobileads/b;

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->g:Lcom/mopub/mobileads/b;

    .line 234
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->d:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->d:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 242
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->d:Lorg/apache/http/client/HttpClient;

    .line 244
    :cond_1
    return-void
.end method

.method private e()Z
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->a:Lcom/mopub/mobileads/TaskTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->a:Lcom/mopub/mobileads/TaskTracker;

    iget-wide v1, p0, Lcom/mopub/mobileads/AdFetchTask;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/TaskTracker;->isMostCurrentTask(J)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/mopub/mobileads/c;
    .locals 2
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lcom/mopub/mobileads/AdFetchTask;->a(Ljava/lang/String;)Lcom/mopub/mobileads/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetchTask;->d()V

    .line 48
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    :try_start_1
    iput-object v1, p0, Lcom/mopub/mobileads/AdFetchTask;->c:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetchTask;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetchTask;->d()V

    throw v0
.end method

.method protected a(Lcom/mopub/mobileads/c;)V
    .locals 3
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetchTask;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const-string v0, "Ad response is stale."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetchTask;->c()V

    .line 194
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->b:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->b:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    :cond_1
    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {p1}, Lcom/mopub/mobileads/c;->b()V

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->a:Lcom/mopub/mobileads/TaskTracker;

    iget-wide v1, p0, Lcom/mopub/mobileads/AdFetchTask;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/TaskTracker;->markTaskCompleted(J)V

    .line 143
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetchTask;->c()V

    goto :goto_0

    .line 147
    :cond_3
    if-nez p1, :cond_6

    .line 148
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->c:Ljava/lang/Exception;

    if-eqz v0, :cond_4

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception caught while loading ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdFetchTask;->c:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 153
    :cond_4
    sget-object v0, Lcom/mopub/mobileads/AdFetchTask$1;->a:[I

    iget-object v1, p0, Lcom/mopub/mobileads/AdFetchTask;->g:Lcom/mopub/mobileads/b;

    invoke-virtual {v1}, Lcom/mopub/mobileads/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 169
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 173
    :goto_1
    iget-object v1, p0, Lcom/mopub/mobileads/AdFetchTask;->b:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 183
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->g:Lcom/mopub/mobileads/b;

    sget-object v1, Lcom/mopub/mobileads/b;->INVALID_SERVER_RESPONSE_BACKOFF:Lcom/mopub/mobileads/b;

    if-ne v0, v1, :cond_5

    .line 184
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetchTask;->b()V

    .line 185
    sget-object v0, Lcom/mopub/mobileads/b;->NOT_SET:Lcom/mopub/mobileads/b;

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->g:Lcom/mopub/mobileads/b;

    .line 192
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->a:Lcom/mopub/mobileads/TaskTracker;

    iget-wide v1, p0, Lcom/mopub/mobileads/AdFetchTask;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/TaskTracker;->markTaskCompleted(J)V

    .line 193
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetchTask;->c()V

    goto :goto_0

    .line 155
    :pswitch_0
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_1

    .line 158
    :pswitch_1
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->CANCELLED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_1

    .line 162
    :pswitch_2
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_1

    .line 166
    :pswitch_3
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_1

    .line 188
    :cond_6
    invoke-virtual {p1}, Lcom/mopub/mobileads/c;->a()V

    .line 189
    invoke-virtual {p1}, Lcom/mopub/mobileads/c;->b()V

    goto :goto_2

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdFetchTask;->a([Ljava/lang/String;)Lcom/mopub/mobileads/c;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetchTask;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const-string v0, "Ad response is stale."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetchTask;->c()V

    .line 210
    :goto_0
    return-void

    .line 204
    :cond_0
    const-string v0, "Ad loading was cancelled."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->c:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception caught while loading ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdFetchTask;->c:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetchTask;->a:Lcom/mopub/mobileads/TaskTracker;

    iget-wide v1, p0, Lcom/mopub/mobileads/AdFetchTask;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/TaskTracker;->markTaskCompleted(J)V

    .line 209
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetchTask;->c()V

    goto :goto_0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    check-cast p1, Lcom/mopub/mobileads/c;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdFetchTask;->a(Lcom/mopub/mobileads/c;)V

    return-void
.end method
