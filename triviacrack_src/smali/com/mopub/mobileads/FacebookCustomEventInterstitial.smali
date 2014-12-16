.class public Lcom/mopub/mobileads/FacebookCustomEventInterstitial;
.super Lcom/etermax/mopubads/custom/BaseCustomEventInterstitial;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# instance fields
.field private a:Lcom/facebook/ads/InterstitialAd;

.field private b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/etermax/mopubads/custom/BaseCustomEventInterstitial;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 111
    :try_start_0
    const-string v1, "placement_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    const-string v2, "MoPub"

    const-string v3, "Facebook interstitial extras error"

    invoke-static {v2, v3, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Lorg/json/JSONObject;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p2, p0, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 40
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 49
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v1, "A4B489B192C6FCD87350B61A1D916FC4"

    invoke-static {v1}, Lcom/facebook/ads/AdSettings;->addTestDevice(Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/facebook/ads/InterstitialAd;

    invoke-direct {v1, p1, v0}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->a:Lcom/facebook/ads/InterstitialAd;

    .line 47
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->loadAd()V

    goto :goto_0
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    const-string v0, "MoPub"

    const-string v1, "Facebook interstitial ad clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 100
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    const-string v0, "MoPub"

    const-string v1, "Facebook interstitial ad loaded successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 76
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 80
    const-string v0, "MoPub"

    const-string v1, "Facebook interstitial ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    sget-object v1, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-virtual {v1}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 88
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    sget-object v1, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-virtual {v1}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    const-string v0, "MoPub"

    const-string v1, "Facebook interstitial ad dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 106
    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    const-string v0, "MoPub"

    const-string v1, "Showing Facebook interstitial ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 94
    return-void
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->a:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->a:Lcom/facebook/ads/InterstitialAd;

    .line 66
    :cond_0
    return-void
.end method

.method protected showInterstitial()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->a:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventInterstitial;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Tried to show a Facebook interstitial ad before it finished loading. Please try again."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
