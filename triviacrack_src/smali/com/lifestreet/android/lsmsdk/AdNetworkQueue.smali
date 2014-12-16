.class public final Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private final mAdNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lifestreet/android/lsmsdk/AdNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdapterMapping:Lcom/lifestreet/android/lsmsdk/AdapterMapping;

.field private mCurrentNetworkIndex:I

.field private final mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/lifestreet/android/lsmsdk/SlotController;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lifestreet/android/lsmsdk/AdNetwork;",
            ">;",
            "Lcom/lifestreet/android/lsmsdk/SlotController;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mCurrentNetworkIndex:I

    .line 35
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mAdNetworks:Ljava/util/List;

    .line 36
    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    .line 37
    invoke-static {p3}, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->getInstance(Landroid/content/Context;)Lcom/lifestreet/android/lsmsdk/AdapterMapping;

    move-result-object v0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mAdapterMapping:Lcom/lifestreet/android/lsmsdk/AdapterMapping;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->loadNextNetwork()V

    return-void
.end method

.method private getCurrentNetwork()Lcom/lifestreet/android/lsmsdk/AdNetwork;
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 111
    iget v1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mCurrentNetworkIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mAdNetworks:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mAdNetworks:Ljava/util/List;

    iget v1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mCurrentNetworkIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/AdNetwork;

    .line 115
    :cond_0
    return-object v0
.end method

.method private loadNetwork(Lcom/lifestreet/android/lsmsdk/AdNetwork;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lcom/lifestreet/android/lsmsdk/AdNetwork;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-static {v0, p1}, Lcom/lifestreet/android/lsmsdk/AbstractAdapterController;->newInstance(Lcom/lifestreet/android/lsmsdk/SlotController;Lcom/lifestreet/android/lsmsdk/AdNetwork;)Lcom/lifestreet/android/lsmsdk/AdapterController;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v1, v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->setNextAdapterController(Lcom/lifestreet/android/lsmsdk/AdapterController;)V

    .line 103
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mAdapterMapping:Lcom/lifestreet/android/lsmsdk/AdapterMapping;

    invoke-static {p1, v1}, Lcom/lifestreet/android/lsmsdk/Adapters;->createAdapterInstance(Lcom/lifestreet/android/lsmsdk/AdNetwork;Lcom/lifestreet/android/lsmsdk/AdapterMapping;)Lcom/lifestreet/android/lsmsdk/Adapter;

    move-result-object v1

    .line 104
    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/AdapterController;->setAdapter(Lcom/lifestreet/android/lsmsdk/Adapter;)V

    .line 105
    invoke-interface {v0}, Lcom/lifestreet/android/lsmsdk/AdapterController;->requestAd()V

    .line 106
    return-void
.end method

.method private loadNextNetwork()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->isNextNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->shouldCancelAsyncHttpTask()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 66
    :goto_0
    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->LOADING:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    :goto_1
    invoke-virtual {v3, v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setLoadingState(Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;)V

    .line 70
    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    iget v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mCurrentNetworkIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mCurrentNetworkIndex:I

    .line 73
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->getCurrentNetwork()Lcom/lifestreet/android/lsmsdk/AdNetwork;
    :try_end_0
    .catch Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 74
    if-eqz v1, :cond_0

    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/lifestreet/android/lsmsdk/SlotController;->setNextAdapterController(Lcom/lifestreet/android/lsmsdk/AdapterController;)V

    .line 76
    invoke-direct {p0, v1}, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->loadNetwork(Lcom/lifestreet/android/lsmsdk/AdNetwork;)V

    .line 77
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getRefreshTimer()Lcom/lifestreet/android/lsmsdk/commons/Timer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/AdNetwork;->getRefreshRate()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/lifestreet/android/lsmsdk/commons/Timer;->setDelay(J)V
    :try_end_1
    .catch Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    :cond_0
    :goto_2
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_2
    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->NOT_LOADED:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 81
    :goto_3
    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-static {v3}, Lcom/lifestreet/android/lsmsdk/SlotContext;->newInstance(Lcom/lifestreet/android/lsmsdk/SlotController;)Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;->setSlotContext(Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    .line 82
    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/AdNetwork;->getAdType()Lcom/lifestreet/android/lsmsdk/AdType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;->setErrorCode(Lcom/lifestreet/android/lsmsdk/AdType;)V

    .line 86
    :cond_3
    sget-object v1, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getNextAdapterController()Lcom/lifestreet/android/lsmsdk/AdapterController;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Lcom/lifestreet/android/lsmsdk/AdapterController;->onRequestAdFailed()V

    .line 91
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, v2}, Lcom/lifestreet/android/lsmsdk/SlotController;->setNextAdapterController(Lcom/lifestreet/android/lsmsdk/AdapterController;)V

    goto :goto_2

    .line 80
    :catch_1
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public enqueueNextNetwork()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue$1;

    invoke-direct {v1, p0}, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue$1;-><init>(Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method

.method public isNextNetworkAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 51
    .line 53
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mAdNetworks:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 54
    iget v1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mCurrentNetworkIndex:I

    add-int/lit8 v1, v1, 0x1

    .line 55
    if-ltz v1, :cond_0

    .line 56
    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->mAdNetworks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 60
    :cond_0
    return v0
.end method
