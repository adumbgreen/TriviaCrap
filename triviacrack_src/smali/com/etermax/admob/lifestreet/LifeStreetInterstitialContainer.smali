.class public Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;
.super Lcom/etermax/admob/lifestreet/BaseLifeStreetContainer;
.source "SourceFile"


# instance fields
.field mInterstitialSlot:Lcom/lifestreet/android/lsmsdk/InterstitialSlot;

.field mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/mediation/MediationAdRequest;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/etermax/admob/lifestreet/BaseLifeStreetContainer;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 28
    new-instance v0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;

    invoke-direct {v0, p2}, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mInterstitialSlot:Lcom/lifestreet/android/lsmsdk/InterstitialSlot;

    .line 29
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mInterstitialSlot:Lcom/lifestreet/android/lsmsdk/InterstitialSlot;

    invoke-virtual {v0, p3}, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->setSlotTag(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mInterstitialSlot:Lcom/lifestreet/android/lsmsdk/InterstitialSlot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->setAutoRefreshEnabled(Z)V

    .line 31
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mInterstitialSlot:Lcom/lifestreet/android/lsmsdk/InterstitialSlot;

    invoke-virtual {v0, p0}, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->setListener(Lcom/lifestreet/android/lsmsdk/SlotListener;)V

    .line 32
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mInterstitialSlot:Lcom/lifestreet/android/lsmsdk/InterstitialSlot;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/IntegrationType;->ADMOB:Lcom/lifestreet/android/lsmsdk/IntegrationType;

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->setIntegrationType(Lcom/lifestreet/android/lsmsdk/IntegrationType;)V

    .line 33
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mInterstitialSlot:Lcom/lifestreet/android/lsmsdk/InterstitialSlot;

    invoke-virtual {p0, p4}, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->newSlotTargetingInstance(Lcom/google/ads/mediation/MediationAdRequest;)Lcom/lifestreet/android/lsmsdk/SlotTargeting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->setTargeting(Lcom/lifestreet/android/lsmsdk/SlotTargeting;)V

    .line 34
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mInterstitialSlot:Lcom/lifestreet/android/lsmsdk/InterstitialSlot;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->fetchAd()V

    .line 36
    const-string v0, "admob ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LifeStreetInterstitialContainer - fetching key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mInterstitialSlot:Lcom/lifestreet/android/lsmsdk/InterstitialSlot;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->resume()V

    .line 38
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mInterstitialSlot:Lcom/lifestreet/android/lsmsdk/InterstitialSlot;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mInterstitialSlot:Lcom/lifestreet/android/lsmsdk/InterstitialSlot;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->pause()V

    .line 20
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mInterstitialSlot:Lcom/lifestreet/android/lsmsdk/InterstitialSlot;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->destroy()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mInterstitialSlot:Lcom/lifestreet/android/lsmsdk/InterstitialSlot;

    .line 23
    :cond_0
    return-void
.end method

.method public onClickInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    const-string v0, "admob ads"

    const-string v1, "LifeStreetInterstitialContainer - onClickInterstitialAd"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onDestroyCustomEventInterstitialAdapter(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    const-string v0, "admob ads"

    const-string v1, "LifeStreetInterstitialContainer - onDestroyCustomEventInterstitialAdapter"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onDismissInterstitialScreen(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onDismissScreen()V

    .line 57
    const-string v0, "admob ads"

    const-string v1, "LifeStreetInterstitialContainer - onDismissInterstitialScreen"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onFailedToReceiveInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 63
    const-string v0, "admob ads"

    const-string v1, "LifeStreetInterstitialContainer - onFailedToReceiveInterstitialAd"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onLeaveApplicationInterstitial(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onLeaveApplication()V

    .line 69
    const-string v0, "admob ads"

    const-string v1, "LifeStreetInterstitialContainer - onLeaveApplicationInterstitial"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public onPresentInterstitialScreen(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onPresentScreen()V

    .line 75
    const-string v0, "admob ads"

    const-string v1, "LifeStreetInterstitialContainer - onPresentScreen"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onReceiveInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V

    .line 81
    const-string v0, "admob ads"

    const-string v1, "LifeStreetInterstitialContainer - onReceiveInterstitialAd"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetInterstitialContainer;->mInterstitialSlot:Lcom/lifestreet/android/lsmsdk/InterstitialSlot;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->showAd()V

    .line 42
    return-void
.end method
