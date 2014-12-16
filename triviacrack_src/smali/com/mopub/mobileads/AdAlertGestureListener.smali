.class public Lcom/mopub/mobileads/AdAlertGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:Z

.field private d:Z

.field private e:Lcom/mopub/mobileads/AdAlertReporter;

.field private f:I

.field private g:F

.field private h:Lcom/mopub/mobileads/a;

.field private i:Landroid/view/View;

.field private j:Lcom/mopub/mobileads/AdConfiguration;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/mopub/mobileads/AdConfiguration;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x42c8

    .line 27
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 12
    iput v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->a:F

    .line 21
    sget-object v0, Lcom/mopub/mobileads/a;->UNSET:Lcom/mopub/mobileads/a;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->h:Lcom/mopub/mobileads/a;

    .line 28
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->a:F

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->i:Landroid/view/View;

    .line 32
    iput-object p2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->j:Lcom/mopub/mobileads/AdConfiguration;

    .line 33
    return-void
.end method

.method private a(F)V
    .locals 1
    .parameter

    .prologue
    .line 88
    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->g:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 89
    sget-object v0, Lcom/mopub/mobileads/a;->GOING_RIGHT:Lcom/mopub/mobileads/a;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->h:Lcom/mopub/mobileads/a;

    .line 91
    :cond_0
    return-void
.end method

.method private a(FF)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 84
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4248

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(F)V
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAlertGestureListener;->d(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAlertGestureListener;->g(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/mopub/mobileads/a;->GOING_LEFT:Lcom/mopub/mobileads/a;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->h:Lcom/mopub/mobileads/a;

    .line 96
    iput p1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->g:F

    .line 98
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->f:I

    .line 109
    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->f:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 110
    sget-object v0, Lcom/mopub/mobileads/a;->FINISHED:Lcom/mopub/mobileads/a;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->h:Lcom/mopub/mobileads/a;

    .line 112
    :cond_0
    return-void
.end method

.method private c(F)V
    .locals 1
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAlertGestureListener;->e(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAlertGestureListener;->f(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/mopub/mobileads/a;->GOING_RIGHT:Lcom/mopub/mobileads/a;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->h:Lcom/mopub/mobileads/a;

    .line 103
    iput p1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->g:F

    .line 105
    :cond_0
    return-void
.end method

.method private d(F)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 115
    iget-boolean v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->d:Z

    if-eqz v2, :cond_0

    .line 122
    :goto_0
    return v0

    .line 117
    :cond_0
    iget v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->g:F

    iget v3, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->a:F

    add-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 118
    iput-boolean v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->c:Z

    .line 119
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->d:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 122
    goto :goto_0
.end method

.method private e(F)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 127
    iget-boolean v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->c:Z

    if-eqz v2, :cond_0

    .line 135
    :goto_0
    return v0

    .line 129
    :cond_0
    iget v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->g:F

    iget v3, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->a:F

    sub-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    .line 130
    iput-boolean v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->d:Z

    .line 131
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->c:Z

    .line 132
    invoke-direct {p0}, Lcom/mopub/mobileads/AdAlertGestureListener;->c()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 135
    goto :goto_0
.end method

.method private f(F)Z
    .locals 1
    .parameter

    .prologue
    .line 140
    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->b:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(F)Z
    .locals 1
    .parameter

    .prologue
    .line 144
    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->b:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->h:Lcom/mopub/mobileads/a;

    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->h:Lcom/mopub/mobileads/a;

    sget-object v1, Lcom/mopub/mobileads/a;->FINISHED:Lcom/mopub/mobileads/a;

    if-ne v0, v1, :cond_0

    .line 72
    new-instance v0, Lcom/mopub/mobileads/AdAlertReporter;

    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->i:Landroid/view/View;

    iget-object v3, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->j:Lcom/mopub/mobileads/AdConfiguration;

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/AdAlertReporter;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/mopub/mobileads/AdConfiguration;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->e:Lcom/mopub/mobileads/AdAlertReporter;

    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->e:Lcom/mopub/mobileads/AdAlertReporter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAlertReporter;->send()V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAlertGestureListener;->b()V

    .line 76
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->f:I

    .line 80
    sget-object v0, Lcom/mopub/mobileads/a;->UNSET:Lcom/mopub/mobileads/a;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->h:Lcom/mopub/mobileads/a;

    .line 81
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->h:Lcom/mopub/mobileads/a;

    sget-object v1, Lcom/mopub/mobileads/a;->FINISHED:Lcom/mopub/mobileads/a;

    if-ne v0, v1, :cond_0

    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 67
    :goto_0
    return v0

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mopub/mobileads/AdAlertGestureListener;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Lcom/mopub/mobileads/a;->FAILED:Lcom/mopub/mobileads/a;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->h:Lcom/mopub/mobileads/a;

    .line 45
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$1;->a:[I

    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->h:Lcom/mopub/mobileads/a;

    invoke-virtual {v1}, Lcom/mopub/mobileads/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_1
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->b:F

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0

    .line 50
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->g:F

    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdAlertGestureListener;->a(F)V

    goto :goto_1

    .line 54
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdAlertGestureListener;->b(F)V

    goto :goto_1

    .line 57
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdAlertGestureListener;->c(F)V

    goto :goto_1

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
