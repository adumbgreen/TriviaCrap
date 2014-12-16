.class public Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;
.super Lcom/etermax/admob/custom/BaseCustomEventInterstitial;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# instance fields
.field mHandler:Landroid/os/Handler;

.field mInterstitialView:Lcom/millennialmedia/android/MMInterstitial;

.field mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/etermax/admob/custom/BaseCustomEventInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onDismissScreen()V

    .line 128
    const-string v0, "admob ads"

    const-string v1, "MillennialCustomEventInterstitial - MMAdOverlayClosed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onPresentScreen()V

    .line 101
    const-string v0, "admob ads"

    const-string v1, "MillennialCustomEventInterstitial - MMAdOverlayLaunched"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    const-string v0, "admob ads"

    const-string v1, "MillennialCustomEventInterstitial - MMAdRequestIsCaching"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;->mInterstitialView:Lcom/millennialmedia/android/MMInterstitial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMInterstitial;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 32
    invoke-super {p0}, Lcom/etermax/admob/custom/BaseCustomEventInterstitial;->destroy()V

    .line 33
    return-void
.end method

.method public onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    const-string v0, "admob ads"

    const-string v1, "MillennialCustomEventInterstitial - onSingleTap"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V

    .line 112
    const-string v0, "admob ads"

    const-string v1, "MillennialCustomEventInterstitial - requestCompleted"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
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
    .line 38
    iput-object p1, p0, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    .line 46
    :try_start_0
    invoke-static {p2}, Lcom/millennialmedia/android/MMSDK;->initialize(Landroid/content/Context;)V

    .line 48
    invoke-static {p4}, Lcom/etermax/admob/millennial/MillennialHelper;->getApId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 50
    new-instance v2, Lcom/millennialmedia/android/MMInterstitial;

    invoke-direct {v2, p2}, Lcom/millennialmedia/android/MMInterstitial;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;->mInterstitialView:Lcom/millennialmedia/android/MMInterstitial;

    .line 51
    iget-object v2, p0, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;->mInterstitialView:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v2, v0}, Lcom/millennialmedia/android/MMInterstitial;->setApid(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;->mInterstitialView:Lcom/millennialmedia/android/MMInterstitial;

    const/4 v3, 0x0

    invoke-static {v2, v1, p5, v3}, Lcom/etermax/admob/millennial/MillennialHelper;->populateAdViewParameters(Lcom/millennialmedia/android/MMAd;Ljava/util/Hashtable;Lcom/google/ads/mediation/MediationAdRequest;Lcom/etermax/admob/millennial/MillennialAdapterExtras;)V

    .line 54
    iget-object v1, p0, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;->mInterstitialView:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v1, p0}, Lcom/millennialmedia/android/MMInterstitial;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 56
    iget-object v1, p0, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;->mInterstitialView:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMInterstitial;->fetch()V

    .line 58
    const-string v1, "admob ads"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MillennialCustomEventInterstitial - fetching Millennial apid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 117
    const-string v0, "admob ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MillennialCustomEventInterstitial - requestFailed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getCode()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    .line 66
    const-string v0, "admob ads"

    const-string v1, "MillennialCustomEventInterstitial - showInterstitial"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;->mInterstitialView:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->isAdAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No Ad Available!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v1, "admob ads"

    const-string v2, "MillennialCustomEventInterstitial - Excepci\u00f3n mostrando ad Millennial"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial$2;

    invoke-direct {v1, p0}, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial$2;-><init>(Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 95
    :goto_0
    return-void

    .line 71
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;->mInterstitialView:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->display()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    :try_start_3
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial$1;

    invoke-direct {v1, p0}, Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial$1;-><init>(Lcom/etermax/admob/millennial/MillennialCustomEventInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    .line 80
    :try_start_4
    const-string v1, "admob ads"

    const-string v2, "MillennialCustomEventInterstitial - Error calling ShowInterstitialListener onSuccess()"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 91
    :catch_2
    move-exception v0

    .line 92
    const-string v1, "admob ads"

    const-string v2, "MillennialCustomEventInterstitial - Error calling ShowInterstitialListener onFailed()"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
