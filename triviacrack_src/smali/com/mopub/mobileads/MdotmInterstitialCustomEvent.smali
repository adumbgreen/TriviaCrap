.class public Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;
.super Lcom/etermax/mopubads/custom/BaseCustomEventInterstitial;
.source "SourceFile"

# interfaces
.implements Lcom/mdotm/android/c/d;


# instance fields
.field a:Lcom/mdotm/android/view/b;

.field b:Landroid/app/Activity;

.field private c:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/etermax/mopubads/custom/BaseCustomEventInterstitial;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Lorg/json/JSONObject;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p2, p0, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->c:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 27
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 28
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->b:Landroid/app/Activity;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->b:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->c:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 70
    :goto_0
    return-void

    .line 45
    :cond_1
    :try_start_0
    const-string v0, "key"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_2

    .line 48
    new-instance v1, Lcom/mdotm/android/d/a;

    invoke-direct {v1}, Lcom/mdotm/android/d/a;-><init>()V

    .line 49
    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/a;->b(Ljava/lang/String;)V

    .line 53
    const-string v0, "0"

    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/a;->a(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/mdotm/android/d/a;->a(Z)V

    .line 60
    new-instance v0, Lcom/mdotm/android/view/b;

    iget-object v2, p0, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->b:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/mdotm/android/view/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->a:Lcom/mdotm/android/view/b;

    .line 62
    iget-object v0, p0, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->a:Lcom/mdotm/android/view/b;

    invoke-virtual {v0, p0, v1}, Lcom/mdotm/android/view/b;->a(Lcom/mdotm/android/c/d;Lcom/mdotm/android/d/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v0, "MdotMAdapter"

    const-string v1, "Android api version is less than 7 (i.e 2.1)"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->onFailedToReceiveInterstitialAd()V

    goto :goto_0

    .line 64
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->onFailedToReceiveInterstitialAd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public didShowInterstitial()V
    .locals 2

    .prologue
    .line 165
    const-string v0, "MoPub"

    const-string v1, "did show interstitial"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->c:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 167
    return-void
.end method

.method public onBannerAdClick()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "MoPub"

    const-string v1, " banner AdClick"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onDismissScreen()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "MoPub"

    const-string v1, "banner Dismiss"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public onFailedToReceiveBannerAd()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "MoPub"

    const-string v1, "Failed to receive banner ad"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onFailedToReceiveInterstitialAd()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "MoPub"

    const-string v1, "MdotM interstitial ad failed to load."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->c:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 109
    return-void
.end method

.method public onInterstitialAdClick()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->c:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 121
    return-void
.end method

.method public onInterstitialDismiss()V
    .locals 2

    .prologue
    .line 132
    const-string v0, "MoPub"

    const-string v1, "MdotM interstitial ad dismissed."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->c:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 134
    return-void
.end method

.method public onInvalidate()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onLeaveApplicationFromBanner()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "MoPub"

    const-string v1, "banner LeaveApplication"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public onLeaveApplicationFromInterstitial()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->c:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onLeaveApplication()V

    .line 146
    return-void
.end method

.method public onReceiveBannerAd()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onReceiveInterstitialAd()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->c:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 154
    return-void
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 75
    const-string v0, "MoPub"

    const-string v1, "Showing MdotM interstitial ad."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->a:Lcom/mdotm/android/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->a:Lcom/mdotm/android/view/b;

    iget-object v1, p0, Lcom/mopub/mobileads/MdotmInterstitialCustomEvent;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/b;->a(Landroid/app/Activity;)V

    .line 81
    :cond_0
    return-void
.end method

.method public willShowInterstitial()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "MoPub"

    const-string v1, "will show interstitial"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method
