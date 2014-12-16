.class public Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/preguntados/ui/game/category/widget/a;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/RectF;

.field private e:F

.field private f:Landroid/os/Handler;

.field private g:I

.field private h:[I

.field private i:I

.field private j:[I

.field private k:I

.field private l:I

.field private m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView$1;-><init>(Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->m:Ljava/lang/Runnable;

    .line 47
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->b()V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;)I
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->i:I

    return v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->i:I

    return v0
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;)I
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->g:I

    return v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x1

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->f:Landroid/os/Handler;

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->h:[I

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->j:[I

    .line 55
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/g;->charges_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 56
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/g;->charges_stroke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 58
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->b:Landroid/graphics/Paint;

    .line 59
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/etermax/f;->yellow_crown:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->b:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 64
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->c:Landroid/graphics/Paint;

    .line 65
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/etermax/f;->chargesBackground:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 70
    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->e:F

    .line 71
    return-void

    .line 52
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
    .end array-data

    .line 53
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;)I
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->k:I

    return v0
.end method

.method static synthetic d(Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->m:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;)I
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->l:I

    return v0
.end method

.method static synthetic g(Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;)Lcom/etermax/preguntados/ui/game/category/widget/a;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->a:Lcom/etermax/preguntados/ui/game/category/widget/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x4334

    .line 111
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->d:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 114
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->e:F

    iget v5, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->e:F

    iget v6, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->e:F

    sub-float v6, v0, v6

    iget v7, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->e:F

    sub-float/2addr v0, v7

    invoke-direct {v1, v3, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->d:Landroid/graphics/RectF;

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->d:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 118
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->d:Landroid/graphics/RectF;

    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->i:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 119
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 120
    return-void
.end method

.method public setChargeAnimationListener(Lcom/etermax/preguntados/ui/game/category/widget/a;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->a:Lcom/etermax/preguntados/ui/game/category/widget/a;

    .line 75
    return-void
.end method

.method public setCharges(I)V
    .locals 4
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->h:[I

    iget v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->l:I

    aget v0, v0, v1

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->i:I

    .line 79
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->j:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->j:[I

    iget v2, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->l:I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->k:I

    .line 81
    iput p1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->l:I

    .line 82
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->h:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->g:I

    .line 83
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->h:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 84
    sget v0, Lcom/etermax/h;->crown_progress_color:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->setImageResource(I)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->m:Ljava/lang/Runnable;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    return-void
.end method
