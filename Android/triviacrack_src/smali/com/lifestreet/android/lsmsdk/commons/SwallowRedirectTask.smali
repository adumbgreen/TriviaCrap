.class public final Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mLateCloseInterstitial:Z

.field private final mWebViewClientRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebViewClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mWebViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;->mLateCloseInterstitial:Z

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;->mWebViewRef:Ljava/lang/ref/WeakReference;

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;->mWebViewClientRef:Ljava/lang/ref/WeakReference;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;->mLateCloseInterstitial:Z

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;->mWebViewRef:Ljava/lang/ref/WeakReference;

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;->mWebViewClientRef:Ljava/lang/ref/WeakReference;

    .line 38
    iput-boolean p3, p0, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;->mLateCloseInterstitial:Z

    .line 39
    return-void
.end method

.method private getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;->mWebViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;->mWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;->mWebViewClientRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;->mWebViewClientRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClient;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 43
    aget-object v1, p1, v4

    .line 45
    new-instance v2, Lcom/lifestreet/android/lsmsdk/commons/CustomHttpClient;

    invoke-direct {v2}, Lcom/lifestreet/android/lsmsdk/commons/CustomHttpClient;-><init>()V

    .line 46
    invoke-virtual {v2}, Lcom/lifestreet/android/lsmsdk/commons/CustomHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 47
    const-string v0, "http.protocol.handle-redirects"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 49
    const/4 v0, 0x0

    .line 52
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController;->USER_AGENT:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "User-Agent"

    sget-object v5, Lcom/lifestreet/android/lsmsdk/SlotController;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    invoke-virtual {v4, v3}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 60
    invoke-virtual {v2, v4}, Lcom/lifestreet/android/lsmsdk/commons/CustomHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12d

    if-eq v2, v3, :cond_1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_2

    .line 65
    :cond_1
    const-string v2, "Location"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 73
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;->mLateCloseInterstitial:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 74
    const-string v0, "lsm://#close"

    .line 77
    :cond_3
    return-object v0

    .line 70
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 83
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/commons/SwallowRedirectTask;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {v1, v0, p1}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 88
    :cond_0
    return-void
.end method
