.class Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroid/os/Handler;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admarvel/android/ads/AdMarvelInternalWebView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admarvel/android/ads/AdMarvelWebView;",
            ">;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelWebView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;->d:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;->a:Landroid/os/Handler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    invoke-virtual {v1, v7}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getLocationInWindow([I)V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getHeight()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    :goto_1
    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getHeight()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x2

    :goto_2
    iget v5, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I

    const/high16 v8, -0x8000

    if-eq v5, v8, :cond_5

    iget v5, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I

    if-lez v5, :cond_5

    iget v5, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->f:I

    :goto_3
    aget v8, v7, v6

    sub-int v5, v8, v5

    add-int/2addr v2, v5

    if-ltz v2, :cond_7

    aget v2, v7, v6

    add-int/2addr v2, v4

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I

    move-result v0

    if-ge v2, v0, :cond_7

    move v0, v6

    :goto_4
    if-eqz v0, :cond_6

    iget-boolean v2, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    if-nez v2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->injectJavaScript(Ljava/lang/String;)V

    iput-boolean v6, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    :cond_2
    :goto_5
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;->a:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$l;->d:J

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2

    :cond_5
    move v5, v3

    goto :goto_3

    :cond_6
    if-nez v0, :cond_2

    iget-boolean v0, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->injectJavaScript(Ljava/lang/String;)V

    iput-boolean v3, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z

    goto :goto_5

    :cond_7
    move v0, v3

    goto :goto_4

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method
