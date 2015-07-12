.class public final Lcom/lifestreet/android/lsmsdk/BannerAdapterController;
.super Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;
.source "SourceFile"

# interfaces
.implements Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;


# instance fields
.field private mBannerView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/lifestreet/android/lsmsdk/SlotController;Lcom/lifestreet/android/lsmsdk/AdNetwork;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;-><init>(Lcom/lifestreet/android/lsmsdk/SlotController;Lcom/lifestreet/android/lsmsdk/AdNetwork;)V

    .line 18
    return-void
.end method

.method private requestBannerAd(Lcom/lifestreet/android/lsmsdk/BannerAdapter;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/SlotContext;->newInstance(Lcom/lifestreet/android/lsmsdk/SlotController;)Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mAdNetworkController:Lcom/lifestreet/android/lsmsdk/AdNetworkController;

    invoke-interface {p1}, Lcom/lifestreet/android/lsmsdk/BannerAdapter;->getParametersClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/AdNetworkController;->mapParameters(Ljava/lang/Class;Lcom/lifestreet/android/lsmsdk/SlotController;)Ljava/lang/Object;

    move-result-object v1

    .line 164
    invoke-interface {p1, p0, v0, v1}, Lcom/lifestreet/android/lsmsdk/BannerAdapter;->getBannerAd(Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/Object;)V

    .line 165
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->checkCurrentThread()V

    .line 99
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mAdNetworkController:Lcom/lifestreet/android/lsmsdk/AdNetworkController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/AdNetworkController;->trackClick()V

    .line 100
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->getBannerAdapter()Lcom/lifestreet/android/lsmsdk/BannerAdapter;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/lifestreet/android/lsmsdk/SlotListener;->onClick(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V

    .line 104
    :cond_0
    return-void
.end method

.method public onClose(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->checkCurrentThread()V

    .line 110
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->destroyCurrentAdapterController()V

    .line 112
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->getBannerAdapter()Lcom/lifestreet/android/lsmsdk/BannerAdapter;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/lifestreet/android/lsmsdk/SlotListener;->onClose(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotView()Lcom/lifestreet/android/lsmsdk/SlotView;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mBannerView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mBannerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotView;->removeView(Landroid/view/View;)V

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mBannerView:Landroid/view/View;

    .line 156
    invoke-super {p0}, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->onDestroy()V

    .line 157
    return-void
.end method

.method public onDestroyCustomEventAdapter(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->checkCurrentThread()V

    .line 122
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->getBannerAdapter()Lcom/lifestreet/android/lsmsdk/BannerAdapter;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/lifestreet/android/lsmsdk/SlotListener;->onDestroyCustomEventBannerAdapter(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method

.method public onDismissScreen(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->checkCurrentThread()V

    .line 78
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->startAutoRefreshTimer(Z)V

    .line 79
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->getBannerAdapter()Lcom/lifestreet/android/lsmsdk/BannerAdapter;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/lifestreet/android/lsmsdk/SlotListener;->onDismissScreen(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onFailedToReceiveAd(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->checkCurrentThread()V

    .line 53
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->isNextNetworkAvailable()Z

    move-result v0

    .line 55
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->onFailedToReceive()V

    .line 57
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->getBannerAdapter()Lcom/lifestreet/android/lsmsdk/BannerAdapter;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/lifestreet/android/lsmsdk/SlotListener;->onFailedToReceiveAd(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V

    .line 61
    :cond_0
    return-void
.end method

.method public onLeaveApplication(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->checkCurrentThread()V

    .line 89
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->getBannerAdapter()Lcom/lifestreet/android/lsmsdk/BannerAdapter;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/lifestreet/android/lsmsdk/SlotListener;->onLeaveApplication(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V

    .line 93
    :cond_0
    return-void
.end method

.method public onPresentScreen(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->checkCurrentThread()V

    .line 67
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->pauseAutoRefreshTimer()V

    .line 68
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->getBannerAdapter()Lcom/lifestreet/android/lsmsdk/BannerAdapter;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/lifestreet/android/lsmsdk/SlotListener;->onPresentScreen(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V

    .line 72
    :cond_0
    return-void
.end method

.method public onReceiveAd(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->checkCurrentThread()V

    .line 24
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotView()Lcom/lifestreet/android/lsmsdk/SlotView;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, v2}, Lcom/lifestreet/android/lsmsdk/SlotController;->setRequestId(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->LOADED:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setLoadingState(Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;)V

    .line 30
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->destroyCurrentAdapterController()V

    .line 31
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->getNextAdapterController()Lcom/lifestreet/android/lsmsdk/AdapterController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setCurrentAdapterController(Lcom/lifestreet/android/lsmsdk/AdapterController;)V

    .line 32
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, v2}, Lcom/lifestreet/android/lsmsdk/SlotController;->setNextAdapterController(Lcom/lifestreet/android/lsmsdk/AdapterController;)V

    .line 34
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mBannerView:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->isShowAdsWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->showAd()V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->getBannerAdapter()Lcom/lifestreet/android/lsmsdk/BannerAdapter;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/lifestreet/android/lsmsdk/SlotListener;->onReceiveAd(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V

    .line 47
    :cond_1
    :goto_0
    return-void

    .line 45
    :cond_2
    invoke-virtual {p0, p1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->onFailedToReceiveAd(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onRequestAdFailed()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->onFailedToReceiveAd(Landroid/view/View;)V

    .line 145
    return-void
.end method

.method public requestAd()V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->getBannerAdapter()Lcom/lifestreet/android/lsmsdk/BannerAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->requestBannerAd(Lcom/lifestreet/android/lsmsdk/BannerAdapter;)V

    .line 131
    return-void
.end method

.method public showAd()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotView()Lcom/lifestreet/android/lsmsdk/SlotView;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    invoke-super {p0}, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->showAd()V

    .line 138
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mBannerView:Landroid/view/View;

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;->mAdNetwork:Lcom/lifestreet/android/lsmsdk/AdNetwork;

    invoke-virtual {v2}, Lcom/lifestreet/android/lsmsdk/AdNetwork;->getTransitionAnimation()Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/SlotView;->transitionToView(Landroid/view/View;Lcom/lifestreet/android/lsmsdk/TransitionAnimation;)V

    .line 140
    :cond_0
    return-void
.end method
