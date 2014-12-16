.class public Lcom/etermax/admob/lifestreet/LifeStreetCustomEventInterstitial;
.super Lcom/etermax/admob/custom/BaseCustomEventInterstitial;
.source "SourceFile"


# instance fields
.field mContainer:Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/etermax/admob/custom/BaseCustomEventInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetCustomEventInterstitial;->mContainer:Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetCustomEventInterstitial;->mContainer:Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;

    invoke-virtual {v0}, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->destroy()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetCustomEventInterstitial;->mContainer:Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;

    .line 25
    :cond_0
    invoke-super {p0}, Lcom/etermax/admob/custom/BaseCustomEventInterstitial;->destroy()V

    .line 26
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
    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    .line 34
    :try_start_0
    const-string v0, "key"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://mobile-android.lfstmedia.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;

    invoke-direct {v1, p1, p2, v0, p5}, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;-><init>(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/mediation/MediationAdRequest;)V

    iput-object v1, p0, Lcom/etermax/admob/lifestreet/LifeStreetCustomEventInterstitial;->mContainer:Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    .line 45
    const-string v0, "admob ads"

    const-string v1, "LifeStreetCustomEventInterstitial - showInterstitial"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetCustomEventInterstitial;->mContainer:Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;

    invoke-virtual {v0}, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->showInterstitial()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    :try_start_1
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/admob/lifestreet/LifeStreetCustomEventInterstitial$1;

    invoke-direct {v1, p0}, Lcom/etermax/admob/lifestreet/LifeStreetCustomEventInterstitial$1;-><init>(Lcom/etermax/admob/lifestreet/LifeStreetCustomEventInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    :try_start_2
    const-string v1, "admob ads"

    const-string v2, "LifeStreetCustomEventInterstitial - Error calling ShowInterstitialListener onSuccess()"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    .line 59
    const-string v1, "admob ads"

    const-string v2, "Excepci\u00f3n mostrando ad LifeStreet"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    :try_start_3
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/admob/lifestreet/LifeStreetCustomEventInterstitial$2;

    invoke-direct {v1, p0}, Lcom/etermax/admob/lifestreet/LifeStreetCustomEventInterstitial$2;-><init>(Lcom/etermax/admob/lifestreet/LifeStreetCustomEventInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 67
    :catch_2
    move-exception v0

    .line 68
    const-string v1, "admob ads"

    const-string v2, "LifeStreetCustomEventInterstitial - Error calling ShowInterstitialListener onFailed()"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
