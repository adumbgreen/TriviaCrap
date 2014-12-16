.class Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admarvel/android/ads/AdMarvelInternalWebView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/admarvel/android/ads/AdMarvelAd;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Load Ad: onPageFinished"

    invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->f(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->b(Z)Z

    :goto_1
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/admarvel/android/ads/AdMarvelInternalWebView$k;

    invoke-direct {v3, v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$k;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->d(Z)Z

    goto :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Load Ad: onPageStarted"

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->d(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-ne v1, v4, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CONTROLS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/w;

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->e(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-ne v2, v4, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PROGRESS_BAR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/w;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->f(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->b(Z)Z

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AdMarvelUtils.WAIT_FOR_INTERSTITIAL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/admarvel/android/ads/u;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/admarvel/android/ads/AdMarvelInternalWebView$g;

    invoke-direct {v3, v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$g;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;)V

    sget-wide v0, Lcom/admarvel/android/ads/u;->a:J

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->c(Z)Z

    goto/16 :goto_0

    :cond_4
    invoke-static {v5}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->d(Z)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AdMarvelUtils.WAIT_FOR_INTERSTITIAL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/admarvel/android/ads/u;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/admarvel/android/ads/AdMarvelInternalWebView$h;

    invoke-direct {v3, v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$h;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;)V

    sget-wide v0, Lcom/admarvel/android/ads/u;->a:J

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError - Closing AdMarvel FullScreen due to bad URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V

    :cond_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 11

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v1, "http://baseurl.admarvel.com/mraid.js"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->g(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "mraid.js"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_3
    const-string v2, ""

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v4, "http://admarvel.s3.amazonaws.com/js/admarvel_mraid_v2_complete.js"

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const-string v4, "GET"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Length"

    const-string v5, "0"

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x7d0

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v4, 0x2710

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mraid Connection Status Code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mraid Content Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0x2000

    move v4, v3

    move v5, v6

    :cond_4
    :goto_1
    const/4 v8, -0x1

    if-eq v5, v8, :cond_5

    new-array v8, v6, [B

    const/4 v5, 0x0

    invoke-virtual {v1, v8, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_4

    new-instance v9, Lcom/admarvel/android/ads/AdMarvelInternalWebView$e;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$e;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView$1;)V

    iput-object v8, v9, Lcom/admarvel/android/ads/AdMarvelInternalWebView$e;->a:[B

    iput v5, v9, Lcom/admarvel/android/ads/AdMarvelInternalWebView$e;->b:I

    add-int/2addr v4, v5

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    if-lez v4, :cond_9

    new-array v4, v4, [B

    move v2, v3

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView$e;

    iget-object v5, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView$e;->a:[B

    const/4 v6, 0x0

    iget v8, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView$e;->b:I

    invoke-static {v5, v6, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView$e;->b:I

    add-int/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    :goto_3
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v2, "text/css"

    const-string v3, "UTF-8"

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_0

    :cond_7
    :try_start_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move-object v1, v2

    goto :goto_3
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 11

    const/4 v8, 0x0

    const/high16 v10, 0x1000

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-nez v7, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->i(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v7, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;I)I

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_11

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_11

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_11

    instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v1, :cond_11

    move-object v1, v0

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v1, :cond_11

    iget-object v2, v1, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelActivity$g;

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->getProgress()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->i(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->f(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-ne v2, v9, :cond_2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/admarvel/android/ads/AdMarvelInternalWebView$k;

    invoke-direct {v3, v7, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$k;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/admarvel/android/ads/ab;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V

    :cond_3
    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-interface {v0, v1, p2}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V

    :cond_4
    move v0, v9

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c()Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz p2, :cond_9

    const-string v0, "admarvelsdk"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_9

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    const-string v2, "admarvelsdk"

    const-string v3, ""

    const-string v4, "admarvelsdk"

    invoke-static {p2, v4}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v4

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p2, v2, v3, v4, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_7
    :goto_2
    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V

    move v0, v9

    goto/16 :goto_0

    :cond_8
    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    const-string v3, "admarvelsdk"

    const-string v4, ""

    const-string v5, "admarvelsdk"

    invoke-static {p2, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v5

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {p2, v3, v4, v5, v6}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    if-eqz p2, :cond_c

    const-string v0, "admarvelinternal"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_c

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    const-string v2, "admarvelinternal"

    const-string v3, ""

    const-string v4, "admarvelinternal"

    invoke-static {p2, v4}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v4

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p2, v2, v3, v4, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_a
    :goto_3
    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V

    move v0, v9

    goto/16 :goto_0

    :cond_b
    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_a

    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    const-string v3, "admarvelinternal"

    const-string v4, ""

    const-string v5, "admarvelinternal"

    invoke-static {p2, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v5

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {p2, v3, v4, v5, v6}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    if-eqz p2, :cond_f

    const-string v0, "admarvelvideo"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_f

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_d
    :goto_4
    const-string v0, "admarvelvideo"

    const-string v2, "http://"

    const-string v3, "admarvelvideo"

    invoke-static {p2, v3}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v3

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p2, v0, v2, v3, v4}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "video/*"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V

    move v0, v9

    goto/16 :goto_0

    :cond_e
    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_d

    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-interface {v0, v2, p2}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    if-eqz p2, :cond_13

    const-string v0, "admarvelcustomvideo"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_13

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_10
    :goto_5
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAd;->removeNonStringEntriesTargetParam()V

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    const-string v3, "serialized_admarvelad"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    const-string v0, "url"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isCustomUrl"

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "xml"

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "GUID"

    iget-object v3, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V

    :cond_11
    :goto_7
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_26

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/t;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v9

    goto/16 :goto_0

    :cond_12
    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_10

    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-interface {v0, v2, p2}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :cond_13
    if-eqz p2, :cond_11

    const-string v0, "admarvelexternal"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_11

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "admarvelexternal"

    const-string v4, ""

    const-string v5, "admarvelexternal"

    invoke-static {p2, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v5

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {p2, v3, v4, v5, v6}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_14
    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V

    goto/16 :goto_7

    :cond_15
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getEnableClickRedirect()Z

    move-result v0

    if-eqz v0, :cond_1c

    if-eqz p2, :cond_17

    const-string v0, "admarvelsdk"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_17

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    const-string v2, "admarvelsdk"

    const-string v3, ""

    const-string v4, "admarvelsdk"

    invoke-static {p2, v4}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v4

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p2, v2, v3, v4, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_16
    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_0

    :cond_17
    if-eqz p2, :cond_19

    const-string v0, "admarvelinternal"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_19

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    const-string v2, "admarvelinternal"

    const-string v3, ""

    const-string v4, "admarvelinternal"

    invoke-static {p2, v4}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v4

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p2, v2, v3, v4, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v4}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_18
    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_0

    :cond_19
    if-eqz p2, :cond_1e

    const-string v0, "admarvelvideo"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_1e

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_1a
    const-string v0, "admarvelvideo"

    const-string v2, "http://"

    const-string v3, "admarvelvideo"

    invoke-static {p2, v3}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v3

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p2, v0, v2, v3, v4}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "video/*"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1b
    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    :cond_1c
    :goto_8
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_1d
    move v0, v9

    goto/16 :goto_0

    :cond_1e
    if-eqz p2, :cond_21

    const-string v0, "admarvelcustomvideo"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_21

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v4

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v5

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_1f
    :goto_9
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "url"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "isCustomUrl"

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "isInterstitial"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "isInterstitialClick"

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "xml"

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "GUID"

    iget-object v3, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_20
    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_1f

    iget-object v0, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-interface {v0, v2, p2}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V

    goto :goto_9

    :cond_21
    if-eqz p2, :cond_23

    const-string v0, "admarvelexternal"

    invoke-static {p2, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v0

    sget-object v2, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;

    if-eq v0, v2, :cond_23

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "admarvelexternal"

    const-string v4, ""

    const-string v5, "admarvelexternal"

    invoke-static {p2, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;

    move-result-object v5

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {p2, v3, v4, v5, v6}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_22
    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_23
    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->k(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v0, v9, :cond_1c

    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "url"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isInterstitial"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "isInterstitialClick"

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "xml"

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "GUID"

    iget-object v3, v7, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAd;->removeNonStringEntriesTargetParam()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$c;->c:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    const-string v3, "serialized_admarvelad"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_24
    :goto_a
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string v0, "source"

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_25
    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-virtual {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->h(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->j(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :cond_26
    move v0, v8

    goto/16 :goto_0
.end method
