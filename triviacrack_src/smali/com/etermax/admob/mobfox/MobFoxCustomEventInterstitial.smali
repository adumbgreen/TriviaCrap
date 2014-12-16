.class public Lcom/etermax/admob/mobfox/MobFoxCustomEventInterstitial;
.super Lcom/etermax/admob/custom/BaseCustomEventInterstitial;
.source "SourceFile"


# instance fields
.field private mContainer:Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;

.field private mHandler:Landroid/os/Handler;


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
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxCustomEventInterstitial;->mContainer:Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxCustomEventInterstitial;->mContainer:Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;

    invoke-virtual {v0}, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->destroy()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxCustomEventInterstitial;->mContainer:Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;

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
    .line 32
    :try_start_0
    const-string v0, "pid"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;

    invoke-direct {v1, p2, v0, p1}, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;)V

    iput-object v1, p0, Lcom/etermax/admob/mobfox/MobFoxCustomEventInterstitial;->mContainer:Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v1, "admob ads"

    const-string v2, "MobFoxEventInterstitial exception"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxCustomEventInterstitial;->mContainer:Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;

    invoke-virtual {v0}, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxCustomEventInterstitial;->mContainer:Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;

    invoke-virtual {v0}, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->showInterstitial()V

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/admob/mobfox/MobFoxCustomEventInterstitial$1;

    invoke-direct {v1, p0}, Lcom/etermax/admob/mobfox/MobFoxCustomEventInterstitial$1;-><init>(Lcom/etermax/admob/mobfox/MobFoxCustomEventInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v1, "MobFox"

    const-string v2, "Error calling ShowInterstitialListener onSuccess()"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 56
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/admob/mobfox/MobFoxCustomEventInterstitial$2;

    invoke-direct {v1, p0}, Lcom/etermax/admob/mobfox/MobFoxCustomEventInterstitial$2;-><init>(Lcom/etermax/admob/mobfox/MobFoxCustomEventInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 62
    :catch_1
    move-exception v0

    .line 63
    const-string v1, "MobFox"

    const-string v2, "Error calling ShowInterstitialListener onFailed()"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
