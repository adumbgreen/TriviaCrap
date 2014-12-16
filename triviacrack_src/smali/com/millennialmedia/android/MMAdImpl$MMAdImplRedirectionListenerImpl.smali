.class Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;
.super Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;
.source "SourceFile"


# instance fields
.field f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMAdImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 2
    .parameter

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;-><init>()V

    .line 363
    if-eqz p1, :cond_0

    .line 364
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->f:Ljava/lang/ref/WeakReference;

    .line 365
    iget-wide v0, p1, Lcom/millennialmedia/android/MMAdImpl;->h:J

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->e:J

    .line 367
    :cond_0
    return-void
.end method


# virtual methods
.method public isActivityStartable(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 385
    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 388
    check-cast v0, Landroid/app/Activity;

    .line 389
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 394
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startingActivity(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 400
    invoke-super {p0, p1}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->startingActivity(Landroid/net/Uri;)V

    .line 401
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 404
    if-eqz v0, :cond_1

    .line 405
    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->d(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 408
    :cond_1
    return-void
.end method

.method public updateLastVideoViewedTime()V
    .locals 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 374
    if-eqz v0, :cond_0

    .line 375
    iget-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/millennialmedia/android/HandShake;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 379
    :cond_0
    return-void
.end method
