.class public Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/16 v0, 0xc8

    iput v0, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->a:I

    .line 33
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->b()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/16 v0, 0xc8

    iput v0, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->a:I

    .line 38
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->b()V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->b:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private b()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v2, 0x32

    .line 44
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/etermax/a/b;->b(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->setMinimumWidth(I)V

    .line 47
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/etermax/a/b;->b(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->setMinimumHeight(I)V

    .line 49
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 50
    sget v1, Lcom/etermax/h;->background_circle_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :goto_0
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v1, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->b:Landroid/graphics/drawable/AnimationDrawable;

    .line 56
    iget-object v1, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->b:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 57
    iget-object v1, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->b:Landroid/graphics/drawable/AnimationDrawable;

    sget v2, Lcom/etermax/h;->loading_image_01:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 58
    iget-object v1, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->b:Landroid/graphics/drawable/AnimationDrawable;

    sget v2, Lcom/etermax/h;->loading_image_02:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 59
    iget-object v1, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->b:Landroid/graphics/drawable/AnimationDrawable;

    sget v2, Lcom/etermax/h;->loading_image_03:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 60
    iget-object v1, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->b:Landroid/graphics/drawable/AnimationDrawable;

    sget v2, Lcom/etermax/h;->loading_image_04:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 61
    iget-object v1, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->b:Landroid/graphics/drawable/AnimationDrawable;

    sget v2, Lcom/etermax/h;->loading_image_05:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 62
    iget-object v1, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->b:Landroid/graphics/drawable/AnimationDrawable;

    sget v2, Lcom/etermax/h;->loading_image_06:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->a:I

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 64
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 65
    iget-object v1, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/etermax/a/b;->b(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x28

    invoke-static {v3, v4}, Lcom/etermax/a/b;->b(Landroid/content/Context;I)F

    move-result v3

    float-to-int v3, v3

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading$1;-><init>(Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void

    .line 52
    :cond_0
    sget v1, Lcom/etermax/h;->background_circle_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading$2;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading$2;-><init>(Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 98
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 99
    return-void
.end method

.method public setDelayBetweenFrames(I)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput p1, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->a:I

    .line 93
    return-void
.end method
