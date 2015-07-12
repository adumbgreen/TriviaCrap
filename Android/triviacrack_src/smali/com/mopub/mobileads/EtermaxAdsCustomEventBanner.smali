.class public Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;
.super Lcom/etermax/mopubads/custom/BaseCustomEventBanner;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/a/m;


# instance fields
.field private a:Lcom/etermax/adsinterface/a/i;

.field private b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/etermax/mopubads/custom/BaseCustomEventBanner;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;)Lcom/etermax/adsinterface/a/i;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;->a:Lcom/etermax/adsinterface/a/i;

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;Lcom/etermax/adsinterface/a/i;)Lcom/etermax/adsinterface/a/i;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;->a:Lcom/etermax/adsinterface/a/i;

    return-object p1
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Lorg/json/JSONObject;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p2, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 25
    new-instance v0, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner$1;-><init>(Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V

    invoke-static {p1, p3, v0}, Lcom/etermax/adsinterface/a/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/etermax/adsinterface/a/c;)V

    .line 39
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 44
    return-void
.end method

.method public onFailedToReceiveAd()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 49
    return-void
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "mopub ads"

    const-string v1, "onInvalidate"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;->a:Lcom/etermax/adsinterface/a/i;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;->a:Lcom/etermax/adsinterface/a/i;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/i;->b()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;->a:Lcom/etermax/adsinterface/a/i;

    .line 63
    :cond_0
    return-void
.end method

.method public onReceivedAd(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 54
    return-void
.end method
