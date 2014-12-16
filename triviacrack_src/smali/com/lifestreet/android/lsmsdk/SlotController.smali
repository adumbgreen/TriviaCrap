.class public final Lcom/lifestreet/android/lsmsdk/SlotController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;
.implements Lcom/lifestreet/android/lsmsdk/commons/Timer$Event;


# static fields
.field public static final DEFAULT_REFRESH_RATE_IN_SECS:I = 0x12c

.field public static final MRAID_VERSION:Ljava/lang/String; = "1"

.field public static final SDK_ID:Ljava/lang/String; = "LSM SDK Version 1.9.2-src ($LastChangedRevision: 96869 $)"

.field public static final SDK_REVISION:Ljava/lang/String; = "$LastChangedRevision: 96869 $"

.field public static final SDK_TYPE:Ljava/lang/String; = "src"

.field public static final SDK_VERSION:Ljava/lang/String; = "1.9.2"

.field public static USER_AGENT:Ljava/lang/String;

.field private static sInitialized:Z


# instance fields
.field private mAdNetworkQueue:Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;

.field private mAutoRefreshEnabled:Z

.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAdapterController:Lcom/lifestreet/android/lsmsdk/AdapterController;

.field private mDestroyed:Z

.field private final mDeviceInfo:Lcom/lifestreet/android/lsmsdk/DeviceInfo;

.field private mIntegrationType:Lcom/lifestreet/android/lsmsdk/IntegrationType;

.field private mLoadingState:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

.field private mNextAdapterController:Lcom/lifestreet/android/lsmsdk/AdapterController;

.field private final mNotRespondingTimer:Lcom/lifestreet/android/lsmsdk/commons/Timer;

.field private mPaused:Z

.field private final mRefreshTimer:Lcom/lifestreet/android/lsmsdk/commons/Timer;

.field private mRequestId:Ljava/lang/String;

.field private mShowAdsWhenReady:Z

.field private mShowBannerCloseButton:Z

.field private mShowInterstitialCloseButton:Z

.field private mSlotListener:Lcom/lifestreet/android/lsmsdk/SlotListener;

.field private mSlotResponse:Lcom/lifestreet/android/lsmsdk/SlotResponse;

.field private mSlotTag:Ljava/lang/String;

.field private final mSlotType:Lcom/lifestreet/android/lsmsdk/SlotType;

.field private mSlotViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lifestreet/android/lsmsdk/SlotView;",
            ">;"
        }
    .end annotation
.end field

.field private mTargeting:Lcom/lifestreet/android/lsmsdk/SlotTargeting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/lifestreet/android/lsmsdk/SlotController;->USER_AGENT:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lifestreet/android/lsmsdk/SlotController;->sInitialized:Z

    return-void
.end method

.method public constructor <init>(Lcom/lifestreet/android/lsmsdk/SlotType;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/lifestreet/android/lsmsdk/commons/Timer;

    invoke-direct {v0, p0, v3, v4}, Lcom/lifestreet/android/lsmsdk/commons/Timer;-><init>(Lcom/lifestreet/android/lsmsdk/commons/Timer$Event;J)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mRefreshTimer:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    .line 46
    new-instance v0, Lcom/lifestreet/android/lsmsdk/commons/Timer;

    invoke-direct {v0, p0, v3, v4}, Lcom/lifestreet/android/lsmsdk/commons/Timer;-><init>(Lcom/lifestreet/android/lsmsdk/commons/Timer$Event;J)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mNotRespondingTimer:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    .line 50
    iput-boolean v1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mShowBannerCloseButton:Z

    .line 51
    iput-boolean v2, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mShowInterstitialCloseButton:Z

    .line 64
    iput-boolean v2, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mAutoRefreshEnabled:Z

    .line 65
    iput-boolean v2, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mShowAdsWhenReady:Z

    .line 66
    iput-boolean v1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mDestroyed:Z

    .line 67
    iput-boolean v1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mPaused:Z

    .line 70
    sget-object v0, Lcom/lifestreet/android/lsmsdk/IntegrationType;->DIRECT:Lcom/lifestreet/android/lsmsdk/IntegrationType;

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mIntegrationType:Lcom/lifestreet/android/lsmsdk/IntegrationType;

    .line 77
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotType:Lcom/lifestreet/android/lsmsdk/SlotType;

    .line 78
    new-instance v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;

    invoke-direct {v0, p2}, Lcom/lifestreet/android/lsmsdk/DeviceInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mDeviceInfo:Lcom/lifestreet/android/lsmsdk/DeviceInfo;

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 81
    sget-object v0, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->NOT_LOADED:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->setLoadingState(Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;)V

    .line 82
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->initialize()V

    .line 83
    return-void
.end method

.method private declared-synchronized initialize()V
    .locals 3

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/lifestreet/android/lsmsdk/SlotController;->sInitialized:Z

    if-nez v0, :cond_1

    .line 396
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lifestreet/android/lsmsdk/SlotController;->sInitialized:Z

    .line 398
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "LSM SDK Version 1.9.2-src ($LastChangedRevision: 96869 $)"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 400
    sget-boolean v0, Lcom/lifestreet/android/lsmsdk/exceptions/SlotUncaughtExceptionHandler;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 401
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/SlotUncaughtExceptionHandler;

    invoke-direct {v0}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotUncaughtExceptionHandler;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 406
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 407
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lifestreet/android/lsmsdk/SlotController;->USER_AGENT:Ljava/lang/String;

    .line 408
    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 411
    invoke-static {v0}, Lorg/OpenUDID/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_1
    monitor-exit p0

    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startNotRespondingTimer()V
    .locals 2

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mPaused:Z

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mNotRespondingTimer:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/commons/Timer;->start(Z)V

    .line 392
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mRefreshTimer:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/commons/Timer;->stop()V

    .line 91
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mNotRespondingTimer:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/commons/Timer;->stop()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mDestroyed:Z

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotResponse:Lcom/lifestreet/android/lsmsdk/SlotResponse;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mAdNetworkQueue:Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mAutoRefreshEnabled:Z

    .line 98
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->destroyNextAdapterController()V

    .line 99
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->destroyCurrentAdapterController()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotListener:Lcom/lifestreet/android/lsmsdk/SlotListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroyCurrentAdapterController()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mCurrentAdapterController:Lcom/lifestreet/android/lsmsdk/AdapterController;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mCurrentAdapterController:Lcom/lifestreet/android/lsmsdk/AdapterController;

    invoke-interface {v0}, Lcom/lifestreet/android/lsmsdk/AdapterController;->onDestroy()V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mCurrentAdapterController:Lcom/lifestreet/android/lsmsdk/AdapterController;

    .line 338
    :cond_0
    return-void
.end method

.method public destroyNextAdapterController()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mNextAdapterController:Lcom/lifestreet/android/lsmsdk/AdapterController;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mNextAdapterController:Lcom/lifestreet/android/lsmsdk/AdapterController;

    invoke-interface {v0}, Lcom/lifestreet/android/lsmsdk/AdapterController;->onDestroy()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mNextAdapterController:Lcom/lifestreet/android/lsmsdk/AdapterController;

    .line 353
    :cond_0
    return-void
.end method

.method public enqueueNextNetwork()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mAdNetworkQueue:Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mAdNetworkQueue:Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->enqueueNextNetwork()V

    .line 177
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentAdapterController()Lcom/lifestreet/android/lsmsdk/AdapterController;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mCurrentAdapterController:Lcom/lifestreet/android/lsmsdk/AdapterController;

    return-object v0
.end method

.method public getIntegrationType()Lcom/lifestreet/android/lsmsdk/IntegrationType;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mIntegrationType:Lcom/lifestreet/android/lsmsdk/IntegrationType;

    return-object v0
.end method

.method public getLoadingState()Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mLoadingState:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    return-object v0
.end method

.method public getNextAdapterController()Lcom/lifestreet/android/lsmsdk/AdapterController;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mNextAdapterController:Lcom/lifestreet/android/lsmsdk/AdapterController;

    return-object v0
.end method

.method public getRefreshTimer()Lcom/lifestreet/android/lsmsdk/commons/Timer;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mRefreshTimer:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotListener:Lcom/lifestreet/android/lsmsdk/SlotListener;

    return-object v0
.end method

.method public getSlotQueryParams()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mTargeting:Lcom/lifestreet/android/lsmsdk/SlotTargeting;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mDeviceInfo:Lcom/lifestreet/android/lsmsdk/DeviceInfo;

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mRequestId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mIntegrationType:Lcom/lifestreet/android/lsmsdk/IntegrationType;

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lifestreet/android/lsmsdk/commons/Utils;->getMapWithQueryParams(Lcom/lifestreet/android/lsmsdk/SlotTargeting;Lcom/lifestreet/android/lsmsdk/DeviceInfo;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/IntegrationType;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSlotResponse()Lcom/lifestreet/android/lsmsdk/SlotResponse;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotResponse:Lcom/lifestreet/android/lsmsdk/SlotResponse;

    return-object v0
.end method

.method public getSlotTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotType()Lcom/lifestreet/android/lsmsdk/SlotType;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotType:Lcom/lifestreet/android/lsmsdk/SlotType;

    return-object v0
.end method

.method public getSlotUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotTag:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotQueryParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lifestreet/android/lsmsdk/commons/Utils;->getUriWithQueryParams(Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSlotView()Lcom/lifestreet/android/lsmsdk/SlotView;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/SlotView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTargeting()Lcom/lifestreet/android/lsmsdk/SlotTargeting;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mTargeting:Lcom/lifestreet/android/lsmsdk/SlotTargeting;

    return-object v0
.end method

.method public isAutoRefreshEnabled()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mAutoRefreshEnabled:Z

    return v0
.end method

.method public isNextNetworkAvailable()Z
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mAdNetworkQueue:Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;

    if-eqz v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mAdNetworkQueue:Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->isNextNetworkAvailable()Z

    move-result v0

    .line 186
    :cond_0
    return v0
.end method

.method public isShowAdsWhenReady()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mShowAdsWhenReady:Z

    return v0
.end method

.method public isShowBannerCloseButton()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mShowBannerCloseButton:Z

    return v0
.end method

.method public isShowInterstitialCloseButton()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mShowInterstitialCloseButton:Z

    return v0
.end method

.method public declared-synchronized loadSlot(Z)V
    .locals 4
    .parameter

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mLoadingState:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->LOADING:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    if-ne v0, v1, :cond_1

    .line 126
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Already requesting an Ad"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 127
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mPaused:Z

    if-nez v0, :cond_0

    .line 128
    sget-object v0, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->LOADING:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->setLoadingState(Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;)V

    .line 129
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mRefreshTimer:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/commons/Timer;->stop()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mAdNetworkQueue:Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;

    .line 132
    iput-boolean p1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mShowAdsWhenReady:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :try_start_2
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotType:Lcom/lifestreet/android/lsmsdk/SlotType;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotType;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/SlotType;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotView()Lcom/lifestreet/android/lsmsdk/SlotView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 136
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ErrorCode;->NO_ERROR:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v2, "Slot view can\'t be null"

    invoke-static {p0}, Lcom/lifestreet/android/lsmsdk/SlotContext;->newInstance(Lcom/lifestreet/android/lsmsdk/SlotController;)Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/lifestreet/android/lsmsdk/exceptions/SlotException; {:try_start_2 .. :try_end_2} :catch_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    :try_start_3
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->onAsyncHttpTaskFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotTag:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 141
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ErrorCode;->NO_SLOT_TAG:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v2, "You must call the setSlotTag method before loading an ad"

    invoke-static {p0}, Lcom/lifestreet/android/lsmsdk/SlotContext;->newInstance(Lcom/lifestreet/android/lsmsdk/SlotController;)Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v0

    .line 146
    :cond_3
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->slotTagIsNotValid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ErrorCode;->NO_ERROR:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v2, "Invalid slot tag"

    invoke-static {p0}, Lcom/lifestreet/android/lsmsdk/SlotContext;->newInstance(Lcom/lifestreet/android/lsmsdk/SlotController;)Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v0

    .line 151
    :cond_4
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotUrl()Ljava/lang/String;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slot URL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 154
    invoke-static {p0}, Lcom/lifestreet/android/lsmsdk/SlotContext;->newInstance(Lcom/lifestreet/android/lsmsdk/SlotController;)Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v1

    sget-object v2, Lcom/lifestreet/android/lsmsdk/SlotController;->USER_AGENT:Ljava/lang/String;

    invoke-static {p0, v1, v0, v2}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->execute(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/lifestreet/android/lsmsdk/exceptions/SlotException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method public onAsyncHttpTaskCompleted(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;)V
    .locals 3
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotType:Lcom/lifestreet/android/lsmsdk/SlotType;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotType;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/SlotType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotView()Lcom/lifestreet/android/lsmsdk/SlotView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/lifestreet/android/lsmsdk/SlotContext;->newInstance(Lcom/lifestreet/android/lsmsdk/SlotController;)Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->newInstance(Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/String;Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/SlotResponse;
    :try_end_0
    .catch Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    :goto_0
    if-nez v0, :cond_2

    .line 223
    sget-object v0, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->NOT_LOADED:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->setLoadingState(Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;)V

    .line 232
    :cond_1
    :goto_1
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const/4 v1, 0x0

    .line 219
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->onAsyncHttpTaskFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 225
    :cond_2
    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotResponse:Lcom/lifestreet/android/lsmsdk/SlotResponse;

    .line 227
    new-instance v0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotResponse:Lcom/lifestreet/android/lsmsdk/SlotResponse;

    invoke-interface {v1}, Lcom/lifestreet/android/lsmsdk/SlotResponse;->getNetworks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;-><init>(Ljava/util/List;Lcom/lifestreet/android/lsmsdk/SlotController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mAdNetworkQueue:Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;

    .line 229
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mAdNetworkQueue:Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->enqueueNextNetwork()V

    goto :goto_1
.end method

.method public onAsyncHttpTaskFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 237
    instance-of v0, p2, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskCanceledException;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskNetworkException;

    if-eqz v0, :cond_2

    .line 239
    :cond_0
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 244
    :goto_0
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->destroyCurrentAdapterController()V

    .line 246
    sget-object v0, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->NOT_LOADED:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->setLoadingState(Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;)V

    .line 248
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mRefreshTimer:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/commons/Timer;->setDelay(J)V

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->startAutoRefreshTimer(Z)V

    .line 251
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotListener:Lcom/lifestreet/android/lsmsdk/SlotListener;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotListener:Lcom/lifestreet/android/lsmsdk/SlotListener;

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotView()Lcom/lifestreet/android/lsmsdk/SlotView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotListener;->onFailedToLoadSlotView(Lcom/lifestreet/android/lsmsdk/SlotView;)V

    .line 255
    :cond_1
    return-void

    .line 241
    :cond_2
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onTimerEvent(Lcom/lifestreet/android/lsmsdk/commons/Timer;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 191
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mPaused:Z

    if-nez v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mNextAdapterController:Lcom/lifestreet/android/lsmsdk/AdapterController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mNextAdapterController:Lcom/lifestreet/android/lsmsdk/AdapterController;

    .line 195
    :goto_0
    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mNotRespondingTimer:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    if-ne p1, v3, :cond_4

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mLoadingState:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    sget-object v4, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->LOADING:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    if-ne v3, v4, :cond_4

    move v3, v2

    .line 198
    :goto_1
    if-nez p2, :cond_0

    iget-boolean v4, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mAutoRefreshEnabled:Z

    if-eqz v4, :cond_1

    :cond_0
    move v1, v2

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mRefreshTimer:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    if-ne p1, v2, :cond_5

    if-eqz v1, :cond_5

    .line 201
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Reloading an Ad..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 202
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mShowAdsWhenReady:Z

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->loadSlot(Z)V

    .line 208
    :cond_2
    :goto_2
    return-void

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mCurrentAdapterController:Lcom/lifestreet/android/lsmsdk/AdapterController;

    goto :goto_0

    :cond_4
    move v3, v1

    .line 195
    goto :goto_1

    .line 203
    :cond_5
    if-eqz v3, :cond_2

    .line 204
    sget-object v1, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v2, "Current adapter is not responding, destroying..."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 205
    invoke-interface {v0}, Lcom/lifestreet/android/lsmsdk/AdapterController;->onNotResponding()V

    goto :goto_2
.end method

.method public pauseAutoRefreshTimer()V
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mAutoRefreshEnabled:Z

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mRefreshTimer:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/commons/Timer;->pause()V

    .line 382
    :cond_0
    return-void
.end method

.method public declared-synchronized pauseSlot()V
    .locals 2

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mPaused:Z

    if-nez v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->pauseAutoRefreshTimer()V

    .line 107
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mLoadingState:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->LOADING:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mNotRespondingTimer:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/commons/Timer;->pause()V

    .line 110
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_1
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resumeSlot()V
    .locals 2

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mPaused:Z

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mPaused:Z

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->startAutoRefreshTimer(Z)V

    .line 118
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mLoadingState:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->LOADING:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mNotRespondingTimer:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/commons/Timer;->start(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoRefreshEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mAutoRefreshEnabled:Z

    .line 418
    if-eqz p1, :cond_0

    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->startAutoRefreshTimer(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :goto_0
    monitor-exit p0

    return-void

    .line 421
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mRefreshTimer:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/commons/Timer;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCurrentAdapterController(Lcom/lifestreet/android/lsmsdk/AdapterController;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mCurrentAdapterController:Lcom/lifestreet/android/lsmsdk/AdapterController;

    .line 331
    return-void
.end method

.method public setIntegrationType(Lcom/lifestreet/android/lsmsdk/IntegrationType;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mIntegrationType:Lcom/lifestreet/android/lsmsdk/IntegrationType;

    .line 444
    return-void
.end method

.method public setLoadingState(Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;)V
    .locals 1
    .parameter

    .prologue
    .line 316
    sget-object v0, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->LOADING:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    if-ne p1, v0, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->startNotRespondingTimer()V

    .line 322
    :goto_0
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mLoadingState:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    .line 323
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mNotRespondingTimer:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/commons/Timer;->stop()V

    goto :goto_0
.end method

.method public setNextAdapterController(Lcom/lifestreet/android/lsmsdk/AdapterController;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mNextAdapterController:Lcom/lifestreet/android/lsmsdk/AdapterController;

    .line 346
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mRequestId:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setShowCloseButton(Z)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-boolean p1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mShowBannerCloseButton:Z

    .line 431
    iput-boolean p1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mShowInterstitialCloseButton:Z

    .line 432
    return-void
.end method

.method public setSlotListener(Lcom/lifestreet/android/lsmsdk/SlotListener;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotListener:Lcom/lifestreet/android/lsmsdk/SlotListener;

    .line 301
    return-void
.end method

.method public setSlotTag(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotTag:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setSlotView(Lcom/lifestreet/android/lsmsdk/SlotView;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotViewRef:Ljava/lang/ref/WeakReference;

    .line 87
    return-void
.end method

.method public setTargeting(Lcom/lifestreet/android/lsmsdk/SlotTargeting;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mTargeting:Lcom/lifestreet/android/lsmsdk/SlotTargeting;

    .line 293
    return-void
.end method

.method public shouldCancelAsyncHttpTask()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mDestroyed:Z

    return v0
.end method

.method public declared-synchronized showSlot()V
    .locals 2

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mShowAdsWhenReady:Z

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mLoadingState:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->SHOWN:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    if-ne v0, v1, :cond_1

    .line 164
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Ad is already shown"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 165
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mLoadingState:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->LOADED:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    if-eq v0, v1, :cond_2

    .line 166
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Ad is not loaded yet"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 167
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mCurrentAdapterController:Lcom/lifestreet/android/lsmsdk/AdapterController;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mCurrentAdapterController:Lcom/lifestreet/android/lsmsdk/AdapterController;

    invoke-interface {v0}, Lcom/lifestreet/android/lsmsdk/AdapterController;->showAd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public slotTagIsNotValid()Z
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mSlotTag:Ljava/lang/String;

    const-string v1, "lfstmedia.com"

    invoke-static {v0, v1}, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAutoRefreshTimer(Z)V
    .locals 2
    .parameter

    .prologue
    .line 372
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mAutoRefreshEnabled:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 373
    :goto_0
    iget-boolean v1, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mPaused:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotController;->mRefreshTimer:Lcom/lifestreet/android/lsmsdk/commons/Timer;

    invoke-virtual {v0, p1}, Lcom/lifestreet/android/lsmsdk/commons/Timer;->start(Z)V

    .line 376
    :cond_1
    return-void

    .line 372
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
