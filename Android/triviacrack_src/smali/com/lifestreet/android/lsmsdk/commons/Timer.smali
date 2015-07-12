.class public final Lcom/lifestreet/android/lsmsdk/commons/Timer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sTimerHandler:Landroid/os/Handler;


# instance fields
.field private mDelay:J

.field private final mEventListener:Lcom/lifestreet/android/lsmsdk/commons/Timer$Event;

.field private mLastTimeMillis:J

.field private final mTimerEvent:Lcom/lifestreet/android/lsmsdk/commons/Timer$TimerEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->sTimerHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/lifestreet/android/lsmsdk/commons/Timer$Event;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mDelay:J

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mLastTimeMillis:J

    .line 38
    new-instance v0, Lcom/lifestreet/android/lsmsdk/commons/Timer$TimerEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lifestreet/android/lsmsdk/commons/Timer$TimerEvent;-><init>(Lcom/lifestreet/android/lsmsdk/commons/Timer;Lcom/lifestreet/android/lsmsdk/commons/Timer$1;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mTimerEvent:Lcom/lifestreet/android/lsmsdk/commons/Timer$TimerEvent;

    .line 41
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mEventListener:Lcom/lifestreet/android/lsmsdk/commons/Timer$Event;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/lifestreet/android/lsmsdk/commons/Timer$Event;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lifestreet/android/lsmsdk/commons/Timer;-><init>(Lcom/lifestreet/android/lsmsdk/commons/Timer$Event;)V

    .line 46
    iput-wide p2, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mDelay:J

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/lifestreet/android/lsmsdk/commons/Timer;)Lcom/lifestreet/android/lsmsdk/commons/Timer$Event;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mEventListener:Lcom/lifestreet/android/lsmsdk/commons/Timer$Event;

    return-object v0
.end method


# virtual methods
.method public getDelay()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mDelay:J

    return-wide v0
.end method

.method public pause()V
    .locals 6

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mLastTimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mLastTimeMillis:J

    sub-long/2addr v0, v2

    .line 69
    iget-wide v2, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mDelay:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    sub-long v0, v2, v0

    long-to-int v0, v0

    .line 70
    if-ltz v0, :cond_0

    .line 71
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mDelay:J

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/commons/Timer;->stop()V

    .line 76
    :cond_1
    return-void
.end method

.method public setDelay(J)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mDelay:J

    .line 80
    return-void
.end method

.method public start(Z)V
    .locals 6
    .parameter

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 51
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Timer delay can\'t be less or equals zero"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/commons/Timer;->stop()V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mLastTimeMillis:J

    .line 56
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mTimerEvent:Lcom/lifestreet/android/lsmsdk/commons/Timer$TimerEvent;

    invoke-virtual {v0, p1}, Lcom/lifestreet/android/lsmsdk/commons/Timer$TimerEvent;->setForceRefresh(Z)V

    .line 57
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->sTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mTimerEvent:Lcom/lifestreet/android/lsmsdk/commons/Timer$TimerEvent;

    iget-wide v2, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mDelay:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mLastTimeMillis:J

    .line 63
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->sTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/commons/Timer;->mTimerEvent:Lcom/lifestreet/android/lsmsdk/commons/Timer$TimerEvent;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method
