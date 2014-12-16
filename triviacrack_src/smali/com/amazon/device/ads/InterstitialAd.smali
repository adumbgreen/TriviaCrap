.class public Lcom/amazon/device/ads/InterstitialAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/Ad;


# static fields
.field protected static final ACTION_INTERSTITIAL_DISMISSED:Ljava/lang/String; = "dismissed"

.field protected static final ACTION_INTERSTITIAL_FINISHED_LOADING:Ljava/lang/String; = "finished"

.field protected static final BROADCAST_ACTION:Ljava/lang/String; = "action"

.field protected static final BROADCAST_CREATIVE:Ljava/lang/String; = "creative"

.field protected static final BROADCAST_INTENT:Ljava/lang/String; = "amazon.mobile.ads.interstitial"

.field protected static final BROADCAST_UNIQUE_IDENTIFIER_KEY:Ljava/lang/String; = "uniqueIdentifier"

.field private static final LOG_TAG:Ljava/lang/String; = "InterstitialAd"

.field protected static final MSG_PREPARE_AD_DESTROYED:Ljava/lang/String; = "This interstitial ad has been destroyed and can no longer be used. Create a new InterstitialAd object to load a new ad."

.field protected static final MSG_PREPARE_AD_LOADING:Ljava/lang/String; = "An interstitial ad is currently loading. Please wait for the ad to finish loading and showing before loading another ad."

.field protected static final MSG_PREPARE_AD_READY_TO_SHOW:Ljava/lang/String; = "An interstitial ad is ready to show. Please call showAd() to show the ad before loading another ad."

.field protected static final MSG_PREPARE_AD_SHOWING:Ljava/lang/String; = "An interstitial ad is currently showing. Please wait for the user to dismiss the ad before loading an ad."

.field protected static final MSG_SHOW_AD_ANOTHER_SHOWING:Ljava/lang/String; = "Another interstitial ad is currently showing. Please wait for the InterstitialAdListener.onAdDismissed callback of the other ad."

.field protected static final MSG_SHOW_AD_DESTROYED:Ljava/lang/String; = "The interstitial ad cannot be shown because it has been destroyed. Create a new InterstitialAd object to load a new ad."

.field protected static final MSG_SHOW_AD_DISMISSED:Ljava/lang/String; = "The interstitial ad cannot be shown because it has already been displayed to the user. Please call loadAd(AdTargetingOptions) to load a new ad."

.field protected static final MSG_SHOW_AD_EXPIRED:Ljava/lang/String; = "This interstitial ad has expired. Please load another ad."

.field protected static final MSG_SHOW_AD_LOADING:Ljava/lang/String; = "The interstitial ad cannot be shown because it is still loading. Please wait for the AdListener.onAdLoaded() callback before showing the ad."

.field protected static final MSG_SHOW_AD_READY_TO_LOAD:Ljava/lang/String; = "The interstitial ad cannot be shown because it has not loaded successfully. Please call loadAd(AdTargetingOptions) to load an ad first."

.field protected static final MSG_SHOW_AD_SHOWING:Ljava/lang/String; = "The interstitial ad cannot be shown because it is already displayed on the screen. Please wait for the InterstitialAdListener.onAdDismissed() callback and then load a new ad."

.field private static final isAdShowing:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private adController:Lcom/amazon/device/ads/AdController;

.field private adListener:Lcom/amazon/device/ads/AdListener;

.field private isInitialized:Z

.field private isThisAdShowing:Z

.field private timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/amazon/device/ads/InterstitialAd;->isAdShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v1, p0, Lcom/amazon/device/ads/InterstitialAd;->isThisAdShowing:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/device/ads/InterstitialAd;->adListener:Lcom/amazon/device/ads/AdListener;

    .line 67
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/amazon/device/ads/InterstitialAd;->timeout:I

    .line 70
    iput-boolean v1, p0, Lcom/amazon/device/ads/InterstitialAd;->isInitialized:Z

    .line 78
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InterstitialAd requires a non-null Activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/InterstitialAd;->activity:Landroid/app/Activity;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/InterstitialAd;Lcom/amazon/device/ads/AdProperties;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/InterstitialAd;->callOnAdLoaded(Lcom/amazon/device/ads/AdProperties;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/InterstitialAd;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->setAdditionalMetrics()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/InterstitialAd;)Lcom/amazon/device/ads/AdController;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/amazon/device/ads/InterstitialAd;Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/AdController;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/amazon/device/ads/InterstitialAd;->adController:Lcom/amazon/device/ads/AdController;

    return-object p1
.end method

.method static synthetic access$400(Lcom/amazon/device/ads/InterstitialAd;)Lcom/amazon/device/ads/MetricsCollector;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    return-object v0
.end method

.method private callOnAdLoaded(Lcom/amazon/device/ads/AdProperties;)V
    .locals 1
    .parameter

    .prologue
    .line 392
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAd;->adListener:Lcom/amazon/device/ads/AdListener;

    invoke-interface {v0, p0, p1}, Lcom/amazon/device/ads/AdListener;->onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V

    .line 393
    return-void
.end method

.method private clearCachedAdController()V
    .locals 0

    .prologue
    .line 326
    invoke-static {}, Lcom/amazon/device/ads/AdControllerFactory;->removeCachedAdController()Lcom/amazon/device/ads/AdController;

    .line 327
    return-void
.end method

.method private getAdController()Lcom/amazon/device/ads/AdController;
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->initializeIfNecessary()V

    .line 114
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAd;->adController:Lcom/amazon/device/ads/AdController;

    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->initializeAdController()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAd;->adController:Lcom/amazon/device/ads/AdController;

    return-object v0
.end method

.method private getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    return-object v0
.end method

.method private initializeAdController()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAd;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/InterstitialAd;->createAdController(Landroid/app/Activity;)Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/InterstitialAd;->setAdController(Lcom/amazon/device/ads/AdController;)V

    .line 104
    return-void
.end method

.method private initializeIfNecessary()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/InterstitialAd;->isInitialized:Z

    .line 92
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/InterstitialAd;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/IInternalAdRegistration;->contextReceived(Landroid/content/Context;)V

    .line 93
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAd;->adListener:Lcom/amazon/device/ads/AdListener;

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Lcom/amazon/device/ads/DefaultAdListener;

    const-string v1, "InterstitialAd"

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/DefaultAdListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/device/ads/InterstitialAd;->adListener:Lcom/amazon/device/ads/AdListener;

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->initializeAdController()V

    .line 98
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->setAdditionalMetrics()V

    goto :goto_0
.end method

.method public static isAdShowing()Z
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/amazon/device/ads/InterstitialAd;->isAdShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private isInitialized()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/amazon/device/ads/InterstitialAd;->isInitialized:Z

    return v0
.end method

.method static resetIsAdShowing()V
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/amazon/device/ads/InterstitialAd;->isAdShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 125
    return-void
.end method

.method private setAdController(Lcom/amazon/device/ads/AdController;)V
    .locals 1
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/amazon/device/ads/InterstitialAd;->adController:Lcom/amazon/device/ads/AdController;

    .line 356
    invoke-virtual {p0}, Lcom/amazon/device/ads/InterstitialAd;->constructAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdController;->setCallback(Lcom/amazon/device/ads/AdControlCallback;)V

    .line 357
    return-void
.end method

.method private setAdditionalMetrics()V
    .locals 2

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdProperties$AdType;->INTERSTITIAL:Lcom/amazon/device/ads/AdProperties$AdType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->setAdType(Lcom/amazon/device/ads/AdProperties$AdType;)V

    .line 458
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_IS_INTERSTITIAL:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 459
    return-void
.end method


# virtual methods
.method callOnAdDismissed()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAd;->adListener:Lcom/amazon/device/ads/AdListener;

    invoke-interface {v0, p0}, Lcom/amazon/device/ads/AdListener;->onAdDismissed(Lcom/amazon/device/ads/Ad;)V

    .line 429
    return-void
.end method

.method callOnAdDismissedOnMainThread()V
    .locals 2

    .prologue
    .line 433
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/device/ads/InterstitialAd;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 434
    new-instance v1, Lcom/amazon/device/ads/InterstitialAd$3;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/InterstitialAd$3;-><init>(Lcom/amazon/device/ads/InterstitialAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 443
    return-void
.end method

.method callOnAdFailedOnMainThread(Lcom/amazon/device/ads/AdError;)V
    .locals 2
    .parameter

    .prologue
    .line 415
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/device/ads/InterstitialAd;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 416
    new-instance v1, Lcom/amazon/device/ads/InterstitialAd$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/ads/InterstitialAd$2;-><init>(Lcom/amazon/device/ads/InterstitialAd;Lcom/amazon/device/ads/AdError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 424
    return-void
.end method

.method callOnAdFailedToLoad(Lcom/amazon/device/ads/AdError;)V
    .locals 1
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAd;->adListener:Lcom/amazon/device/ads/AdListener;

    invoke-interface {v0, p0, p1}, Lcom/amazon/device/ads/AdListener;->onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V

    .line 411
    return-void
.end method

.method callOnAdLoadedOnMainThread(Lcom/amazon/device/ads/AdProperties;)V
    .locals 2
    .parameter

    .prologue
    .line 397
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/device/ads/InterstitialAd;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 398
    new-instance v1, Lcom/amazon/device/ads/InterstitialAd$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/ads/InterstitialAd$1;-><init>(Lcom/amazon/device/ads/InterstitialAd;Lcom/amazon/device/ads/AdProperties;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void
.end method

.method constructAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;
    .locals 1

    .prologue
    .line 361
    new-instance v0, Lcom/amazon/device/ads/InterstitialAd$InterstitialAdControlCallback;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/InterstitialAd$InterstitialAdControlCallback;-><init>(Lcom/amazon/device/ads/InterstitialAd;)V

    return-object v0
.end method

.method createAdController(Landroid/app/Activity;)Lcom/amazon/device/ads/AdController;
    .locals 1
    .parameter

    .prologue
    .line 350
    sget-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_INTERSTITIAL:Lcom/amazon/device/ads/AdSize;

    invoke-static {p1, v0}, Lcom/amazon/device/ads/AdControllerFactory;->buildAdController(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)Lcom/amazon/device/ads/AdController;

    move-result-object v0

    return-object v0
.end method

.method didAdActivityFail()Z
    .locals 3

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/amazon/device/ads/InterstitialAd;->isThisAdShowing:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/device/ads/InterstitialAd;->isAdShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 245
    :goto_0
    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->INTERSTITIAL_AD_ACTIVITY_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 248
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->closeAd()Z

    .line 250
    :cond_0
    return v0

    .line 244
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getAdListener()Lcom/amazon/device/ads/AdListener;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAd;->adListener:Lcom/amazon/device/ads/AdListener;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/amazon/device/ads/InterstitialAd;->timeout:I

    return v0
.end method

.method handleDismissed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 366
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_SHOW_DURATION:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 367
    invoke-static {}, Lcom/amazon/device/ads/AdControllerFactory;->removeCachedAdController()Lcom/amazon/device/ads/AdController;

    .line 368
    sget-object v0, Lcom/amazon/device/ads/InterstitialAd;->isAdShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 369
    iput-boolean v2, p0, Lcom/amazon/device/ads/InterstitialAd;->isThisAdShowing:Z

    .line 370
    invoke-virtual {p0}, Lcom/amazon/device/ads/InterstitialAd;->callOnAdDismissedOnMainThread()V

    .line 371
    return-void
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->LOADING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->LOADED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->RENDERING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isReadyToLoad()Z
    .locals 2

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->READY_TO_LOAD:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isReadyToShow()Z
    .locals 2

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->RENDERED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadAd()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/InterstitialAd;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/amazon/device/ads/InterstitialAd;->didAdActivityFail()Z

    .line 166
    invoke-virtual {p0}, Lcom/amazon/device/ads/InterstitialAd;->isReadyToLoad()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    sget-object v1, Lcom/amazon/device/ads/InterstitialAd$4;->$SwitchMap$com$amazon$device$ads$AdState:[I

    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 183
    const-string v1, "InterstitialAd"

    const-string v2, "An interstitial ad is currently loading. Please wait for the ad to finish loading and showing before loading another ad."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_0
    return v0

    .line 171
    :pswitch_0
    const-string v1, "InterstitialAd"

    const-string v2, "An interstitial ad is ready to show. Please call showAd() to show the ad before loading another ad."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :pswitch_1
    const-string v1, "InterstitialAd"

    const-string v2, "An interstitial ad is currently showing. Please wait for the user to dismiss the ad before loading an ad."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :pswitch_2
    const-string v1, "InterstitialAd"

    const-string v2, "An interstitial ad could not be loaded because of an unknown issue with the web views."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :pswitch_3
    const-string v1, "InterstitialAd"

    const-string v2, "An interstitial ad could not be loaded because the view has been destroyed."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/InterstitialAd;->getTimeout()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/device/ads/AdSlot;

    new-instance v3, Lcom/amazon/device/ads/AdSlot;

    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/amazon/device/ads/AdSlot;-><init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/AdTargetingOptions;)V

    aput-object v3, v2, v0

    invoke-static {v1, p1, v2}, Lcom/amazon/device/ads/AdLoader;->loadAds(ILcom/amazon/device/ads/AdTargetingOptions;[Lcom/amazon/device/ads/AdSlot;)V

    .line 189
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->isPrepared()Z

    move-result v0

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setListener(Lcom/amazon/device/ads/AdListener;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Lcom/amazon/device/ads/DefaultAdListener;

    const-string v1, "InterstitialAd"

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/DefaultAdListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/device/ads/InterstitialAd;->adListener:Lcom/amazon/device/ads/AdListener;

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/InterstitialAd;->adListener:Lcom/amazon/device/ads/AdListener;

    goto :goto_0
.end method

.method public setTimeout(I)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput p1, p0, Lcom/amazon/device/ads/InterstitialAd;->timeout:I

    .line 388
    return-void
.end method

.method public showAd()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0}, Lcom/amazon/device/ads/InterstitialAd;->didAdActivityFail()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const-string v1, "InterstitialAd"

    const-string v2, "The ad could not be shown because it previously failed to show. Please load a new ad."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :goto_0
    return v0

    .line 264
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 265
    invoke-virtual {p0}, Lcom/amazon/device/ads/InterstitialAd;->isReadyToShow()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 267
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdController;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    const-string v1, "InterstitialAd"

    const-string v2, "This interstitial ad has expired. Please load another ad."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->resetToReady()V

    goto :goto_0

    .line 273
    :cond_1
    sget-object v3, Lcom/amazon/device/ads/InterstitialAd;->isAdShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 275
    const-string v1, "InterstitialAd"

    const-string v2, "Another interstitial ad is currently showing. Please wait for the InterstitialAdListener.onAdDismissed callback of the other ad."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_2
    iput-boolean v4, p0, Lcom/amazon/device/ads/InterstitialAd;->isThisAdShowing:Z

    .line 281
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v3

    sget-object v4, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOADED_TO_AD_SHOW_TIME:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v3, v4, v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 282
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v3

    sget-object v4, Lcom/amazon/device/ads/Metrics$MetricType;->AD_SHOW_DURATION:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v3, v4, v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 286
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/device/ads/AdControllerFactory;->cacheAdController(Lcom/amazon/device/ads/AdController;)V

    .line 287
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->AD_SHOW_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 288
    invoke-virtual {p0}, Lcom/amazon/device/ads/InterstitialAd;->showAdInActivity()Z

    move-result v1

    .line 289
    if-nez v1, :cond_3

    .line 292
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->clearCachedAdController()V

    .line 293
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->resetToReady()V

    .line 295
    sget-object v2, Lcom/amazon/device/ads/InterstitialAd;->isAdShowing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 296
    iput-boolean v0, p0, Lcom/amazon/device/ads/InterstitialAd;->isThisAdShowing:Z

    .line 297
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LATENCY_RENDER_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    :cond_3
    move v0, v1

    .line 299
    goto :goto_0

    .line 304
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/device/ads/InterstitialAd;->isReadyToLoad()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 306
    const-string v1, "InterstitialAd"

    const-string v2, "The interstitial ad cannot be shown because it has not loaded successfully. Please call loadAd(AdTargetingOptions) to load an ad first."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 308
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/device/ads/InterstitialAd;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 310
    const-string v1, "InterstitialAd"

    const-string v2, "The interstitial ad cannot be shown because it is still loading. Please wait for the AdListener.onAdLoaded() callback before showing the ad."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/device/ads/InterstitialAd;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 314
    const-string v1, "InterstitialAd"

    const-string v2, "The interstitial ad cannot be shown because it is already displayed on the screen. Please wait for the InterstitialAdListener.onAdDismissed() callback and then load a new ad."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 318
    :cond_7
    const-string v1, "InterstitialAd"

    const-string v2, "An interstitial ad is not ready to show."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method showAdInActivity()Z
    .locals 3

    .prologue
    .line 333
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/device/ads/InterstitialAd;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/device/ads/AdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    const-string v1, "adapter"

    const-class v2, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    iget-object v1, p0, Lcom/amazon/device/ads/InterstitialAd;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 337
    :catch_0
    move-exception v0

    .line 339
    const-string v0, "InterstitialAd"

    const-string v1, "Failed to show the interstitial ad because AdActivity could not be found."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x0

    goto :goto_0
.end method

.method submitAndResetMetrics()V
    .locals 2

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MetricsCollector;->isMetricsCollectorEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->setAdditionalMetrics()V

    .line 450
    invoke-direct {p0}, Lcom/amazon/device/ads/InterstitialAd;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->submitAndResetMetricsIfNecessary(Z)V

    .line 452
    :cond_0
    return-void
.end method
