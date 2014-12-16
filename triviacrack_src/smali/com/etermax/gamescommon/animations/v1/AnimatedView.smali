.class public Lcom/etermax/gamescommon/animations/v1/AnimatedView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/animations/d;


# instance fields
.field a:Lcom/etermax/gamescommon/animations/e;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/animations/v1/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/etermax/gamescommon/animations/v1/b;

.field private d:Landroid/os/CountDownTimer;

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    sget-object v0, Lcom/etermax/gamescommon/animations/e;->a:Lcom/etermax/gamescommon/animations/e;

    iput-object v0, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->a:Lcom/etermax/gamescommon/animations/e;

    .line 39
    invoke-direct {p0}, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->c()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object v0, Lcom/etermax/gamescommon/animations/e;->a:Lcom/etermax/gamescommon/animations/e;

    iput-object v0, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->a:Lcom/etermax/gamescommon/animations/e;

    .line 44
    invoke-direct {p0}, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->c()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object v0, Lcom/etermax/gamescommon/animations/e;->a:Lcom/etermax/gamescommon/animations/e;

    iput-object v0, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->a:Lcom/etermax/gamescommon/animations/e;

    .line 49
    invoke-direct {p0}, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->c()V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/animations/v1/AnimatedView;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->e()V

    return-void
.end method

.method private a(Lcom/etermax/gamescommon/animations/v1/d;Lcom/etermax/gamescommon/resources/a;)V
    .locals 10
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 84
    .line 88
    invoke-virtual {p1}, Lcom/etermax/gamescommon/animations/v1/d;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_1

    invoke-virtual {p1}, Lcom/etermax/gamescommon/animations/v1/d;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/animations/v1/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/animations/v1/c;->b()I

    move-result v0

    iget-object v1, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->c:Lcom/etermax/gamescommon/animations/v1/b;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/animations/v1/b;->c()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 90
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {p1}, Lcom/etermax/gamescommon/animations/v1/d;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/animations/v1/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/animations/v1/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/etermax/gamescommon/resources/a;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 93
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v2, v4, :cond_0

    .line 94
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 100
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 102
    iget-wide v5, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->e:J

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr v0, v7

    mul-int/lit8 v0, v0, 0x4

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->e:J

    .line 104
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 105
    invoke-virtual {p1}, Lcom/etermax/gamescommon/animations/v1/d;->a()F

    move-result v2

    iget-object v4, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->c:Lcom/etermax/gamescommon/animations/v1/b;

    invoke-virtual {v4}, Lcom/etermax/gamescommon/animations/v1/b;->d()F

    move-result v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/etermax/gamescommon/animations/v1/d;->b()F

    move-result v4

    iget-object v5, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->c:Lcom/etermax/gamescommon/animations/v1/b;

    invoke-virtual {v5}, Lcom/etermax/gamescommon/animations/v1/b;->e()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v2, v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 107
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->addView(Landroid/view/View;)V

    .line 143
    :goto_1
    return-void

    .line 96
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 112
    :cond_1
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 114
    invoke-virtual {p1}, Lcom/etermax/gamescommon/animations/v1/d;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    move v4, v3

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/animations/v1/c;

    .line 115
    invoke-virtual {v0}, Lcom/etermax/gamescommon/animations/v1/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/etermax/gamescommon/resources/a;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 117
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 121
    invoke-virtual {v0}, Lcom/etermax/gamescommon/animations/v1/c;->b()I

    move-result v0

    const/16 v7, 0x3e8

    iget-object v8, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->c:Lcom/etermax/gamescommon/animations/v1/b;

    invoke-virtual {v8}, Lcom/etermax/gamescommon/animations/v1/b;->b()I

    move-result v8

    div-int/2addr v7, v8

    mul-int/2addr v0, v7

    invoke-virtual {v5, v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 123
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 124
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 126
    iget-wide v7, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->e:J

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    int-to-long v1, v1

    add-long/2addr v1, v7

    iput-wide v1, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->e:J

    move v2, v0

    .line 127
    goto :goto_2

    .line 129
    :cond_3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 130
    invoke-virtual {p1}, Lcom/etermax/gamescommon/animations/v1/d;->a()F

    move-result v1

    iget-object v2, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->c:Lcom/etermax/gamescommon/animations/v1/b;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/animations/v1/b;->d()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/etermax/gamescommon/animations/v1/d;->b()F

    move-result v2

    iget-object v4, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->c:Lcom/etermax/gamescommon/animations/v1/b;

    invoke-virtual {v4}, Lcom/etermax/gamescommon/animations/v1/b;->e()F

    move-result v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 132
    new-instance v1, Lcom/etermax/gamescommon/animations/v1/a;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v5}, Lcom/etermax/gamescommon/animations/v1/a;-><init>(Lcom/etermax/gamescommon/animations/v1/AnimatedView;Landroid/content/Context;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 134
    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/animations/v1/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    invoke-virtual {v5, v9}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 138
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->addView(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method private c()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->b:Ljava/util/List;

    .line 54
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    .line 154
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->d:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v0, Lcom/etermax/gamescommon/animations/v1/AnimatedView$1;

    const-wide v2, 0x7fffffffffffffffL

    iget-object v1, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->c:Lcom/etermax/gamescommon/animations/v1/b;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/animations/v1/b;->c()I

    move-result v1

    const/16 v4, 0x3e8

    iget-object v5, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->c:Lcom/etermax/gamescommon/animations/v1/b;

    invoke-virtual {v5}, Lcom/etermax/gamescommon/animations/v1/b;->b()I

    move-result v5

    div-int/2addr v4, v5

    mul-int/2addr v1, v4

    int-to-long v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/animations/v1/AnimatedView$1;-><init>(Lcom/etermax/gamescommon/animations/v1/AnimatedView;JJ)V

    iput-object v0, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->d:Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/animations/v1/a;

    .line 202
    invoke-virtual {v0}, Lcom/etermax/gamescommon/animations/v1/a;->a()V

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/animations/v1/a;

    .line 208
    invoke-virtual {v0}, Lcom/etermax/gamescommon/animations/v1/a;->b()V

    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->d()V

    .line 178
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 179
    sget-object v0, Lcom/etermax/gamescommon/animations/e;->d:Lcom/etermax/gamescommon/animations/e;

    iput-object v0, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->a:Lcom/etermax/gamescommon/animations/e;

    .line 180
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/animations/v1/b;Lcom/etermax/gamescommon/resources/a;Lcom/etermax/gamescommon/resources/b;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->c:Lcom/etermax/gamescommon/animations/v1/b;

    .line 65
    invoke-virtual {p0}, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/etermax/gamescommon/resources/a;->b(Landroid/content/Context;Lcom/etermax/gamescommon/resources/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/etermax/gamescommon/animations/v1/b;->d(Ljava/lang/String;)V

    .line 68
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/animations/v1/b;->d()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/etermax/gamescommon/animations/v1/b;->e()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->e:J

    .line 74
    invoke-virtual {p1}, Lcom/etermax/gamescommon/animations/v1/b;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/animations/v1/d;

    .line 75
    invoke-direct {p0, v0, p2}, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->a(Lcom/etermax/gamescommon/animations/v1/d;Lcom/etermax/gamescommon/resources/a;)V

    goto :goto_0

    .line 77
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/animations/e;->c:Lcom/etermax/gamescommon/animations/e;

    iput-object v0, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->a:Lcom/etermax/gamescommon/animations/e;

    .line 78
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->d()V

    .line 185
    invoke-direct {p0}, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->f()V

    .line 186
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 187
    sget-object v0, Lcom/etermax/gamescommon/animations/e;->c:Lcom/etermax/gamescommon/animations/e;

    iput-object v0, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->a:Lcom/etermax/gamescommon/animations/e;

    .line 188
    return-void
.end method

.method public getDrawablesSize()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->e:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 6

    .prologue
    .line 220
    const-wide/16 v0, 0x0

    .line 222
    iget-object v2, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/animations/v1/a;

    .line 223
    invoke-virtual {v0}, Lcom/etermax/gamescommon/animations/v1/a;->c()J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    .line 226
    :cond_0
    return-wide v1
.end method

.method public getState()Lcom/etermax/gamescommon/animations/e;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->a:Lcom/etermax/gamescommon/animations/e;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->b()V

    .line 215
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 216
    return-void
.end method
