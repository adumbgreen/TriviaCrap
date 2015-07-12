.class Lcom/millennialmedia/android/MMActivity$InterstitialGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 264
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMActivity$InterstitialGestureListener;->a:Ljava/lang/ref/WeakReference;

    .line 265
    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity$InterstitialGestureListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMActivity;

    .line 254
    if-eqz v0, :cond_0

    .line 255
    iget-wide v0, v0, Lcom/millennialmedia/android/MMActivity;->a:J

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdImplController;->a(J)Lcom/millennialmedia/android/MMAdImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->a(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 258
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
