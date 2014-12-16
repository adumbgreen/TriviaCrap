.class public Lcom/etermax/admob/amazon/AmazonCustomInterstitial;
.super Lcom/etermax/admob/custom/BaseCustomEventInterstitial;
.source "SourceFile"


# instance fields
.field private mAmazonInterstitial:Lcom/amazon/device/ads/InterstitialAd;

.field private mInterstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/admob/custom/BaseCustomEventInterstitial;-><init>()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/etermax/admob/amazon/AmazonCustomInterstitial;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->mInterstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->mAmazonInterstitial:Lcom/amazon/device/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->mAmazonInterstitial:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 72
    iput-object v1, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->mAmazonInterstitial:Lcom/amazon/device/ads/InterstitialAd;

    .line 74
    :cond_0
    invoke-super {p0}, Lcom/etermax/admob/custom/BaseCustomEventInterstitial;->destroy()V

    .line 75
    return-void
.end method

.method protected requestCustomInterstitialAd(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->mInterstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 32
    :try_start_0
    const-string v0, "appId"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    if-eqz p2, :cond_0

    if-nez v0, :cond_1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->mInterstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 52
    :goto_0
    return-void

    .line 39
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/etermax/admob/amazon/AmazonCustomCommon;->init(Ljava/lang/String;Z)V

    .line 41
    const-string v1, "MoPub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Amazon Interstitial - Loading ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/amazon/device/ads/InterstitialAd;

    invoke-direct {v0, p2}, Lcom/amazon/device/ads/InterstitialAd;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->mAmazonInterstitial:Lcom/amazon/device/ads/InterstitialAd;

    .line 44
    new-instance v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->mAmazonInterstitial:Lcom/amazon/device/ads/InterstitialAd;

    new-instance v2, Lcom/etermax/admob/amazon/AmazonCustomInterstitial$AmazonInterstitialAdListener;

    invoke-direct {v2, p0}, Lcom/etermax/admob/amazon/AmazonCustomInterstitial$AmazonInterstitialAdListener;-><init>(Lcom/etermax/admob/amazon/AmazonCustomInterstitial;)V

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/InterstitialAd;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 47
    iget-object v1, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->mAmazonInterstitial:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/InterstitialAd;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string v0, "MoPub"

    const-string v1, "Amazon Interstitial ad failed to load."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->mInterstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->mAmazonInterstitial:Lcom/amazon/device/ads/InterstitialAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->mAmazonInterstitial:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->isLoading()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->mAmazonInterstitial:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->mAmazonInterstitial:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->showAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "MoPub"

    const-string v1, "Amazon interstitial shown"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->mInterstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onPresentScreen()V

    .line 66
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Amazon interstitial failed to show"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    const-string v0, "MoPub"

    const-string v1, "Tried to show an Amazon interstitial ad before it finished loading. Please try again."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
