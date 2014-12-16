.class public abstract Lcom/facebook/ads/internal/AdHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected adDataModel:Lcom/facebook/ads/internal/AdDataModel;

.field private context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field protected final impressionHelper:Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;

.field private volatile impressionRetryScheduled:Z

.field private volatile impressionSent:Z

.field private final sendImpressionDelay:J

.field private final sendImpressionRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;JLandroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/facebook/ads/internal/AdHandler$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/AdHandler$1;-><init>(Lcom/facebook/ads/internal/AdHandler;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->sendImpressionRunnable:Ljava/lang/Runnable;

    .line 54
    iput-object p4, p0, Lcom/facebook/ads/internal/AdHandler;->context:Landroid/content/Context;

    .line 55
    iput-object p1, p0, Lcom/facebook/ads/internal/AdHandler;->impressionHelper:Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;

    .line 56
    iput-wide p2, p0, Lcom/facebook/ads/internal/AdHandler;->sendImpressionDelay:J

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->handler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic access$002(Lcom/facebook/ads/internal/AdHandler;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/facebook/ads/internal/AdHandler;->impressionRetryScheduled:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized cancelImpressionRetry()V
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionRetryScheduled:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/AdHandler;->sendImpressionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionRetryScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAdDataModel()Lcom/facebook/ads/internal/AdDataModel;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->adDataModel:Lcom/facebook/ads/internal/AdDataModel;

    return-object v0
.end method

.method public declared-synchronized scheduleImpressionRetry()V
    .locals 4

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionSent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionRetryScheduled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->adDataModel:Lcom/facebook/ads/internal/AdDataModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/AdHandler;->sendImpressionRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/facebook/ads/internal/AdHandler;->sendImpressionDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionRetryScheduled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract sendImpression()V
.end method

.method public setAdDataModel(Lcom/facebook/ads/internal/AdDataModel;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 62
    iput-object p1, p0, Lcom/facebook/ads/internal/AdHandler;->adDataModel:Lcom/facebook/ads/internal/AdDataModel;

    .line 63
    iput-boolean v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionSent:Z

    .line 64
    iput-boolean v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionRetryScheduled:Z

    .line 65
    return-void
.end method

.method public declared-synchronized trySendImpression()V
    .locals 2

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->adDataModel:Lcom/facebook/ads/internal/AdDataModel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionSent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 92
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionHelper:Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionHelper:Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;

    invoke-interface {v0}, Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;->shouldSendImpression()Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/facebook/ads/internal/AdHandler;->scheduleImpressionRetry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 97
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionHelper:Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionHelper:Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;

    invoke-interface {v0}, Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;->onLoggingImpression()V

    .line 101
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/internal/AdHandler;->sendImpression()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/AdHandler;->impressionSent:Z

    .line 104
    iget-object v0, p0, Lcom/facebook/ads/internal/AdHandler;->context:Landroid/content/Context;

    const-string v1, "Impression logged"

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/AdUtilities;->displayDebugMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
