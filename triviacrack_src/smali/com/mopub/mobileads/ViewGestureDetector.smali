.class public Lcom/mopub/mobileads/ViewGestureDetector;
.super Landroid/view/GestureDetector;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private b:Lcom/mopub/mobileads/AdAlertGestureListener;

.field private c:Lcom/mopub/mobileads/bk;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/mopub/mobileads/AdAlertGestureListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 29
    iput-object p3, p0, Lcom/mopub/mobileads/ViewGestureDetector;->b:Lcom/mopub/mobileads/AdAlertGestureListener;

    .line 30
    iput-object p2, p0, Lcom/mopub/mobileads/ViewGestureDetector;->a:Landroid/view/View;

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/ViewGestureDetector;->setIsLongpressEnabled(Z)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/mopub/mobileads/AdConfiguration;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    new-instance v0, Lcom/mopub/mobileads/AdAlertGestureListener;

    invoke-direct {v0, p2, p3}, Lcom/mopub/mobileads/AdAlertGestureListener;-><init>(Landroid/view/View;Lcom/mopub/mobileads/AdConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/mobileads/ViewGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/mopub/mobileads/AdAlertGestureListener;)V

    .line 24
    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 72
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 79
    cmpl-float v3, v1, v4

    if-ltz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    cmpl-float v1, v2, v4

    if-ltz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mopub/mobileads/ViewGestureDetector;->b:Lcom/mopub/mobileads/AdAlertGestureListener;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAlertGestureListener;->b()V

    .line 69
    return-void
.end method

.method a(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, Lcom/mopub/mobileads/ViewGestureDetector;->c:Lcom/mopub/mobileads/bk;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/ViewGestureDetector;->c:Lcom/mopub/mobileads/bk;

    invoke-interface {v0}, Lcom/mopub/mobileads/bk;->onUserClick()V

    .line 43
    :goto_1
    iget-object v0, p0, Lcom/mopub/mobileads/ViewGestureDetector;->b:Lcom/mopub/mobileads/AdAlertGestureListener;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAlertGestureListener;->a()V

    goto :goto_0

    .line 41
    :cond_0
    const-string v0, "View\'s onUserClick() is not registered."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 47
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/ViewGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 51
    :pswitch_2
    iget-object v0, p0, Lcom/mopub/mobileads/ViewGestureDetector;->a:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/ViewGestureDetector;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/ViewGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/ViewGestureDetector;->a()V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method a(Lcom/mopub/mobileads/bk;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mopub/mobileads/ViewGestureDetector;->c:Lcom/mopub/mobileads/bk;

    .line 65
    return-void
.end method
