.class public Lcom/facebook/ads/internal/HtmlAdHandler;
.super Lcom/facebook/ads/internal/AdHandler;
.source "SourceFile"


# instance fields
.field private volatile adActivated:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;JLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/ads/internal/AdHandler;-><init>(Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;JLandroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->webView:Landroid/webkit/WebView;

    .line 35
    return-void
.end method


# virtual methods
.method public declared-synchronized activateAd()V
    .locals 4

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->adActivated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->adDataModel:Lcom/facebook/ads/internal/AdDataModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 46
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->adDataModel:Lcom/facebook/ads/internal/AdDataModel;

    check-cast v0, Lcom/facebook/ads/internal/HtmlAdDataModel;

    .line 48
    iget-object v1, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->webView:Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdDataModel;->getActivationCommand()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    iget-object v1, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->webView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdDataModel;->getActivationCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/internal/HtmlAdHandler;->scheduleImpressionRetry()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->adActivated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->webView:Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized sendImpression()V
    .locals 4

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->adDataModel:Lcom/facebook/ads/internal/AdDataModel;

    check-cast v0, Lcom/facebook/ads/internal/HtmlAdDataModel;

    .line 57
    iget-object v1, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->webView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdDataModel;->getSendImpressionCommand()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->webView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdDataModel;->getSendImpressionCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdDataModel;->getNativeImpressionUrl()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :cond_2
    :try_start_1
    new-instance v1, Lcom/facebook/ads/internal/OpenUrlTask;

    invoke-direct {v1}, Lcom/facebook/ads/internal/OpenUrlTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/OpenUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->impressionHelper:Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->impressionHelper:Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;

    invoke-interface {v0}, Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;->afterImpressionSent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAdDataModel(Lcom/facebook/ads/internal/HtmlAdDataModel;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/facebook/ads/internal/AdHandler;->setAdDataModel(Lcom/facebook/ads/internal/AdDataModel;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/HtmlAdHandler;->adActivated:Z

    .line 40
    return-void
.end method
