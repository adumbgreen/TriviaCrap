.class Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# static fields
.field private static final FBAD_CLOSE:Ljava/lang/String; = "close"


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/InterstitialAdActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/InterstitialAdActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;->this$0:Lcom/facebook/ads/InterstitialAdActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/InterstitialAdActivity;Lcom/facebook/ads/InterstitialAdActivity$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;-><init>(Lcom/facebook/ads/InterstitialAdActivity;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;->this$0:Lcom/facebook/ads/InterstitialAdActivity;

    #getter for: Lcom/facebook/ads/InterstitialAdActivity;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;
    invoke-static {v0}, Lcom/facebook/ads/InterstitialAdActivity;->access$200(Lcom/facebook/ads/InterstitialAdActivity;)Lcom/facebook/ads/internal/HtmlAdHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->activateAd()V

    .line 225
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".sb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 229
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 230
    const-string v1, "fbad"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "close"

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;->this$0:Lcom/facebook/ads/InterstitialAdActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAdActivity;->finish()V

    .line 246
    :cond_0
    :goto_0
    return v3

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;->this$0:Lcom/facebook/ads/InterstitialAdActivity;

    const-string v2, "com.facebook.ads.interstitial.clicked"

    #calls: Lcom/facebook/ads/InterstitialAdActivity;->sendBroadcastForEvent(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/facebook/ads/InterstitialAdActivity;->access$100(Lcom/facebook/ads/InterstitialAdActivity;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity$AdWebViewClient;->this$0:Lcom/facebook/ads/InterstitialAdActivity;

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/action/AdActionFactory;->getAdAction(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/ads/internal/action/AdAction;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_0

    .line 240
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/action/AdAction;->execute(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    invoke-static {}, Lcom/facebook/ads/InterstitialAdActivity;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error executing action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
