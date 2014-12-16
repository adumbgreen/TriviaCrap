.class Lcom/millennialmedia/android/MMWebView$BannerGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMWebView;)V
    .locals 1
    .parameter

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 153
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView$BannerGestureListener;->a:Ljava/lang/ref/WeakReference;

    .line 154
    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$BannerGestureListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 141
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->g()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    iget-object v0, v0, Lcom/millennialmedia/android/MMAdView;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->a(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 147
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
