.class Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final disableHardwareAcceleration(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 371
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 372
    return-void
.end method

.method protected static final varargs executeAsyncTaskWithThreadPooling(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 1
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
    .line 381
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 382
    return-void
.end method

.method protected static hideActionBar(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 390
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 395
    :cond_0
    return-void
.end method

.method public static isInstanceOfSQLiteDatabaseLockedException(Landroid/database/sqlite/SQLiteException;)Z
    .locals 1
    .parameter

    .prologue
    .line 361
    instance-of v0, p0, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    return v0
.end method

.method protected static removeJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 400
    return-void
.end method
