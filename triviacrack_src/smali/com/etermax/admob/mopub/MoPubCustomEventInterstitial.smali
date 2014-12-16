.class public Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;
.super Lcom/etermax/admob/custom/BaseCustomEventInterstitial;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;


# instance fields
.field interstitialLoaded:Z

.field mHandler:Landroid/os/Handler;

.field mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

.field showInterstitial:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/etermax/admob/custom/BaseCustomEventInterstitial;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    .line 22
    iput-boolean v1, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->interstitialLoaded:Z

    .line 23
    iput-boolean v1, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->showInterstitial:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 31
    :cond_0
    invoke-super {p0}, Lcom/etermax/admob/custom/BaseCustomEventInterstitial;->destroy()V

    .line 32
    return-void
.end method

.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 3
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->interstitialLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->showInterstitial:Z

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "admob ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoPubCustomEventInterstitial - onInterstitialClicked - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 3
    .parameter

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->interstitialLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->showInterstitial:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onDismissScreen()V

    .line 94
    const-string v0, "admob ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoPubCustomEventInterstitial - onInterstitialDismissed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->interstitialLoaded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->showInterstitial:Z

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 103
    :cond_0
    const-string v0, "admob ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoPubCustomEventInterstitial - onInterstitialFailed - error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 3
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->showInterstitial:Z

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->interstitialLoaded:Z

    .line 110
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V

    .line 111
    const-string v0, "admob ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoPubCustomEventInterstitial - onInterstitialLoaded - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 3
    .parameter

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->showInterstitial:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onPresentScreen()V

    .line 119
    const-string v0, "admob ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoPubCustomEventInterstitial - onInterstitialShown - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
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
    .line 37
    iput-object p1, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 40
    :try_start_0
    const-string v0, "adunit"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "admob ads"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoPubCustomEventInterstitial - adUnitId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {v1, p2, v0}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 43
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 44
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string v1, "admob ads"

    const-string v2, "MoPubCustomEventInterstitial - Exception"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    .line 55
    const-string v0, "admob ads"

    const-string v1, "MoPubCustomEventInterstitial - showInterstitial"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->showInterstitial:Z

    .line 57
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial$1;

    invoke-direct {v1, p0}, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial$1;-><init>(Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v1, "admob ads"

    const-string v2, "Error calling ShowInterstitialListener onSuccess()"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 71
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial$2;

    invoke-direct {v1, p0}, Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial$2;-><init>(Lcom/etermax/admob/mopub/MoPubCustomEventInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    const-string v1, "admob ads"

    const-string v2, "Error calling ShowInterstitialListener onFailed()"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
