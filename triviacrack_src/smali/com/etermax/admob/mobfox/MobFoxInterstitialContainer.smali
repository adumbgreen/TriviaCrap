.class public Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adsdk/sdk/AdListener;


# instance fields
.field private mAdManager:Lcom/adsdk/sdk/AdManager;

.field private mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "admob ads"

    const-string v1, "MobFoxInterstitialContainer"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iput-object p3, p0, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 19
    new-instance v0, Lcom/adsdk/sdk/AdManager;

    const-string v1, "http://my.mobfox.com/vrequest.php"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/adsdk/sdk/AdManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->mAdManager:Lcom/adsdk/sdk/AdManager;

    .line 20
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->mAdManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/AdManager;->setListener(Lcom/adsdk/sdk/AdListener;)V

    .line 21
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->mAdManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdManager;->requestAd()V

    .line 22
    return-void
.end method


# virtual methods
.method public adClicked()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "admob ads"

    const-string v1, "MobFoxInterstitialContainer - adClicked"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public adClosed(Lcom/adsdk/sdk/Ad;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 54
    const-string v0, "admob ads"

    const-string v1, "MobFoxInterstitialContainer - adClosed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onDismissScreen()V

    .line 56
    return-void
.end method

.method public adLoadSucceeded(Lcom/adsdk/sdk/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    const-string v0, "admob ads"

    const-string v1, "MobFoxInterstitialContainer - adLoadSucceeded"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V

    .line 62
    return-void
.end method

.method public adShown(Lcom/adsdk/sdk/Ad;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    const-string v0, "admob ads"

    const-string v1, "MobFoxInterstitialContainer - adShown"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onPresentScreen()V

    .line 68
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->mAdManager:Lcom/adsdk/sdk/AdManager;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->mAdManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdManager;->release()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->mAdManager:Lcom/adsdk/sdk/AdManager;

    .line 45
    :cond_0
    return-void
.end method

.method public isAdLoaded()Z
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->mAdManager:Lcom/adsdk/sdk/AdManager;

    if-eqz v0, :cond_0

    .line 26
    const-string v0, "admob ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MobFoxInterstitialContainer - isAdLoaded - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->mAdManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v2}, Lcom/adsdk/sdk/AdManager;->isAdLoaded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->mAdManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdManager;->isAdLoaded()Z

    move-result v0

    .line 30
    :goto_0
    return v0

    .line 29
    :cond_0
    const-string v0, "admob ads"

    const-string v1, "MobFoxInterstitialContainer - isAdLoaded - false - mAdManager == null"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noAdFound()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "admob ads"

    const-string v1, "MobFoxInterstitialContainer - noAdFound"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 74
    return-void
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "admob ads"

    const-string v1, "MobFoxInterstitialContainer - showInterstitial"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->mAdManager:Lcom/adsdk/sdk/AdManager;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxInterstitialContainer;->mAdManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdManager;->showAd()V

    .line 38
    :cond_0
    return-void
.end method
