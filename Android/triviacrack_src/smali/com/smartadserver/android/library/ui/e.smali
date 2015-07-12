.class public Lcom/smartadserver/android/library/ui/e;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/smartadserver/android/library/ui/e;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 61
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/e;->a()V

    .line 39
    if-nez p2, :cond_0

    .line 40
    sget-object p2, Lcom/smartadserver/android/library/g/a;->b:Landroid/graphics/Bitmap;

    .line 42
    :cond_0
    invoke-virtual {p0, p2}, Lcom/smartadserver/android/library/ui/e;->setLoaderBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/e;->setFocusable(Z)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/e;->setFocusableInTouchMode(Z)V

    .line 47
    new-instance v0, Lcom/smartadserver/android/library/ui/e$1;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/e$1;-><init>(Lcom/smartadserver/android/library/ui/e;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/e;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/e;)Landroid/view/animation/RotateAnimation;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/e;->b:Landroid/view/animation/RotateAnimation;

    return-object v0
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    .line 124
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/e;->a:Landroid/widget/ImageView;

    .line 125
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/e;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/e;->addView(Landroid/view/View;)V

    .line 128
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/e;->b:Landroid/view/animation/RotateAnimation;

    .line 129
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/e;->b:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 130
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/e;->b:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 131
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/e;->b:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 132
    return-void
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/e;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/e;->a:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 69
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 70
    new-instance v1, Lcom/smartadserver/android/library/ui/e$2;

    invoke-direct {v1, p0, v0}, Lcom/smartadserver/android/library/ui/e$2;-><init>(Lcom/smartadserver/android/library/ui/e;Ljava/util/Timer;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 83
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 90
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/e;->b:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->cancel()V

    .line 91
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/e;->b:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->reset()V

    .line 92
    return-void
.end method

.method public setLoaderBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    new-instance v0, Lcom/smartadserver/android/library/ui/e$3;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/ui/e$3;-><init>(Lcom/smartadserver/android/library/ui/e;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/e;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method
