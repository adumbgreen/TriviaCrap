.class public Lcom/etermax/tools/widget/CustomTriangle;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Path;

.field c:Landroid/graphics/Point;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->h:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->i:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->j:I

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->k:I

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widget/CustomTriangle;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->a:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    .line 46
    sget-object v0, Lcom/etermax/q;->CustomTriangle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/tools/widget/CustomTriangle;->e:I

    .line 48
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/tools/widget/CustomTriangle;->d:I

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    return-void
.end method


# virtual methods
.method public getEquilateralTriangle()Landroid/graphics/Path;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 62
    .line 64
    iget v1, p0, Lcom/etermax/tools/widget/CustomTriangle;->d:I

    iget v2, p0, Lcom/etermax/tools/widget/CustomTriangle;->h:I

    if-ne v1, v2, :cond_0

    .line 65
    iget-object v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 66
    iget-object v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v1, p0, Lcom/etermax/tools/widget/CustomTriangle;->f:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 67
    new-instance v1, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/etermax/tools/widget/CustomTriangle;->g:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 68
    new-instance v0, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/etermax/tools/widget/CustomTriangle;->g:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/etermax/tools/widget/CustomTriangle;->f:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 86
    :goto_0
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 87
    iget-object v3, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 88
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 89
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 91
    return-object v2

    .line 69
    :cond_0
    iget v1, p0, Lcom/etermax/tools/widget/CustomTriangle;->d:I

    iget v2, p0, Lcom/etermax/tools/widget/CustomTriangle;->i:I

    if-ne v1, v2, :cond_1

    .line 70
    iget-object v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 71
    iget-object v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 72
    new-instance v1, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/etermax/tools/widget/CustomTriangle;->f:I

    add-int/2addr v2, v3

    invoke-direct {v1, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 73
    new-instance v0, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/etermax/tools/widget/CustomTriangle;->g:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/etermax/tools/widget/CustomTriangle;->f:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    .line 74
    :cond_1
    iget v1, p0, Lcom/etermax/tools/widget/CustomTriangle;->d:I

    iget v2, p0, Lcom/etermax/tools/widget/CustomTriangle;->j:I

    if-ne v1, v2, :cond_2

    .line 75
    iget-object v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 76
    iget-object v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 77
    new-instance v1, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/etermax/tools/widget/CustomTriangle;->g:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 78
    new-instance v0, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/etermax/tools/widget/CustomTriangle;->g:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/etermax/tools/widget/CustomTriangle;->f:I

    add-int/2addr v3, v4

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    goto/16 :goto_0

    .line 79
    :cond_2
    iget v1, p0, Lcom/etermax/tools/widget/CustomTriangle;->d:I

    iget v2, p0, Lcom/etermax/tools/widget/CustomTriangle;->k:I

    if-ne v1, v2, :cond_3

    .line 80
    iget-object v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v1, p0, Lcom/etermax/tools/widget/CustomTriangle;->g:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 81
    iget-object v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 82
    new-instance v1, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/etermax/tools/widget/CustomTriangle;->f:I

    add-int/2addr v2, v3

    invoke-direct {v1, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 83
    new-instance v0, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/etermax/tools/widget/CustomTriangle;->g:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/etermax/tools/widget/CustomTriangle;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/etermax/tools/widget/CustomTriangle;->f:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    goto/16 :goto_0

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 97
    iget-object v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget-object v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/etermax/tools/widget/CustomTriangle;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomTriangle;->getEquilateralTriangle()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->b:Landroid/graphics/Path;

    .line 101
    iget-object v0, p0, Lcom/etermax/tools/widget/CustomTriangle;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/etermax/tools/widget/CustomTriangle;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 102
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iput p2, p0, Lcom/etermax/tools/widget/CustomTriangle;->f:I

    .line 57
    iput p1, p0, Lcom/etermax/tools/widget/CustomTriangle;->g:I

    .line 58
    return-void
.end method
