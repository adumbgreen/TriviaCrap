.class Lcom/facebook/ads/AdView$AdWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/AdView;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/facebook/ads/AdView$AdWebViewClient;->this$0:Lcom/facebook/ads/AdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/AdView;Lcom/facebook/ads/AdView$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/facebook/ads/AdView$AdWebViewClient;-><init>(Lcom/facebook/ads/AdView;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/facebook/ads/AdView$AdWebViewClient;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$500(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/HtmlAdHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->activateAd()V

    .line 383
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {v0}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".sb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, Lcom/facebook/ads/AdView$AdWebViewClient;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$600(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/facebook/ads/AdView$AdWebViewClient;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$600(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$AdWebViewClient;->this$0:Lcom/facebook/ads/AdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/AdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 391
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/facebook/ads/AdView$AdWebViewClient;->this$0:Lcom/facebook/ads/AdView;

    invoke-virtual {v1}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/action/AdActionFactory;->getAdAction(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/ads/internal/action/AdAction;

    move-result-object v1

    .line 393
    iget-object v0, p0, Lcom/facebook/ads/AdView$AdWebViewClient;->this$0:Lcom/facebook/ads/AdView;

    #getter for: Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;
    invoke-static {v0}, Lcom/facebook/ads/AdView;->access$500(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/HtmlAdHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->getAdDataModel()Lcom/facebook/ads/internal/AdDataModel;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/HtmlAdDataModel;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdDataModel;->getDataModelMap()Ljava/util/Map;

    move-result-object v0

    .line 394
    const-string v2, "adInterstitialUniqueId"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    if-eqz v1, :cond_1

    .line 397
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/action/AdAction;->execute(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    invoke-static {}, Lcom/facebook/ads/AdView;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error executing action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
