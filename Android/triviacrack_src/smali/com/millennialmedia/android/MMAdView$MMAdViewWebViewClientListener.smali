.class Lcom/millennialmedia/android/MMAdView$MMAdViewWebViewClientListener;
.super Lcom/millennialmedia/android/MMAdImpl$BasicWebViewClientListener;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImpl$BasicWebViewClientListener;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 313
    return-void
.end method


# virtual methods
.method public onPageFinished(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 318
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMAdImpl$BasicWebViewClientListener;->onPageFinished(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewWebViewClientListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 320
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->i()V

    .line 325
    :cond_0
    return-void
.end method
