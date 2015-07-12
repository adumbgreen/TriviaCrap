.class public Lcom/mopub/common/HttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHttpClient()Landroid/net/http/AndroidHttpClient;
    .locals 3

    .prologue
    const/16 v2, 0x2710

    .line 29
    invoke-static {}, Lcom/mopub/common/util/DeviceUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 34
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 35
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 36
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 38
    return-object v0
.end method

.method public static declared-synchronized getWebViewUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    const-class v0, Lcom/mopub/common/HttpClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mopub/common/HttpClient;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initializeHttpGet(Ljava/lang/String;Landroid/content/Context;)Lorg/apache/http/client/methods/HttpGet;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/mopub/common/HttpClient;->getWebViewUserAgent()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 46
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/HttpClient;->setWebViewUserAgent(Ljava/lang/String;)V

    .line 50
    :cond_0
    invoke-static {}, Lcom/mopub/common/HttpClient;->getWebViewUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->USER_AGENT:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v2}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    return-object v0
.end method

.method public static makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    new-instance v0, Lcom/mopub/common/HttpClient$1;

    invoke-direct {v0}, Lcom/mopub/common/HttpClient$1;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 83
    new-instance v2, Lcom/mopub/common/HttpClient$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/mopub/common/HttpClient$2;-><init>(Ljava/lang/Iterable;Landroid/content/Context;Lcom/mopub/common/DownloadTask$DownloadTaskListener;)V

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mopub/common/HttpClient;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public static declared-synchronized setWebViewUserAgent(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    const-class v0, Lcom/mopub/common/HttpClient;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/mopub/common/HttpClient;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit v0

    return-void

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
