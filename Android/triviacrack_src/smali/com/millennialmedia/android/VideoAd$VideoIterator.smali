.class Lcom/millennialmedia/android/VideoAd$VideoIterator;
.super Lcom/millennialmedia/android/AdCache$Iterator;
.source "SourceFile"


# instance fields
.field a:Z

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/VideoAd;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/millennialmedia/android/VideoAd;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/millennialmedia/android/AdCache$Iterator;-><init>()V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd$VideoIterator;->a:Z

    .line 348
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd$VideoIterator;->b:Ljava/lang/ref/WeakReference;

    .line 349
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd$VideoIterator;->c:Ljava/lang/ref/WeakReference;

    .line 350
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoAd$VideoIterator;->a:Z

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd$VideoIterator;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 375
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoAd$VideoIterator;->a(Landroid/content/Context;)V

    .line 379
    :cond_0
    invoke-super {p0}, Lcom/millennialmedia/android/AdCache$Iterator;->a()V

    .line 380
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd$VideoIterator;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    .line 385
    if-eqz v0, :cond_0

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/VideoAd;->a(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "video.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/millennialmedia/android/AdCache;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    const-string v1, "VideoAd"

    const-string v2, "VideoAd video file %s was deleted."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/millennialmedia/android/VideoAd;->a(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_0
    return-void
.end method

.method a(Lcom/millennialmedia/android/CachedAd;)Z
    .locals 2
    .parameter

    .prologue
    .line 357
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 358
    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    .line 359
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd$VideoIterator;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/VideoAd;

    .line 360
    if-eqz v1, :cond_0

    .line 361
    invoke-static {v0}, Lcom/millennialmedia/android/VideoAd;->a(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/millennialmedia/android/VideoAd;->a(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd$VideoIterator;->a:Z

    .line 367
    :cond_0
    invoke-super {p0, p1}, Lcom/millennialmedia/android/AdCache$Iterator;->a(Lcom/millennialmedia/android/CachedAd;)Z

    move-result v0

    return v0
.end method
