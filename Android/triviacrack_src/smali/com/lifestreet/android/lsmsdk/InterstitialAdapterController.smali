.class public final Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;
.super Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;
.source "SourceFile"

# interfaces
.implements Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;


# direct methods
.method public constructor <init>(Lcom/lifestreet/android/lsmsdk/SlotController;Lcom/lifestreet/android/lsmsdk/AdNetwork;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;-><init>(Lcom/lifestreet/android/lsmsdk/SlotController;Lcom/lifestreet/android/lsmsdk/AdNetwork;)V

    .line 14
    return-void
.end method

.method private requestInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/SlotContext;->newInstance(Lcom/lifestreet/android/lsmsdk/SlotController;)Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mAdNetworkController:Lcom/lifestreet/android/lsmsdk/AdNetworkController;

    invoke-interface {p1}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;->getParametersClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/AdNetworkController;->mapParameters(Ljava/lang/Class;Lcom/lifestreet/android/lsmsdk/SlotController;)Ljava/lang/Object;

    move-result-object v1

    .line 133
    invoke-interface {p1, p0, v0, v1}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;->getInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/Object;)V

    .line 134
    return-void
.end method


# virtual methods
.method public onClickInterstitialAd(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->checkCurrentThread()V

    .line 92
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mAdNetworkController:Lcom/lifestreet/android/lsmsdk/AdNetworkController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/AdNetworkController;->trackClick()V

    .line 93
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->getInterstitialAdapter()Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/lifestreet/android/lsmsdk/SlotListener;->onClickInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onDestroyCustomEventAdapter(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->checkCurrentThread()V

    .line 103
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->getInterstitialAdapter()Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/lifestreet/android/lsmsdk/SlotListener;->onDestroyCustomEventInterstitialAdapter(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onDismissInterstitialScreen(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->checkCurrentThread()V

    .line 71
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->startAutoRefreshTimer(Z)V

    .line 72
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->getInterstitialAdapter()Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/lifestreet/android/lsmsdk/SlotListener;->onDismissInterstitialScreen(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V

    .line 76
    :cond_0
    return-void
.end method

.method public onFailedToReceiveInterstitialAd(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->checkCurrentThread()V

    .line 46
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->isNextNetworkAvailable()Z

    move-result v0

    .line 48
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->onFailedToReceive()V

    .line 50
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->getInterstitialAdapter()Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/lifestreet/android/lsmsdk/SlotListener;->onFailedToReceiveInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onLeaveApplicationInterstitial(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->checkCurrentThread()V

    .line 82
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->getInterstitialAdapter()Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/lifestreet/android/lsmsdk/SlotListener;->onLeaveApplicationInterstitial(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V

    .line 86
    :cond_0
    return-void
.end method

.method public onPresentInterstitialScreen(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->checkCurrentThread()V

    .line 60
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->pauseAutoRefreshTimer()V

    .line 61
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->getInterstitialAdapter()Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/lifestreet/android/lsmsdk/SlotListener;->onPresentInterstitialScreen(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V

    .line 65
    :cond_0
    return-void
.end method

.method public onReceiveInterstitialAd(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->checkCurrentThread()V

    .line 20
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotView()Lcom/lifestreet/android/lsmsdk/SlotView;

    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotView;->cleanup()V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, v2}, Lcom/lifestreet/android/lsmsdk/SlotController;->setRequestId(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->LOADED:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setLoadingState(Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;)V

    .line 28
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->destroyCurrentAdapterController()V

    .line 29
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->getNextAdapterController()Lcom/lifestreet/android/lsmsdk/AdapterController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setCurrentAdapterController(Lcom/lifestreet/android/lsmsdk/AdapterController;)V

    .line 30
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, v2}, Lcom/lifestreet/android/lsmsdk/SlotController;->setNextAdapterController(Lcom/lifestreet/android/lsmsdk/AdapterController;)V

    .line 32
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->isShowAdsWhenReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->showAd()V

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->getInterstitialAdapter()Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/lifestreet/android/lsmsdk/SlotListener;->onReceiveInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V

    .line 40
    :cond_2
    return-void
.end method

.method public onRequestAdFailed()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->onFailedToReceiveInterstitialAd(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public requestAd()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->getInterstitialAdapter()Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->requestInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;)V

    .line 112
    return-void
.end method

.method public showAd()V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;->getInterstitialAdapter()Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-super {p0}, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->showAd()V

    .line 119
    invoke-interface {v0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;->showInterstitial()V

    .line 121
    :cond_0
    return-void
.end method
