.class public Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;
.super Lcom/etermax/admob/custom/BaseCustomEventInterstitial;
.source "SourceFile"

# interfaces
.implements Lcom/mdotm/android/c/d;


# instance fields
.field mActivity:Landroid/app/Activity;

.field mHandler:Landroid/os/Handler;

.field mInterstitialView:Lcom/mdotm/android/view/b;

.field mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/admob/custom/BaseCustomEventInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;->mInterstitialView:Lcom/mdotm/android/view/b;

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;->mInterstitialView:Lcom/mdotm/android/view/b;

    .line 31
    :cond_0
    invoke-super {p0}, Lcom/etermax/admob/custom/BaseCustomEventInterstitial;->destroy()V

    .line 32
    return-void
.end method

.method public didShowInterstitial()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onPresentScreen()V

    .line 149
    const-string v0, "admob ads"

    const-string v1, "MdotMCustomEventInterstitial - didShowInterstitial"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public onBannerAdClick()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onDismissScreen()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onFailedToReceiveBannerAd()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onFailedToReceiveInterstitialAd()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 105
    const-string v0, "admob ads"

    const-string v1, "MdotMCustomEventInterstitial - onFailedToReceiveInterstitialAd"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onInterstitialAdClick()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "admob ads"

    const-string v1, "MdotMCustomEventInterstitial - onInterstitialAdClick"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onInterstitialDismiss()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onDismissScreen()V

    .line 123
    const-string v0, "admob ads"

    const-string v1, "MdotMCustomEventInterstitial - onInterstitialDismiss"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public onLeaveApplicationFromBanner()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onLeaveApplicationFromInterstitial()V
    .locals 2

    .prologue
    .line 132
    const-string v0, "admob ads"

    const-string v1, "MdotMCustomEventInterstitial - onLeaveApplicationFromInterstitial"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public onReceiveBannerAd()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onReceiveInterstitialAd()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V

    .line 138
    const-string v0, "admob ads"

    const-string v1, "MdotMCustomEventInterstitial - onReceiveInterstitialAd"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method protected requestCustomInterstitialAd(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 38
    iput-object p2, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;->mActivity:Landroid/app/Activity;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    .line 41
    :try_start_0
    const-string v0, "key"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/mdotm/android/d/a;

    invoke-direct {v1}, Lcom/mdotm/android/d/a;-><init>()V

    .line 45
    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/a;->b(Ljava/lang/String;)V

    .line 50
    const-string v0, "0"

    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/a;->a(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/a;->a(Z)V

    .line 55
    new-instance v0, Lcom/mdotm/android/view/b;

    iget-object v2, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/mdotm/android/view/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;->mInterstitialView:Lcom/mdotm/android/view/b;

    .line 57
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;->mInterstitialView:Lcom/mdotm/android/view/b;

    invoke-virtual {v0, p0, v1}, Lcom/mdotm/android/view/b;->a(Lcom/mdotm/android/c/d;Lcom/mdotm/android/d/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string v1, "admob ads"

    const-string v2, "MdotMCustomEventInterstitial - exception"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;->mInterstitialView:Lcom/mdotm/android/view/b;

    iget-object v1, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/b;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial$1;

    invoke-direct {v1, p0}, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial$1;-><init>(Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    :try_start_2
    const-string v1, "admob ads"

    const-string v2, "MdotMCustomEventInterstitial - Error calling ShowInterstitialListener onSuccess()"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    .line 80
    const-string v1, "admob ads"

    const-string v2, "Excepci\u00f3n mostrando ad MdotM"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    :try_start_3
    iget-object v0, p0, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial$2;

    invoke-direct {v1, p0}, Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial$2;-><init>(Lcom/etermax/admob/mdotm/MdotMCustomEventInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 88
    :catch_2
    move-exception v0

    .line 89
    const-string v1, "admob ads"

    const-string v2, "MdotMCustomEventInterstitial - Error calling ShowInterstitialListener onFailed()"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public willShowInterstitial()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method
