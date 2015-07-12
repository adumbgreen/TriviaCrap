.class public Lcom/etermax/admob/smartads/SmartAdsCustomEventInterstitial;
.super Lcom/etermax/admob/custom/BaseCustomEventInterstitial;
.source "SourceFile"


# instance fields
.field private mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

.field private mSmartAdsContainer:Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/etermax/admob/custom/BaseCustomEventInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsCustomEventInterstitial;->mSmartAdsContainer:Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsCustomEventInterstitial;->mSmartAdsContainer:Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;

    invoke-virtual {v0}, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;->destroy()V

    .line 22
    :cond_0
    invoke-super {p0}, Lcom/etermax/admob/custom/BaseCustomEventInterstitial;->destroy()V

    .line 23
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
    .line 29
    const-string v0, "admob ads"

    const-string v1, "SmartAdsIntersitial - requestInterstitialAd"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :try_start_0
    iput-object p1, p0, Lcom/etermax/admob/smartads/SmartAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 33
    new-instance v0, Lcom/etermax/admob/smartads/SmartAdsHelper;

    invoke-direct {v0, p4}, Lcom/etermax/admob/smartads/SmartAdsHelper;-><init>(Lorg/json/JSONObject;)V

    .line 36
    new-instance v1, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;

    invoke-virtual {v0}, Lcom/etermax/admob/smartads/SmartAdsHelper;->getSiteId()I

    move-result v2

    invoke-virtual {v0}, Lcom/etermax/admob/smartads/SmartAdsHelper;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/etermax/admob/smartads/SmartAdsHelper;->getFormatId()I

    move-result v0

    invoke-direct {v1, p2, v2, v3, v0}, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;-><init>(Landroid/app/Activity;ILjava/lang/String;I)V

    iput-object v1, p0, Lcom/etermax/admob/smartads/SmartAdsCustomEventInterstitial;->mSmartAdsContainer:Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;

    .line 37
    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v0, "admob ads"

    const-string v1, "SmartAdsIntersitial - adLoadingFailed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsCustomEventInterstitial;->mSmartAdsContainer:Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;

    iget-object v1, p0, Lcom/etermax/admob/smartads/SmartAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-virtual {v0, v1}, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;->loadAd(Lcom/google/ads/mediation/customevent/CustomEventListener;)V

    .line 48
    return-void
.end method
