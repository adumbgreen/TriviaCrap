.class public Lcom/mopub/mobileads/MdotmBannerCustomEvent;
.super Lcom/etermax/mopubads/custom/BaseCustomEventBanner;
.source "SourceFile"

# interfaces
.implements Lcom/mdotm/android/c/d;


# instance fields
.field private a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

.field private b:Lcom/mdotm/android/view/MdotMAdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etermax/mopubads/custom/BaseCustomEventBanner;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Lorg/json/JSONObject;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p2, p0, Lcom/mopub/mobileads/MdotmBannerCustomEvent;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 27
    const/4 v0, 0x0

    .line 28
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 29
    check-cast p1, Landroid/app/Activity;

    .line 32
    :goto_0
    if-nez p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/mopub/mobileads/MdotmBannerCustomEvent;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 58
    :goto_1
    return-void

    .line 38
    :cond_0
    :try_start_0
    const-string v0, "key"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    .line 42
    new-instance v1, Lcom/mdotm/android/view/MdotMAdView;

    invoke-direct {v1, p1}, Lcom/mdotm/android/view/MdotMAdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mobileads/MdotmBannerCustomEvent;->b:Lcom/mdotm/android/view/MdotMAdView;

    .line 43
    new-instance v1, Lcom/mdotm/android/d/a;

    invoke-direct {v1}, Lcom/mdotm/android/d/a;-><init>()V

    .line 44
    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/a;->b(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/mdotm/android/e/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/a;->c(Ljava/lang/String;)V

    .line 46
    const-string v0, "0"

    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/a;->a(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/a;->a(Z)V

    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/MdotmBannerCustomEvent;->b:Lcom/mdotm/android/view/MdotMAdView;

    invoke-virtual {v0, p0, v1}, Lcom/mdotm/android/view/MdotMAdView;->b(Lcom/mdotm/android/c/d;Lcom/mdotm/android/d/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v0, "MoPub"

    const-string v1, "MdotM supports from android version 2.1 and above"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/mopub/mobileads/MdotmBannerCustomEvent;->onFailedToReceiveBannerAd()V

    goto :goto_1

    .line 50
    :cond_1
    :try_start_1
    const-string v0, "MoPub"

    const-string v1, "MdotM supports from android version 2.1 and above"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/mopub/mobileads/MdotmBannerCustomEvent;->onFailedToReceiveBannerAd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method public didShowInterstitial()V
    .locals 1

    .prologue
    .line 132
    const-string v0, "did show interstitial"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public onBannerAdClick()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "MoPub"

    const-string v1, "MdotM banner ad clicked."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/MdotmBannerCustomEvent;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 85
    return-void
.end method

.method public onDismissScreen()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onFailedToReceiveBannerAd()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "MoPub"

    const-string v1, "MdotM banner ad failed to load."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/MdotmBannerCustomEvent;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 79
    return-void
.end method

.method public onFailedToReceiveInterstitialAd()V
    .locals 1

    .prologue
    .line 99
    const-string v0, "Failed to receive interstitial ad"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public onInterstitialAdClick()V
    .locals 1

    .prologue
    .line 105
    const-string v0, " interstitial AdClick"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onInterstitialDismiss()V
    .locals 1

    .prologue
    .line 111
    const-string v0, "interstitial dismiss"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onInvalidate()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onLeaveApplicationFromBanner()V
    .locals 1

    .prologue
    .line 116
    const-string v0, "banner LeaveApplication"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/mopub/mobileads/MdotmBannerCustomEvent;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onLeaveApplication()V

    .line 118
    return-void
.end method

.method public onLeaveApplicationFromInterstitial()V
    .locals 1

    .prologue
    .line 122
    const-string v0, "interstitial  LeaveApplication"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public onReceiveBannerAd()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/MdotmBannerCustomEvent;->b:Lcom/mdotm/android/view/MdotMAdView;

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "MoPub"

    const-string v1, "MdotM banner ad loaded successfully. Showing ad..."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/MdotmBannerCustomEvent;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    iget-object v1, p0, Lcom/mopub/mobileads/MdotmBannerCustomEvent;->b:Lcom/mdotm/android/view/MdotMAdView;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/MdotmBannerCustomEvent;->onFailedToReceiveBannerAd()V

    goto :goto_0
.end method

.method public onReceiveInterstitialAd()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public willShowInterstitial()V
    .locals 1

    .prologue
    .line 127
    const-string v0, "will show interstitial"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    return-void
.end method
