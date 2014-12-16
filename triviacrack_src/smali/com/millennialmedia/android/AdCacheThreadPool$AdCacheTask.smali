.class Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/AdCacheThreadPool;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/millennialmedia/android/CachedAd;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdCacheThreadPool;Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->a:Lcom/millennialmedia/android/AdCacheThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->b:Ljava/lang/ref/WeakReference;

    .line 64
    iput-object p3, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->c:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->d:Lcom/millennialmedia/android/CachedAd;

    .line 66
    if-eqz p5, :cond_0

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->e:Ljava/lang/ref/WeakReference;

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;)I
    .locals 2
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->d:Lcom/millennialmedia/android/CachedAd;

    iget v0, v0, Lcom/millennialmedia/android/CachedAd;->e:I

    iget-object v1, p1, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->d:Lcom/millennialmedia/android/CachedAd;

    iget v1, v1, Lcom/millennialmedia/android/CachedAd;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    check-cast p1, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->compareTo(Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 116
    if-ne p0, p1, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    .line 118
    :cond_0
    instance-of v0, p1, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;

    if-nez v0, :cond_1

    .line 119
    const/4 v0, 0x0

    goto :goto_0

    .line 120
    :cond_1
    check-cast p1, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;

    .line 121
    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->d:Lcom/millennialmedia/android/CachedAd;

    iget-object v1, p1, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->d:Lcom/millennialmedia/android/CachedAd;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/CachedAd;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 75
    .line 76
    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    .line 77
    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;

    move-object v2, v0

    .line 79
    :goto_0
    if-eqz v2, :cond_0

    .line 80
    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->d:Lcom/millennialmedia/android/CachedAd;

    invoke-interface {v2, v0}, Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;->downloadStart(Lcom/millennialmedia/android/CachedAd;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    iget-object v3, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/millennialmedia/android/HandShake;->d(Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->d:Lcom/millennialmedia/android/CachedAd;

    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v3, v0}, Lcom/millennialmedia/android/CachedAd;->b(Landroid/content/Context;)Z

    move-result v3

    .line 84
    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    iget-object v4, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/millennialmedia/android/HandShake;->e(Ljava/lang/String;)V

    .line 89
    if-nez v3, :cond_4

    .line 90
    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v4, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->c:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/millennialmedia/android/AdCache;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->d:Lcom/millennialmedia/android/CachedAd;

    invoke-virtual {v4}, Lcom/millennialmedia/android/CachedAd;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v4, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->d:Lcom/millennialmedia/android/CachedAd;

    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/millennialmedia/android/CachedAd;->c(Landroid/content/Context;)V

    .line 96
    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v4, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->c:Ljava/lang/String;

    invoke-static {v0, v4, v1}, Lcom/millennialmedia/android/AdCache;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_1
    if-eqz v2, :cond_1

    .line 110
    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->d:Lcom/millennialmedia/android/CachedAd;

    invoke-interface {v2, v0, v3}, Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;->downloadCompleted(Lcom/millennialmedia/android/CachedAd;Z)V

    .line 111
    :cond_1
    return-void

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v4, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->d:Lcom/millennialmedia/android/CachedAd;

    iget-boolean v5, v5, Lcom/millennialmedia/android/CachedAd;->f:Z

    if-nez v5, :cond_3

    iget-object v1, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->d:Lcom/millennialmedia/android/CachedAd;

    invoke-virtual {v1}, Lcom/millennialmedia/android/CachedAd;->e()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {v0, v4, v1}, Lcom/millennialmedia/android/AdCache;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v4, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->c:Ljava/lang/String;

    invoke-static {v0, v4, v1}, Lcom/millennialmedia/android/AdCache;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v2, v1

    goto/16 :goto_0
.end method
