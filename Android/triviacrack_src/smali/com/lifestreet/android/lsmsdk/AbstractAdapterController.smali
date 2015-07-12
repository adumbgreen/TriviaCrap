.class public abstract Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lifestreet/android/lsmsdk/AdapterController;
.implements Lcom/lifestreet/android/lsmsdk/AdapterListener;


# instance fields
.field protected final mAdNetwork:Lcom/lifestreet/android/lsmsdk/AdNetwork;

.field protected final mAdNetworkController:Lcom/lifestreet/android/lsmsdk/AdNetworkController;

.field private mAdapter:Lcom/lifestreet/android/lsmsdk/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lifestreet/android/lsmsdk/Adapter",
            "<*>;"
        }
    .end annotation
.end field

.field private final mAdapterListenerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;


# direct methods
.method public constructor <init>(Lcom/lifestreet/android/lsmsdk/SlotController;Lcom/lifestreet/android/lsmsdk/AdNetwork;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mAdNetwork:Lcom/lifestreet/android/lsmsdk/AdNetwork;

    .line 24
    invoke-virtual {p2}, Lcom/lifestreet/android/lsmsdk/AdNetwork;->getAdNetworkController()Lcom/lifestreet/android/lsmsdk/AdNetworkController;

    move-result-object v0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mAdNetworkController:Lcom/lifestreet/android/lsmsdk/AdNetworkController;

    .line 25
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AdType;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/AdType;

    invoke-virtual {p2}, Lcom/lifestreet/android/lsmsdk/AdNetwork;->getAdType()Lcom/lifestreet/android/lsmsdk/AdType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-class v0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    :goto_0
    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mAdapterListenerClass:Ljava/lang/Class;

    .line 28
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    .line 29
    return-void

    .line 25
    :cond_0
    const-class v0, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    goto :goto_0
.end method

.method public static newInstance(Lcom/lifestreet/android/lsmsdk/SlotController;Lcom/lifestreet/android/lsmsdk/AdNetwork;)Lcom/lifestreet/android/lsmsdk/AdapterController;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AdType;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/AdType;

    invoke-virtual {p1}, Lcom/lifestreet/android/lsmsdk/AdNetwork;->getAdType()Lcom/lifestreet/android/lsmsdk/AdType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 48
    new-instance v0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;

    invoke-direct {v0, p0, p1}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterController;-><init>(Lcom/lifestreet/android/lsmsdk/SlotController;Lcom/lifestreet/android/lsmsdk/AdNetwork;)V

    .line 53
    :goto_0
    return-object v0

    .line 50
    :cond_0
    new-instance v0, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;

    invoke-direct {v0, p0, p1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterController;-><init>(Lcom/lifestreet/android/lsmsdk/SlotController;Lcom/lifestreet/android/lsmsdk/AdNetwork;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkCurrentThread()V
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "An AdapterListener\'s callback was called by a different thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    return-void
.end method

.method protected getBannerAdapter()Lcom/lifestreet/android/lsmsdk/BannerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mAdapter:Lcom/lifestreet/android/lsmsdk/Adapter;

    check-cast v0, Lcom/lifestreet/android/lsmsdk/BannerAdapter;

    return-object v0
.end method

.method protected getInterstitialAdapter()Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mAdapter:Lcom/lifestreet/android/lsmsdk/Adapter;

    check-cast v0, Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mAdapter:Lcom/lifestreet/android/lsmsdk/Adapter;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mAdapter:Lcom/lifestreet/android/lsmsdk/Adapter;

    invoke-interface {v0}, Lcom/lifestreet/android/lsmsdk/Adapter;->onDestroy()V

    .line 68
    :cond_0
    return-void
.end method

.method protected onFailedToReceive()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->destroyNextAdapterController()V

    .line 98
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotResponse()Lcom/lifestreet/android/lsmsdk/SlotResponse;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Lcom/lifestreet/android/lsmsdk/SlotResponse;->getAdsParams()Lcom/lifestreet/android/lsmsdk/AdsParams;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/AdsParams;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->setRequestId(Ljava/lang/String;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->isNextNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->destroyCurrentAdapterController()V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->NOT_LOADED:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setLoadingState(Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;)V

    .line 111
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mAdNetworkController:Lcom/lifestreet/android/lsmsdk/AdNetworkController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/AdNetworkController;->trackNoBid()V

    .line 113
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->startAutoRefreshTimer(Z)V

    .line 114
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->enqueueNextNetwork()V

    .line 115
    return-void
.end method

.method public onNotResponding()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mAdapter:Lcom/lifestreet/android/lsmsdk/Adapter;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mAdapter:Lcom/lifestreet/android/lsmsdk/Adapter;

    invoke-interface {v0}, Lcom/lifestreet/android/lsmsdk/Adapter;->onNotResponding()V

    .line 75
    :cond_0
    return-void
.end method

.method public onReceiveCustomMethod(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->checkCurrentThread()V

    .line 81
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;

    move-result-object v0

    .line 82
    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;

    const-string v1, "Slot listener can\'t be null"

    invoke-direct {v0, v1}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mAdapterListenerClass:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 89
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    new-instance v1, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error invoking custom method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAdapter(Lcom/lifestreet/android/lsmsdk/Adapter;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/Adapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mAdapter:Lcom/lifestreet/android/lsmsdk/Adapter;

    .line 34
    return-void
.end method

.method public showAd()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->SHOWN:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setLoadingState(Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;)V

    .line 59
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mAdNetworkController:Lcom/lifestreet/android/lsmsdk/AdNetworkController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/AdNetworkController;->trackImpression()V

    .line 60
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->startAutoRefreshTimer(Z)V

    .line 61
    return-void
.end method
