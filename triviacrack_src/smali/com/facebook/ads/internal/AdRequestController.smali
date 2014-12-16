.class public Lcom/facebook/ads/internal/AdRequestController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANDROID_PERMISSION_ACCESS_NETWORK_STATE:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_STATE"

.field private static final DEFAULT_REFRESH_THRESHOLD_MILLIS:I = 0x4e20

.field private static final MIN_REFRESH_INTERVAL_MILLIS:I = 0x7530

.field private static lastRequestTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final adSize:Lcom/facebook/ads/AdSize;

.field private final adType:Lcom/facebook/ads/internal/AdType;

.field private final adViewRequestCallback:Lcom/facebook/ads/internal/AdRequest$Callback;

.field private final context:Landroid/content/Context;

.field private currentVisibility:I

.field private final handler:Landroid/os/Handler;

.field private initialLoadFinished:Z

.field private lastRequest:Landroid/os/AsyncTask;

.field private final placementId:Ljava/lang/String;

.field private refreshInterval:I

.field private final refreshRunnable:Ljava/lang/Runnable;

.field private volatile refreshScheduled:Z

.field private refreshThreshold:I

.field private final screenStateReceiver:Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;

.field private shouldRefresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/AdRequestController;->lastRequestTimes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;ZLcom/facebook/ads/internal/AdType;Lcom/facebook/ads/internal/AdRequest$Callback;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x7530

    iput v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshInterval:I

    .line 59
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshThreshold:I

    .line 60
    iput-boolean v1, p0, Lcom/facebook/ads/internal/AdRequestController;->initialLoadFinished:Z

    .line 62
    iput-boolean v1, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshScheduled:Z

    .line 68
    const/16 v0, 0x8

    iput v0, p0, Lcom/facebook/ads/internal/AdRequestController;->currentVisibility:I

    .line 72
    if-nez p6, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adViewRequestCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/internal/AdRequestController;->context:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/facebook/ads/internal/AdRequestController;->placementId:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/facebook/ads/internal/AdRequestController;->adSize:Lcom/facebook/ads/AdSize;

    .line 79
    iput-boolean p4, p0, Lcom/facebook/ads/internal/AdRequestController;->shouldRefresh:Z

    .line 80
    iput-object p5, p0, Lcom/facebook/ads/internal/AdRequestController;->adType:Lcom/facebook/ads/internal/AdType;

    .line 81
    iput-object p6, p0, Lcom/facebook/ads/internal/AdRequestController;->adViewRequestCallback:Lcom/facebook/ads/internal/AdRequest$Callback;

    .line 82
    new-instance v0, Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;-><init>(Lcom/facebook/ads/internal/AdRequestController;Lcom/facebook/ads/internal/AdRequestController$1;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->screenStateReceiver:Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->handler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/facebook/ads/internal/AdRequestController$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/AdRequestController$1;-><init>(Lcom/facebook/ads/internal/AdRequestController;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshRunnable:Ljava/lang/Runnable;

    .line 93
    invoke-direct {p0}, Lcom/facebook/ads/internal/AdRequestController;->registerScreenStateReceiver()V

    .line 94
    return-void
.end method

.method static synthetic access$102(Lcom/facebook/ads/internal/AdRequestController;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshScheduled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/facebook/ads/internal/AdRequestController;)Lcom/facebook/ads/internal/AdRequest$Callback;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->adViewRequestCallback:Lcom/facebook/ads/internal/AdRequest$Callback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/facebook/ads/internal/AdRequestController;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/facebook/ads/internal/AdRequestController;->initialLoadFinished:Z

    return p1
.end method

.method static synthetic access$402(Lcom/facebook/ads/internal/AdRequestController;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshInterval:I

    return p1
.end method

.method static synthetic access$502(Lcom/facebook/ads/internal/AdRequestController;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshThreshold:I

    return p1
.end method

.method static synthetic access$600(Lcom/facebook/ads/internal/AdRequestController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/AdRequestController;->cancelRefresh(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/ads/internal/AdRequestController;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/facebook/ads/internal/AdRequestController;->currentVisibility:I

    return v0
.end method

.method private declared-synchronized cancelRefresh(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    monitor-exit p0

    return-void

    .line 140
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshScheduled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isNetworkConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 222
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->context:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 223
    if-eqz v0, :cond_0

    .line 229
    :goto_0
    return v1

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 228
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private registerScreenStateReceiver()V
    .locals 3

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->shouldRefresh:Z

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequestController;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/internal/AdRequestController;->screenStateReceiver:Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private unregisterScreenStateReceiver()V
    .locals 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->shouldRefresh:Z

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 116
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequestController;->screenStateReceiver:Lcom/facebook/ads/internal/AdRequestController$ScreenStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-static {v0}, Lcom/facebook/ads/internal/AdClientEvent;->newErrorEvent(Ljava/lang/Exception;)Lcom/facebook/ads/internal/AdClientEvent;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/AdClientEventManager;->addClientEvent(Lcom/facebook/ads/internal/AdClientEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/facebook/ads/internal/AdRequestController;->unregisterScreenStateReceiver()V

    .line 203
    const-string v0, "destroy"

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/AdRequestController;->cancelRefresh(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public disableRefresh()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->shouldRefresh:Z

    .line 98
    return-void
.end method

.method public declared-synchronized loadAd()V
    .locals 7

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 146
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->shouldRefresh:Z

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/facebook/ads/internal/AdRequestController;->lastRequestTimes:Ljava/util/Map;

    iget-object v3, p0, Lcom/facebook/ads/internal/AdRequestController;->placementId:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 148
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshThreshold:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->adViewRequestCallback:Lcom/facebook/ads/internal/AdRequest$Callback;

    sget-object v1, Lcom/facebook/ads/AdError;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/AdError;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/AdRequest$Callback;->onError(Lcom/facebook/ads/AdError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :goto_0
    monitor-exit p0

    return-void

    .line 155
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshScheduled:Z

    if-eqz v0, :cond_1

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/AdRequestController;->cancelRefresh(Ljava/lang/String;)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->lastRequest:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->lastRequest:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v3, :cond_2

    .line 160
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->lastRequest:Landroid/os/AsyncTask;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 163
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/internal/AdRequestController;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 164
    const/16 v0, 0x7530

    iput v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshInterval:I

    .line 165
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshThreshold:I

    .line 166
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->adViewRequestCallback:Lcom/facebook/ads/internal/AdRequest$Callback;

    new-instance v1, Lcom/facebook/ads/AdError;

    const/4 v2, -0x1

    const-string v3, "network unavailable"

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/AdRequest$Callback;->onError(Lcom/facebook/ads/AdError;)V

    .line 167
    const-string v0, "no network connection"

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/AdRequestController;->scheduleRefresh(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 171
    :cond_3
    :try_start_2
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->shouldRefresh:Z

    if-eqz v0, :cond_4

    .line 172
    sget-object v0, Lcom/facebook/ads/internal/AdRequestController;->lastRequestTimes:Ljava/util/Map;

    iget-object v3, p0, Lcom/facebook/ads/internal/AdRequestController;->placementId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_4
    new-instance v0, Lcom/facebook/ads/internal/AdRequest;

    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequestController;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/internal/AdRequestController;->placementId:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/ads/internal/AdRequestController;->adSize:Lcom/facebook/ads/AdSize;

    iget-object v4, p0, Lcom/facebook/ads/internal/AdRequestController;->adType:Lcom/facebook/ads/internal/AdType;

    iget-object v5, p0, Lcom/facebook/ads/internal/AdRequestController;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v5

    new-instance v6, Lcom/facebook/ads/internal/AdRequestController$2;

    invoke-direct {v6, p0}, Lcom/facebook/ads/internal/AdRequestController$2;-><init>(Lcom/facebook/ads/internal/AdRequestController;)V

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/AdRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/AdType;ZLcom/facebook/ads/internal/AdRequest$Callback;)V

    .line 198
    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequest;->executeAsync()Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->lastRequest:Landroid/os/AsyncTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 207
    iput p1, p0, Lcom/facebook/ads/internal/AdRequestController;->currentVisibility:I

    .line 208
    if-nez p1, :cond_1

    .line 213
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->initialLoadFinished:Z

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "onWindowVisibilityChanged"

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/AdRequestController;->scheduleRefresh(Ljava/lang/String;)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const-string v0, "onWindowVisibilityChanged"

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/AdRequestController;->cancelRefresh(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized scheduleRefresh(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->shouldRefresh:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 127
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshInterval:I

    if-lez v0, :cond_0

    .line 128
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshScheduled:Z

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequestController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/AdRequestController;->refreshScheduled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
