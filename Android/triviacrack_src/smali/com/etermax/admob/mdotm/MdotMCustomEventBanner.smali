.class public Lcom/etermax/admob/mdotm/MdotMCustomEventBanner;
.super Lcom/etermax/admob/custom/BaseCustomEventBanner;
.source "SourceFile"

# interfaces
.implements Lcom/mdotm/android/c/d;


# instance fields
.field mAdView:Lcom/mdotm/android/view/MdotMAdView;

.field mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/etermax/admob/custom/BaseCustomEventBanner;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public didShowInterstitial()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onBannerAdClick()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onClick()V

    .line 81
    const-string v0, "admob ads"

    const-string v1, "MdotMCustomEventBanner - onBannerAdClick"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onDismissScreen()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onDismissScreen()V

    .line 88
    const-string v0, "admob ads"

    const-string v1, "MdotMCustomEventBanner - onBannerDismissScreen"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onFailedToReceiveBannerAd()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    .line 75
    const-string v0, "admob ads"

    const-string v1, "MdotMCustomEventBanner - onFailedToReceiveBannerAd"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onFailedToReceiveInterstitialAd()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onInterstitialAdClick()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onInterstitialDismiss()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onLeaveApplicationFromBanner()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onLeaveApplication()V

    .line 94
    const-string v0, "admob ads"

    const-string v1, "MdotMCustomEventBanner - onLeaveApplicationFromBanner"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public onLeaveApplicationFromInterstitial()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onReceiveBannerAd()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    iget-object v1, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventBanner;->mAdView:Lcom/mdotm/android/view/MdotMAdView;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onReceivedAd(Landroid/view/View;)V

    .line 69
    const-string v0, "admob ads"

    const-string v1, "MdotMCustomEventBanner - onReceiveBannerAd"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public onReceiveInterstitialAd()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method protected requestCustomBannerAd(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    .line 32
    :try_start_0
    const-string v0, "key"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/mdotm/android/view/MdotMAdView;

    invoke-direct {v1, p2}, Lcom/mdotm/android/view/MdotMAdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventBanner;->mAdView:Lcom/mdotm/android/view/MdotMAdView;

    .line 35
    new-instance v1, Lcom/mdotm/android/d/a;

    invoke-direct {v1}, Lcom/mdotm/android/d/a;-><init>()V

    .line 37
    const/4 v2, 0x7

    new-array v2, v2, [Lcom/google/ads/AdSize;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/ads/AdSize;

    const/16 v5, 0x140

    const/16 v6, 0x32

    invoke-direct {v4, v5, v6}, Lcom/google/ads/AdSize;-><init>(II)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/google/ads/AdSize;

    const/16 v5, 0x12c

    const/16 v6, 0x32

    invoke-direct {v4, v5, v6}, Lcom/google/ads/AdSize;-><init>(II)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lcom/google/ads/AdSize;

    const/16 v5, 0x12c

    const/16 v6, 0xfa

    invoke-direct {v4, v5, v6}, Lcom/google/ads/AdSize;-><init>(II)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lcom/google/ads/AdSize;

    const/16 v5, 0x140

    const/16 v6, 0x1e0

    invoke-direct {v4, v5, v6}, Lcom/google/ads/AdSize;-><init>(II)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lcom/google/ads/AdSize;

    const/16 v5, 0x1e0

    const/16 v6, 0x140

    invoke-direct {v4, v5, v6}, Lcom/google/ads/AdSize;-><init>(II)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lcom/google/ads/AdSize;

    const/16 v5, 0x1d4

    const/16 v6, 0x3c

    invoke-direct {v4, v5, v6}, Lcom/google/ads/AdSize;-><init>(II)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lcom/google/ads/AdSize;

    const/16 v5, 0x2d8

    const/16 v6, 0x5a

    invoke-direct {v4, v5, v6}, Lcom/google/ads/AdSize;-><init>(II)V

    aput-object v4, v2, v3

    invoke-virtual {p5, v2}, Lcom/google/ads/AdSize;->findBestSize([Lcom/google/ads/AdSize;)Lcom/google/ads/AdSize;

    move-result-object v2

    .line 40
    if-nez v2, :cond_1

    .line 41
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    .line 42
    const-string v0, "admob ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MdotMCustomEventBanner - No Ad Retrieved -- MdotM doesn\'t support requested ad size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Lcom/mdotm/android/d/a;->c(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/a;->b(Ljava/lang/String;)V

    .line 54
    const-string v0, "0"

    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/a;->a(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/a;->a(Z)V

    .line 58
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventBanner;->mAdView:Lcom/mdotm/android/view/MdotMAdView;

    invoke-virtual {v0, p0, v1}, Lcom/mdotm/android/view/MdotMAdView;->a(Lcom/mdotm/android/c/d;Lcom/mdotm/android/d/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v1, "admob ads"

    const-string v2, "MdotMCustomEventBanner - Exception"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method

.method public willShowInterstitial()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
