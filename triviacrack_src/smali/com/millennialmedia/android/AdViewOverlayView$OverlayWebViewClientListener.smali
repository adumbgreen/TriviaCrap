.class Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClientListener;
.super Lcom/millennialmedia/android/MMAdImpl$BasicWebViewClientListener;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImpl$BasicWebViewClientListener;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 318
    return-void
.end method


# virtual methods
.method public onPageFinished(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 323
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMAdImpl$BasicWebViewClientListener;->onPageFinished(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClientListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 325
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->a()V

    .line 328
    :cond_0
    return-void
.end method
