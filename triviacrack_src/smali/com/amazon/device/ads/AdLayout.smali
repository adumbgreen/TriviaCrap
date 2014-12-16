.class public Lcom/amazon/device/ads/AdLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/Ad;


# static fields
.field private static final CONTENT_DESCRIPTION_AD_LAYOUT:Ljava/lang/String; = "adLayoutObject"

.field public static final DEFAULT_TIMEOUT:I = 0x4e20

.field static final LAYOUT_NOT_RUN_ERR_MSG:Ljava/lang/String; = "Can\'t load an ad because the view size cannot be determined."

.field static final LAYOUT_PARAMS_NULL_ERR_MSG:Ljava/lang/String; = "Can\'t load an ad because layout parameters are blank. Use setLayoutParams() to specify dimensions for this AdLayout."

.field static final LOADING_IN_PROGRESS_LOG_MSG:Ljava/lang/String; = "Can\'t load an ad because ad loading is already in progress"

.field private static final LOG_TAG:Ljava/lang/String; = "AdLayout"

.field private static threadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private activityRootView:Landroid/view/View;

.field private adController:Lcom/amazon/device/ads/AdController;

.field private adListener:Lcom/amazon/device/ads/AdListener;

.field private final adSize:Lcom/amazon/device/ads/AdSize;

.field private adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

.field private attached:Z

.field private final context:Landroid/content/Context;

.field private currentView:Lcom/amazon/device/ads/AdContainer;

.field private hasRegisterBroadcastReciever:Z

.field private isDestroyed:Z

.field private isInForeground:Z

.field private isInitialized:Z

.field private isParentViewMissingAtLoadTime:Z

.field private lastVisibility:I

.field private needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private screenStateReceiver:Landroid/content/BroadcastReceiver;

.field private shouldDisableWebViewHardwareAcceleration:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 111
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/amazon/device/ads/AdLayout;->threadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 112
    sget-object v0, Lcom/amazon/device/ads/AdLayout;->threadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v1, 0x3c

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    sget-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO:Lcom/amazon/device/ads/AdSize;

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/app/Activity;Lcom/amazon/device/ads/AdSize;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/device/ads/AdSize;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 76
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    .line 77
    const/16 v0, 0x8

    iput v0, p0, Lcom/amazon/device/ads/AdLayout;->lastVisibility:I

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    .line 81
    iput-object v2, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    .line 85
    iput-object v2, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 87
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    .line 89
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    .line 134
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 76
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    .line 77
    const/16 v0, 0x8

    iput v0, p0, Lcom/amazon/device/ads/AdLayout;->lastVisibility:I

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    .line 81
    iput-object v2, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    .line 85
    iput-object v2, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 87
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    .line 89
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    .line 155
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    .line 156
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/AdLayout;->determineAdSize(Landroid/util/AttributeSet;)Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 76
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    .line 77
    const/16 v0, 0x8

    iput v0, p0, Lcom/amazon/device/ads/AdLayout;->lastVisibility:I

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    .line 81
    iput-object v2, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    .line 85
    iput-object v2, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 87
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    .line 89
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    .line 170
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    .line 171
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/AdLayout;->determineAdSize(Landroid/util/AttributeSet;)Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/AdLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isInForeground:Z

    return v0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdController;
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/AdLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->startAdLoadUponLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/AdLayout;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdContainer;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->currentView:Lcom/amazon/device/ads/AdContainer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/amazon/device/ads/AdLayout;Lcom/amazon/device/ads/AdContainer;)Lcom/amazon/device/ads/AdContainer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->currentView:Lcom/amazon/device/ads/AdContainer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdListener;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adListener:Lcom/amazon/device/ads/AdListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/amazon/device/ads/AdLayout;Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/AdController;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    return-object p1
.end method

.method private collapseAd()V
    .locals 2

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    new-instance v0, Lcom/amazon/device/ads/AdLayout$2;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdLayout$2;-><init>(Lcom/amazon/device/ads/AdLayout;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 455
    :cond_0
    return-void
.end method

.method private determineAdSize(Landroid/util/AttributeSet;)Lcom/amazon/device/ads/AdSize;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 176
    const-string v0, "adSize"

    .line 177
    const-string v0, "http://schemas.android.com/apk/lib/com.amazon.device.ads"

    .line 179
    const-string v0, "http://schemas.android.com/apk/lib/com.amazon.device.ads"

    const-string v1, "adSize"

    invoke-static {p1, v0, v1}, Lcom/amazon/device/ads/AdLayout;->getAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://schemas.android.com/apk/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string v1, "adSize"

    invoke-static {p1, v0, v1}, Lcom/amazon/device/ads/AdLayout;->getAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 187
    const-string v1, "AdLayout"

    const-string v2, "DEPRECATED - Please use the XML namespace \"http://schemas.android.com/apk/lib/com.amazon.device.ads\" for specifying AdLayout properties."

    invoke-static {v3, v1, v2}, Lcom/amazon/device/ads/Log;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const-string v0, "Using \"custom\" or \"CUSTOM\" for the \"adSize\" property is no longer supported. Please specifiy a size or remove the property to use Auto Ad Size."

    .line 191
    const-string v1, "AdLayout"

    invoke-static {v3, v1, v0}, Lcom/amazon/device/ads/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_0
    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->parseAdSize(Ljava/lang/String;)Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    .line 198
    return-object v0
.end method

.method private getAdController()Lcom/amazon/device/ads/AdController;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->initializeIfNecessary()V

    .line 299
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    if-nez v0, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->initializeAdController()V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    return-object v0
.end method

.method private static getAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    invoke-interface {p0, p1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeAdController()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    if-nez v0, :cond_1

    .line 280
    sget-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO:Lcom/amazon/device/ads/AdSize;

    .line 286
    :goto_0
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/AdLayout;->createAdController(Lcom/amazon/device/ads/AdSize;Landroid/content/Context;)Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdLayout;->setAdController(Lcom/amazon/device/ads/AdController;)V

    .line 288
    :cond_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    goto :goto_0
.end method

.method private isReadyToLoad()Z
    .locals 2

    .prologue
    .line 609
    sget-object v0, Lcom/amazon/device/ads/AdState;->READY_TO_LOAD:Lcom/amazon/device/ads/AdState;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

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

.method private loadAdWhenParentViewMissing()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 674
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_0

    .line 676
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->AD_FAILED_NULL_LAYOUT_PARAMS:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 677
    const-string v1, "Can\'t load an ad because layout parameters are blank. Use setLayoutParams() to specify dimensions for this AdLayout."

    invoke-direct {p0, v1}, Lcom/amazon/device/ads/AdLayout;->onRequestError(Ljava/lang/String;)V

    .line 714
    :goto_0
    return v0

    .line 684
    :cond_0
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 686
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setActivityRootView()V

    .line 687
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isActivityRootViewNull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 690
    const-string v1, "Ad load failed because root view could not be obtained from the activity."

    .line 691
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/AdLayout;->onRequestError(Ljava/lang/String;)V

    goto :goto_0

    .line 697
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isActivityRootViewLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 699
    const-string v1, "AdLayout"

    const-string v2, "Activity root view layout is requested."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->deferAdLoadToLayoutEvent()V

    .line 701
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setOnLayoutChangeListenerForRoot()V

    goto :goto_0

    .line 706
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setFloatingWindowDimensions()V

    move v0, v1

    .line 707
    goto :goto_0

    .line 713
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setFloatingWindowDimensions()V

    move v0, v1

    .line 714
    goto :goto_0
.end method

.method private onRequestError(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 916
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->onRequestError(Ljava/lang/String;)V

    .line 917
    return-void
.end method

.method private static parseAdSize(Ljava/lang/String;)Lcom/amazon/device/ads/AdSize;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 313
    sget-object v1, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO:Lcom/amazon/device/ads/AdSize;

    .line 314
    if-eqz p0, :cond_1

    .line 316
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 317
    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 320
    const-string v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 323
    array-length v1, v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 325
    aget-object v1, v2, v0

    invoke-static {v1, v0}, Lcom/amazon/device/ads/NumberUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 326
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2, v0}, Lcom/amazon/device/ads/NumberUtils;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 329
    :goto_0
    new-instance v2, Lcom/amazon/device/ads/AdSize;

    invoke-direct {v2, v1, v0}, Lcom/amazon/device/ads/AdSize;-><init>(II)V

    move-object v0, v2

    .line 332
    :goto_1
    return-object v0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private registerScreenStateBroadcastReceiver()V
    .locals 3

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    if-eqz v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 367
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 368
    new-instance v0, Lcom/amazon/device/ads/AdLayout$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdLayout$1;-><init>(Lcom/amazon/device/ads/AdLayout;)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 380
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 381
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setAdController(Lcom/amazon/device/ads/AdController;)V
    .locals 2
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    .line 293
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->createAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->setCallback(Lcom/amazon/device/ads/AdControlCallback;)V

    .line 294
    return-void
.end method

.method private startAdLoadUponLayout()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 483
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 484
    new-instance v1, Lcom/amazon/device/ads/AdSlot;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazon/device/ads/AdSlot;-><init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/AdTargetingOptions;)V

    invoke-virtual {v1, v3}, Lcom/amazon/device/ads/AdSlot;->setDeferredLoad(Z)Lcom/amazon/device/ads/AdSlot;

    move-result-object v1

    .line 485
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getTimeout()I

    move-result v2

    new-array v3, v3, [Lcom/amazon/device/ads/AdSlot;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v0, v3}, Lcom/amazon/device/ads/AdLoader;->loadAds(ILcom/amazon/device/ads/AdTargetingOptions;[Lcom/amazon/device/ads/AdSlot;)V

    .line 486
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    const-string v0, "Could not load ad on layout."

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdLayout;->onRequestError(Ljava/lang/String;)V

    .line 490
    :cond_0
    return-void
.end method

.method private unregisterScreenStateBroadcastReceiver()V
    .locals 2

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    if-eqz v0, :cond_0

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 389
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 391
    :cond_0
    return-void
.end method


# virtual methods
.method adFailed(Lcom/amazon/device/ads/AdError;)V
    .locals 1
    .parameter

    .prologue
    .line 720
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->adFailed(Lcom/amazon/device/ads/AdError;)V

    .line 721
    return-void
.end method

.method adShown()V
    .locals 1

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->adShown()V

    .line 734
    return-void
.end method

.method bypassAdRenderingProcess()V
    .locals 2

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->RENDERING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->setAdState(Lcom/amazon/device/ads/AdState;)V

    .line 728
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    const-string v1, "custom-render"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->adRendered(Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method createAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;
    .locals 1

    .prologue
    .line 342
    new-instance v0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;-><init>(Lcom/amazon/device/ads/AdLayout;)V

    return-object v0
.end method

.method createAdController(Lcom/amazon/device/ads/AdSize;Landroid/content/Context;)Lcom/amazon/device/ads/AdController;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 337
    invoke-static {p2, p1}, Lcom/amazon/device/ads/AdControllerFactory;->buildAdController(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)Lcom/amazon/device/ads/AdController;

    move-result-object v0

    return-object v0
.end method

.method deferAdLoadToLayoutEvent()V
    .locals 1

    .prologue
    .line 860
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->setNeedsToLoadAdOnLayout(Z)V

    .line 861
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->scheduleTaskForCheckingIfLayoutHasRun()V

    .line 862
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1046
    :goto_0
    return-void

    .line 1042
    :cond_0
    const-string v0, "AdLayout"

    const-string v1, "Destroying the AdLayout"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    .line 1044
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->unregisterScreenStateBroadcastReceiver()V

    .line 1045
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->destroy()V

    goto :goto_0
.end method

.method failLoadIfLayoutHasNotRun()V
    .locals 2

    .prologue
    .line 879
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->getAndSetNeedsToLoadAdOnLayout(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_FAILED_LAYOUT_NOT_RUN:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 882
    const-string v0, "Can\'t load an ad because the view size cannot be determined."

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdLayout;->onRequestError(Ljava/lang/String;)V

    .line 884
    :cond_0
    return-void
.end method

.method getActivityRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    return-object v0
.end method

.method getActivityRootViewDimension(Z)I
    .locals 1
    .parameter

    .prologue
    .line 984
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method getAdData()Lcom/amazon/device/ads/AdData;
    .locals 1

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v0

    return-object v0
.end method

.method getAdListener()Lcom/amazon/device/ads/AdListener;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adListener:Lcom/amazon/device/ads/AdListener;

    return-object v0
.end method

.method public getAdSize()Lcom/amazon/device/ads/AdSize;
    .locals 1

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    .line 533
    if-nez v0, :cond_0

    .line 535
    const/4 v0, 0x0

    .line 537
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    goto :goto_0
.end method

.method getAndSetNeedsToLoadAdOnLayout(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 906
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method

.method getNeedsToLoadAdOnLayout()Z
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method getRawScreenDimension(Z)I
    .locals 2
    .parameter

    .prologue
    .line 847
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 848
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 849
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 850
    if-eqz p1, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    return v0

    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    .line 500
    if-nez v0, :cond_0

    .line 502
    const/4 v0, -0x1

    .line 504
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getTimeout()I

    move-result v0

    goto :goto_0
.end method

.method initializeIfNecessary()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 221
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 226
    const-string v0, "AdLayout"

    const-string v5, "Initializing AdLayout."

    invoke-static {v0, v5}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v0

    iget-object v5, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-interface {v0, v5}, Lcom/amazon/device/ads/IInternalAdRegistration;->contextReceived(Landroid/content/Context;)V

    .line 229
    const-string v0, "adLayoutObject"

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 238
    const-string v2, "AdLayout"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 241
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->addView(Landroid/view/View;)V

    .line 242
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isInForeground:Z

    .line 248
    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/AdLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 249
    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/AdLayout;->setVerticalScrollBarEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->isWebViewDatabaseNull(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    const-string v0, "AdLayout"

    const-string v2, "Disabling ads. Local cache file is inaccessible so ads will fail if we try to create a WebView. Details of this Android bug found at: http://code.google.com/p/android/issues/detail?id=10789"

    invoke-static {v1, v0, v2}, Lcom/amazon/device/ads/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 246
    goto :goto_1

    .line 261
    :cond_3
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    .line 263
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adListener:Lcom/amazon/device/ads/AdListener;

    if-nez v0, :cond_4

    .line 265
    new-instance v0, Lcom/amazon/device/ads/DefaultAdListener;

    const-string v1, "AdLayout"

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/DefaultAdListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adListener:Lcom/amazon/device/ads/AdListener;

    .line 268
    :cond_4
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->initializeAdController()V

    .line 269
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LAYOUT_INITIALIZATION:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1, v3, v4}, Lcom/amazon/device/ads/MetricsCollector;->startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 270
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LAYOUT_INITIALIZATION:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    goto/16 :goto_0
.end method

.method isActivityRootViewLayoutRequested()Z
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    return v0
.end method

.method isActivityRootViewNull()Z
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdLoading()Z
    .locals 1

    .prologue
    .line 1027
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isLoading()Z

    move-result v0

    return v0
.end method

.method isInitialized()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .line 1010
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    .line 1011
    if-nez v0, :cond_0

    .line 1013
    const/4 v0, 0x0

    .line 1015
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->LOADING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method isParentViewMissingAtLoadTime()Z
    .locals 1

    .prologue
    .line 925
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    return v0
.end method

.method isPrepared()Z
    .locals 1

    .prologue
    .line 911
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->isPrepared()Z

    move-result v0

    return v0
.end method

.method isWebViewDatabaseNull(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 347
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()Z
    .locals 1

    .prologue
    .line 547
    new-instance v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 558
    if-nez p1, :cond_0

    .line 560
    new-instance p1, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {p1}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    .line 562
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 564
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getNeedsToLoadAdOnLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 566
    const-string v1, "AdLayout"

    const-string v2, "Can\'t load an ad because ad loading is already in progress"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :goto_0
    return v0

    .line 569
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->initializeIfNecessary()V

    .line 570
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    .line 572
    const-string v1, "AdLayout"

    const-string v2, "The ad could not be initialized properly."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 575
    :cond_2
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->isReadyToLoad()Z

    move-result v2

    if-nez v2, :cond_3

    .line 577
    sget-object v1, Lcom/amazon/device/ads/AdLayout$4;->$SwitchMap$com$amazon$device$ads$AdState:[I

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 589
    const-string v1, "AdLayout"

    const-string v2, "Can\'t load an ad because ad loading is already in progress"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :pswitch_0
    const-string v1, "AdLayout"

    const-string v2, "An ad could not be loaded because of an unknown issue with web views."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :pswitch_1
    const-string v1, "AdLayout"

    const-string v2, "An ad could not be loaded because the AdLayout has been destroyed."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :pswitch_2
    const-string v1, "AdLayout"

    const-string v2, "An ad could not be loaded because another ad is currently expanded."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 594
    :cond_3
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getTimeout()I

    move-result v2

    new-array v3, v1, [Lcom/amazon/device/ads/AdSlot;

    new-instance v4, Lcom/amazon/device/ads/AdSlot;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lcom/amazon/device/ads/AdSlot;-><init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/AdTargetingOptions;)V

    aput-object v4, v3, v0

    invoke-static {v2, p1, v3}, Lcom/amazon/device/ads/AdLoader;->loadAds(ILcom/amazon/device/ads/AdTargetingOptions;[Lcom/amazon/device/ads/AdSlot;)V

    .line 596
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getNeedsToLoadAdOnLayout()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 598
    goto :goto_0

    .line 600
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isPrepared()Z

    move-result v0

    goto :goto_0

    .line 577
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 396
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 398
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    .line 401
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->registerScreenStateBroadcastReceiver()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 406
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    .line 408
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->collapseAd()V

    .line 409
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->unregisterScreenStateBroadcastReceiver()V

    .line 410
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    if-eqz v0, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    sub-int v0, p4, p2

    .line 465
    sub-int v1, p5, p3

    .line 466
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 468
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 473
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/amazon/device/ads/AdController;->setWindowDimensions(II)V

    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->getAndSetNeedsToLoadAdOnLayout(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->startAdLoadUponLayout()V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/device/ads/AdLayout;->lastVisibility:I

    if-eq v0, p1, :cond_0

    .line 416
    if-eqz p1, :cond_1

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isInForeground:Z

    .line 419
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->collapseAd()V

    .line 420
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->unregisterScreenStateBroadcastReceiver()V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    if-nez p1, :cond_0

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isInForeground:Z

    goto :goto_0
.end method

.method prepareAd(Z)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 621
    if-eqz p1, :cond_1

    .line 623
    const-string v1, "AdLayout"

    const-string v2, "Skipping ad layout preparation steps because the layout is already prepared."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_0
    :goto_0
    return v0

    .line 626
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->isReadyToLoad()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 628
    goto :goto_0

    .line 631
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getNeedsToLoadAdOnLayout()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 633
    const-string v0, "AdLayout"

    const-string v2, "Can\'t load an ad because ad loading is already in progress"

    invoke-static {v0, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 634
    goto :goto_0

    .line 637
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSize;->isAuto()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 639
    const-string v2, "Ad size to be determined automatically."

    .line 640
    const-string v3, "AdLayout"

    invoke-static {v3, v2}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setIsParentViewMissingAtLoadTime()V

    .line 645
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSize;->isAuto()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->areWindowDimensionsSet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 650
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSize;->isAuto()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime()Z

    move-result v2

    if-nez v2, :cond_6

    .line 655
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->deferAdLoadToLayoutEvent()V

    move v0, v1

    .line 656
    goto :goto_0

    .line 658
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    const-string v0, "AdLayout"

    const-string v1, "The ad\'s parent view is missing at load time."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->loadAdWhenParentViewMissing()Z

    move-result v0

    goto :goto_0
.end method

.method resolveLayoutParamForFloatingAd(Z)I
    .locals 2
    .parameter

    .prologue
    .line 815
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 817
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 819
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isActivityRootViewNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 823
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdLayout;->getRawScreenDimension(Z)I

    move-result v0

    .line 837
    :cond_0
    :goto_1
    return v0

    .line 815
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 828
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdLayout;->getActivityRootViewDimension(Z)I

    move-result v0

    goto :goto_1

    .line 832
    :cond_3
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 834
    const/4 v0, 0x0

    goto :goto_1
.end method

.method scheduleTaskForCheckingIfLayoutHasRun()V
    .locals 5

    .prologue
    .line 866
    new-instance v0, Lcom/amazon/device/ads/AdLayout$3;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdLayout$3;-><init>(Lcom/amazon/device/ads/AdLayout;)V

    .line 874
    sget-object v1, Lcom/amazon/device/ads/AdLayout;->threadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getTimeout()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 875
    return-void
.end method

.method setActivityRootView()V
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    .line 957
    return-void
.end method

.method setFloatingWindowDimensions()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 787
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v1, :cond_1

    .line 789
    :cond_0
    const-string v0, "AdLayout"

    const-string v1, "The requested ad will scale based on the screen\'s dimensions because at least one AdLayout dimension is set to MATCH_PARENT but the AdLayout is currently missing a fixed-size parent view."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->resolveLayoutParamForFloatingAd(Z)I

    move-result v0

    .line 794
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/AdLayout;->resolveLayoutParamForFloatingAd(Z)I

    move-result v1

    .line 796
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/amazon/device/ads/AdController;->setWindowDimensions(II)V

    .line 797
    return-void
.end method

.method setIsParentViewMissingAtLoadTime()V
    .locals 1

    .prologue
    .line 933
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    .line 934
    return-void

    .line 933
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setIsParentViewMissingAtLoadTime(Z)V
    .locals 0
    .parameter

    .prologue
    .line 940
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    .line 941
    return-void
.end method

.method public setListener(Lcom/amazon/device/ads/AdListener;)V
    .locals 2
    .parameter

    .prologue
    .line 993
    if-nez p1, :cond_0

    .line 995
    new-instance v0, Lcom/amazon/device/ads/DefaultAdListener;

    const-string v1, "AdLayout"

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/DefaultAdListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adListener:Lcom/amazon/device/ads/AdListener;

    .line 1001
    :goto_0
    return-void

    .line 999
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->adListener:Lcom/amazon/device/ads/AdListener;

    goto :goto_0
.end method

.method setNeedsToLoadAdOnLayout(Z)V
    .locals 1
    .parameter

    .prologue
    .line 901
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 902
    return-void
.end method

.method setOnLayoutChangeListenerForRoot()V
    .locals 0

    .prologue
    .line 742
    invoke-static {p0}, Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil;->setOnLayoutChangeListenerForRoot(Lcom/amazon/device/ads/AdLayout;)V

    .line 743
    return-void
.end method

.method setShouldDisableWebViewHardwareAcceleration(Z)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdLayout;->shouldDisableWebViewHardwareAcceleration:Z

    .line 209
    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .parameter

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    .line 517
    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->setTimeout(I)V

    .line 521
    :cond_0
    return-void
.end method

.method shouldDisableWebViewHardwareAcceleration()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->shouldDisableWebViewHardwareAcceleration:Z

    return v0
.end method
