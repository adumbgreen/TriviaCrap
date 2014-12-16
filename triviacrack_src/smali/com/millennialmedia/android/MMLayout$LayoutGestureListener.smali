.class Lcom/millennialmedia/android/MMLayout$LayoutGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout$LayoutGestureListener;->a:Ljava/lang/ref/WeakReference;

    .line 114
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 120
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 123
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 125
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_4

    .line 126
    sget v1, Lcom/millennialmedia/android/MMSDK;->a:I

    if-nez v1, :cond_3

    .line 127
    const-string v0, "MMLayout"

    const-string v1, "Enabling debug and verbose logging."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x3

    sput v0, Lcom/millennialmedia/android/MMSDK;->a:I

    .line 139
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :cond_3
    const-string v1, "MMLayout"

    const-string v2, "Disabling debug and verbose logging."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sput v0, Lcom/millennialmedia/android/MMSDK;->a:I

    goto :goto_1

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$LayoutGestureListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    .line 135
    if-eqz v0, :cond_2

    .line 136
    iget-object v0, v0, Lcom/millennialmedia/android/MMLayout;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->a(Lcom/millennialmedia/android/MMAdImpl;)V

    goto :goto_1
.end method
