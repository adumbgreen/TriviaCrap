.class Lcom/amazon/device/ads/ThreadUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mainThreadExecutor:Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;

.field private static runnableExecutor:Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/amazon/device/ads/ThreadUtils$ThreadPoolRunnableExecutor;

    invoke-direct {v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadPoolRunnableExecutor;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/ThreadUtils;->runnableExecutor:Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;

    .line 25
    new-instance v0, Lcom/amazon/device/ads/ThreadUtils$MainThreadRunnableExecutor;

    invoke-direct {v0}, Lcom/amazon/device/ads/ThreadUtils$MainThreadRunnableExecutor;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/ThreadUtils;->mainThreadExecutor:Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    return-void
.end method

.method public static final varargs executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<TT;**>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 44
    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 58
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    new-instance v1, Lcom/amazon/device/ads/ThreadUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/ads/ThreadUtils$1;-><init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static executeOnMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {p0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static executeRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils;->runnableExecutor:Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;

    invoke-interface {v0, p0}, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;->execute(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method public static executeRunnableWithThreadCheck(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0}, Lcom/amazon/device/ads/ThreadUtils;->executeRunnable(Ljava/lang/Runnable;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static isOnMainThread()Z
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;->getInstance()Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;->isOnMainThread()Z

    move-result v0

    return v0
.end method

.method public static scheduleOnMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    sget-object v0, Lcom/amazon/device/ads/ThreadUtils;->mainThreadExecutor:Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;

    invoke-interface {v0, p0}, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;->execute(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method
