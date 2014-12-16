.class Lcom/millennialmedia/android/AdViewOverlayView$OverlayRedirectionListenerImpl;
.super Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 375
    return-void
.end method


# virtual methods
.method public isExpandingToUrl()Z
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayRedirectionListenerImpl;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 381
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;

    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->b()Z

    move-result v0

    .line 384
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
