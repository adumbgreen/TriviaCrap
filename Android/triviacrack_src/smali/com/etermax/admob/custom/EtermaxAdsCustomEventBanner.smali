.class public Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;
.super Lcom/etermax/admob/custom/BaseCustomEventBanner;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/a/m;


# instance fields
.field private mCustomBannerContainer:Lcom/etermax/adsinterface/a/i;

.field private mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/etermax/admob/custom/BaseCustomEventBanner;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;)Lcom/etermax/adsinterface/a/i;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;->mCustomBannerContainer:Lcom/etermax/adsinterface/a/i;

    return-object v0
.end method

.method static synthetic access$002(Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;Lcom/etermax/adsinterface/a/i;)Lcom/etermax/adsinterface/a/i;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;->mCustomBannerContainer:Lcom/etermax/adsinterface/a/i;

    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "admob ads"

    const-string v1, "CustomEventBannerTemp - destroy"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;->mCustomBannerContainer:Lcom/etermax/adsinterface/a/i;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;->mCustomBannerContainer:Lcom/etermax/adsinterface/a/i;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/i;->b()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;->mCustomBannerContainer:Lcom/etermax/adsinterface/a/i;

    .line 29
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onClick()V

    .line 55
    return-void
.end method

.method public onFailedToReceiveAd()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    .line 60
    return-void
.end method

.method public onReceivedAd(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onReceivedAd(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method protected requestCustomBannerAd(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    .line 36
    new-instance v0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner$1;-><init>(Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;Landroid/app/Activity;Lcom/google/ads/mediation/customevent/CustomEventBannerListener;)V

    invoke-static {p2, p4, v0}, Lcom/etermax/adsinterface/a/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/etermax/adsinterface/a/c;)V

    .line 50
    return-void
.end method
