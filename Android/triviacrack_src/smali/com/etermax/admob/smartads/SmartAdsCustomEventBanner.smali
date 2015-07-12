.class public Lcom/etermax/admob/smartads/SmartAdsCustomEventBanner;
.super Lcom/etermax/admob/custom/BaseCustomEventBanner;
.source "SourceFile"


# instance fields
.field private mSmartAdsContainer:Lcom/etermax/admob/smartads/SmartAdsBannerContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/etermax/admob/custom/BaseCustomEventBanner;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsCustomEventBanner;->mSmartAdsContainer:Lcom/etermax/admob/smartads/SmartAdsBannerContainer;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsCustomEventBanner;->mSmartAdsContainer:Lcom/etermax/admob/smartads/SmartAdsBannerContainer;

    invoke-virtual {v0}, Lcom/etermax/admob/smartads/SmartAdsBannerContainer;->destroy()V

    .line 21
    :cond_0
    return-void
.end method

.method protected requestCustomBannerAd(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    :try_start_0
    new-instance v0, Lcom/etermax/admob/smartads/SmartAdsHelper;

    invoke-direct {v0, p4}, Lcom/etermax/admob/smartads/SmartAdsHelper;-><init>(Lorg/json/JSONObject;)V

    .line 31
    new-instance v1, Lcom/etermax/admob/smartads/SmartAdsBannerContainer;

    invoke-virtual {v0}, Lcom/etermax/admob/smartads/SmartAdsHelper;->getSiteId()I

    move-result v2

    invoke-virtual {v0}, Lcom/etermax/admob/smartads/SmartAdsHelper;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/etermax/admob/smartads/SmartAdsHelper;->getFormatId()I

    move-result v0

    invoke-direct {v1, p2, v2, v3, v0}, Lcom/etermax/admob/smartads/SmartAdsBannerContainer;-><init>(Landroid/app/Activity;ILjava/lang/String;I)V

    iput-object v1, p0, Lcom/etermax/admob/smartads/SmartAdsCustomEventBanner;->mSmartAdsContainer:Lcom/etermax/admob/smartads/SmartAdsBannerContainer;

    .line 32
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsCustomEventBanner;->mSmartAdsContainer:Lcom/etermax/admob/smartads/SmartAdsBannerContainer;

    invoke-virtual {v0, p1}, Lcom/etermax/admob/smartads/SmartAdsBannerContainer;->loadAd(Lcom/google/ads/mediation/customevent/CustomEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method
