.class public Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/dashboard/c;


# instance fields
.field protected a:Landroid/widget/ProgressBar;

.field protected b:Lcom/etermax/tools/widget/RoundedRelativeLayout;

.field protected c:Lcom/etermax/gamescommon/dashboard/c;

.field private d:F

.field private e:F

.field private f:I

.field private g:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->d:F

    .line 35
    iput v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->e:F

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->f:I

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->g:Landroid/graphics/RectF;

    .line 46
    invoke-direct {p0, p2}, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->a(Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/etermax/q;->RoundedView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->d:F

    .line 52
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->e:F

    .line 53
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->f:I

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->c:Lcom/etermax/gamescommon/dashboard/c;

    invoke-interface {v0}, Lcom/etermax/gamescommon/dashboard/c;->a()V

    .line 107
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->c:Lcom/etermax/gamescommon/dashboard/c;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/dashboard/c;->a(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 59
    sget v0, Lcom/etermax/i;->defaultAvatar:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    instance-of v1, v0, Lcom/etermax/gamescommon/dashboard/c;

    if-nez v1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "common_user_default_avatar.xml debe contener una vista con id \'defaultAvatar\' que implemente la interfaz IDefaultIcon."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    check-cast v0, Lcom/etermax/gamescommon/dashboard/c;

    iput-object v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->c:Lcom/etermax/gamescommon/dashboard/c;

    .line 67
    iget-object v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->b:Lcom/etermax/tools/widget/RoundedRelativeLayout;

    iget v1, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->d:F

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/RoundedRelativeLayout;->setRadiusPercentage(F)V

    .line 68
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->c:Lcom/etermax/gamescommon/dashboard/c;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/dashboard/c;->b(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v10, 0x4000

    .line 72
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 75
    invoke-virtual {p0}, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->getWidth()I

    move-result v2

    .line 76
    invoke-virtual {p0}, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->getHeight()I

    move-result v3

    .line 78
    cmpl-float v0, v1, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->d:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 79
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 80
    iget v4, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->d:F

    mul-float/2addr v0, v4

    const/high16 v4, 0x42c8

    div-float/2addr v0, v4

    .line 83
    :goto_0
    iget v4, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->e:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_1

    .line 84
    iget-object v4, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->g:Landroid/graphics/RectF;

    iget v5, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->e:F

    div-float/2addr v5, v10

    iget v6, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->e:F

    div-float/2addr v6, v10

    int-to-float v7, v2

    iget v8, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->e:F

    div-float/2addr v8, v10

    sub-float/2addr v7, v8

    int-to-float v8, v3

    iget v9, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->e:F

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 89
    :goto_1
    iget v4, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->e:F

    cmpl-float v1, v4, v1

    if-lez v1, :cond_0

    .line 90
    new-instance v1, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 91
    iget v4, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->e:F

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    iget v4, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->f:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 95
    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 97
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->e:F

    div-float/2addr v5, v10

    iget v6, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->e:F

    div-float/2addr v6, v10

    int-to-float v2, v2

    iget v7, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->e:F

    div-float/2addr v7, v10

    sub-float/2addr v2, v7

    int-to-float v3, v3

    iget v7, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->e:F

    div-float/2addr v7, v10

    sub-float/2addr v3, v7

    invoke-direct {v4, v5, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 98
    invoke-virtual {p1, v4, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 101
    :cond_0
    return-void

    .line 86
    :cond_1
    iget-object v4, p0, Lcom/etermax/gamescommon/user/LoadingDefaultUserAvatar;->g:Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v1, v1, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
