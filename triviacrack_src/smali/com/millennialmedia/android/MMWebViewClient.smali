.class abstract Lcom/millennialmedia/android/MMWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field a:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

.field b:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

.field c:Z

.field private d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 20
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebViewClient;->d:Ljava/util/concurrent/ExecutorService;

    .line 26
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebViewClient;->a:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    .line 27
    iput-object p2, p0, Lcom/millennialmedia/android/MMWebViewClient;->b:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    .line 28
    return-void
.end method


# virtual methods
.method abstract a(Lcom/millennialmedia/android/MMWebView;)V
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 79
    move-object v0, p1

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 80
    invoke-virtual {v0, p2}, Lcom/millennialmedia/android/MMWebView;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebViewClient;->a:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    invoke-virtual {v1, p2}, Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;->onPageFinished(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->t()V

    .line 83
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebViewClient;->a(Lcom/millennialmedia/android/MMWebView;)V

    .line 85
    const-string v1, "MMWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageFinished webview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "url is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 33
    const-string v0, "MMWebViewClient"

    const-string v1, "onPageStarted: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebViewClient;->a:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    invoke-virtual {v0, p2}, Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;->a(Ljava/lang/String;)V

    move-object v0, p1

    .line 35
    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 36
    const-string v1, "loading"

    iput-object v1, v0, Lcom/millennialmedia/android/MMWebView;->c:Ljava/lang/String;

    .line 37
    iput-boolean v3, v0, Lcom/millennialmedia/android/MMWebView;->g:Z

    .line 38
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 39
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    const-string v0, "MMWebViewClient"

    const-string v1, "Error: %s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    move-object v0, p1

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 47
    invoke-virtual {v0, p2}, Lcom/millennialmedia/android/MMWebView;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 48
    const-string v3, "MMWebViewClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@@@@@@@@@SHOULDOVERRIDELOADING@@@@@@@@@@@@@ Url is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v3, 0x6

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mmsdk:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    const-string v0, "MMWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running JS bridge command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/millennialmedia/android/MMCommand;

    check-cast p1, Lcom/millennialmedia/android/MMWebView;

    invoke-direct {v0, p1, p2}, Lcom/millennialmedia/android/MMCommand;-><init>(Lcom/millennialmedia/android/MMWebView;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMCommand;->a()Z

    move-result v2

    iput-boolean v2, p0, Lcom/millennialmedia/android/MMWebViewClient;->c:Z

    .line 54
    iget-object v2, p0, Lcom/millennialmedia/android/MMWebViewClient;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move v0, v1

    .line 66
    :goto_0
    return v0

    .line 57
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/android/MMWebViewClient;->b:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    invoke-virtual {v3}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->isExpandingToUrl()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/android/MMWebViewClient;->b:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    iput-object p2, v2, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->a:Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lcom/millennialmedia/android/MMWebViewClient;->b:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->b:Ljava/lang/ref/WeakReference;

    .line 63
    iget-object v2, p0, Lcom/millennialmedia/android/MMWebViewClient;->b:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    iget-wide v3, v0, Lcom/millennialmedia/android/MMWebView;->a:J

    iput-wide v3, v2, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->e:J

    .line 64
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebViewClient;->b:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/HttpRedirection;->a(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    :cond_2
    move v0, v1

    .line 66
    goto :goto_0
.end method
