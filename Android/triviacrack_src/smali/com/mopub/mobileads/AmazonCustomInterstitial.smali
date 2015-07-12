.class public Lcom/mopub/mobileads/AmazonCustomInterstitial;
.super Lcom/etermax/mopubads/custom/BaseCustomEventInterstitial;
.source "SourceFile"


# instance fields
.field private a:Lcom/amazon/device/ads/InterstitialAd;

.field private b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/mopubads/custom/BaseCustomEventInterstitial;-><init>()V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/AmazonCustomInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonCustomInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Lorg/json/JSONObject;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p2, p0, Lcom/mopub/mobileads/AmazonCustomInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 31
    :try_start_0
    const-string v0, "appId"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    const/4 v0, 0x0

    .line 34
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 35
    check-cast p1, Landroid/app/Activity;

    .line 38
    :goto_0
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonCustomInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 56
    :goto_1
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/mopub/mobileads/AmazonCustomCommon;->init(Ljava/lang/String;Z)V

    .line 45
    const-string v0, "MoPub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Amazon Interstitial - Loading ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/amazon/device/ads/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/amazon/device/ads/InterstitialAd;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AmazonCustomInterstitial;->a:Lcom/amazon/device/ads/InterstitialAd;

    .line 48
    new-instance v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/mopub/mobileads/AmazonCustomInterstitial;->a:Lcom/amazon/device/ads/InterstitialAd;

    new-instance v2, Lcom/mopub/mobileads/i;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/i;-><init>(Lcom/mopub/mobileads/AmazonCustomInterstitial;)V

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/InterstitialAd;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 51
    iget-object v1, p0, Lcom/mopub/mobileads/AmazonCustomInterstitial;->a:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/InterstitialAd;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string v0, "MoPub"

    const-string v1, "Amazon Interstitial ad failed to load."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonCustomInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_1

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonCustomInterstitial;->a:Lcom/amazon/device/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonCustomInterstitial;->a:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 76
    iput-object v1, p0, Lcom/mopub/mobileads/AmazonCustomInterstitial;->a:Lcom/amazon/device/ads/InterstitialAd;

    .line 78
    :cond_0
    return-void
.end method

.method protected showInterstitial()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonCustomInterstitial;->a:Lcom/amazon/device/ads/InterstitialAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/AmazonCustomInterstitial;->a:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->isLoading()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/AmazonCustomInterstitial;->a:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonCustomInterstitial;->a:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->showAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "MoPub"

    const-string v1, "Amazon interstitial shown"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonCustomInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Amazon interstitial failed to show"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_1
    const-string v0, "MoPub"

    const-string v1, "Tried to show an Amazon interstitial ad before it finished loading. Please try again."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
