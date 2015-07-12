.class public Lcom/etermax/widget/slidingtab/e;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:F

.field private final c:Landroid/graphics/Paint;

.field private d:I

.field private final e:Landroid/graphics/Paint;

.field private final f:I

.field private final g:Landroid/graphics/Paint;

.field private final h:F

.field private i:I

.field private j:F

.field private k:Lcom/etermax/widget/slidingtab/c;

.field private final l:Lcom/etermax/widget/slidingtab/f;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/etermax/widget/slidingtab/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    iput p2, p0, Lcom/etermax/widget/slidingtab/e;->a:I

    .line 80
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v5, p0, Lcom/etermax/widget/slidingtab/e;->a:I

    .line 51
    invoke-virtual {p0, v6}, Lcom/etermax/widget/slidingtab/e;->setWillNotDraw(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 55
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010030

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 57
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 59
    const/16 v2, 0x26

    invoke-static {v1, v2}, Lcom/etermax/widget/slidingtab/e;->a(IB)I

    move-result v2

    iput v2, p0, Lcom/etermax/widget/slidingtab/e;->f:I

    .line 61
    new-instance v2, Lcom/etermax/widget/slidingtab/f;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/etermax/widget/slidingtab/f;-><init>(Lcom/etermax/widget/slidingtab/e$1;)V

    iput-object v2, p0, Lcom/etermax/widget/slidingtab/e;->l:Lcom/etermax/widget/slidingtab/f;

    .line 62
    iget-object v2, p0, Lcom/etermax/widget/slidingtab/e;->l:Lcom/etermax/widget/slidingtab/f;

    new-array v3, v5, [I

    const v4, -0xcc4a1b

    aput v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/etermax/widget/slidingtab/f;->a([I)V

    .line 63
    iget-object v2, p0, Lcom/etermax/widget/slidingtab/e;->l:Lcom/etermax/widget/slidingtab/f;

    new-array v3, v5, [I

    const/16 v4, 0x20

    invoke-static {v1, v4}, Lcom/etermax/widget/slidingtab/e;->a(IB)I

    move-result v1

    aput v1, v3, v6

    invoke-virtual {v2, v3}, Lcom/etermax/widget/slidingtab/f;->b([I)V

    .line 65
    const/high16 v1, 0x4000

    mul-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/etermax/widget/slidingtab/e;->b:F

    .line 66
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/etermax/widget/slidingtab/e;->c:Landroid/graphics/Paint;

    .line 67
    iget-object v1, p0, Lcom/etermax/widget/slidingtab/e;->c:Landroid/graphics/Paint;

    iget v2, p0, Lcom/etermax/widget/slidingtab/e;->f:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    const/high16 v1, 0x4100

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/etermax/widget/slidingtab/e;->d:I

    .line 70
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/etermax/widget/slidingtab/e;->e:Landroid/graphics/Paint;

    .line 72
    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/etermax/widget/slidingtab/e;->h:F

    .line 73
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/etermax/widget/slidingtab/e;->g:Landroid/graphics/Paint;

    .line 74
    iget-object v1, p0, Lcom/etermax/widget/slidingtab/e;->g:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    return-void
.end method

.method private static a(IB)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private static a(IIF)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p2

    .line 191
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 192
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 193
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 194
    float-to-int v1, v1

    float-to-int v2, v2

    float-to-int v0, v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method


# virtual methods
.method a(IF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput p1, p0, Lcom/etermax/widget/slidingtab/e;->i:I

    .line 113
    iput p2, p0, Lcom/etermax/widget/slidingtab/e;->j:F

    .line 114
    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/e;->invalidate()V

    .line 115
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter

    .prologue
    const/high16 v7, 0x3f80

    const/4 v2, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/e;->getHeight()I

    move-result v10

    .line 120
    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/e;->getChildCount()I

    move-result v11

    .line 121
    iget v0, p0, Lcom/etermax/widget/slidingtab/e;->h:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v1, v10

    mul-float/2addr v0, v1

    float-to-int v12, v0

    .line 122
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/e;->k:Lcom/etermax/widget/slidingtab/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/widget/slidingtab/e;->k:Lcom/etermax/widget/slidingtab/c;

    move-object v9, v0

    .line 125
    :goto_0
    if-lez v11, :cond_1

    .line 126
    iget v0, p0, Lcom/etermax/widget/slidingtab/e;->i:I

    invoke-virtual {p0, v0}, Lcom/etermax/widget/slidingtab/e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 130
    iget v0, p0, Lcom/etermax/widget/slidingtab/e;->i:I

    invoke-interface {v9, v0}, Lcom/etermax/widget/slidingtab/c;->a(I)I

    move-result v0

    .line 132
    iget v4, p0, Lcom/etermax/widget/slidingtab/e;->j:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_6

    iget v4, p0, Lcom/etermax/widget/slidingtab/e;->i:I

    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/e;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_6

    .line 133
    iget v4, p0, Lcom/etermax/widget/slidingtab/e;->i:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v9, v4}, Lcom/etermax/widget/slidingtab/c;->a(I)I

    move-result v4

    .line 134
    if-eq v0, v4, :cond_0

    .line 135
    iget v5, p0, Lcom/etermax/widget/slidingtab/e;->j:F

    invoke-static {v4, v0, v5}, Lcom/etermax/widget/slidingtab/e;->a(IIF)I

    move-result v0

    .line 139
    :cond_0
    iget v4, p0, Lcom/etermax/widget/slidingtab/e;->i:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/etermax/widget/slidingtab/e;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 140
    iget v5, p0, Lcom/etermax/widget/slidingtab/e;->j:F

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/etermax/widget/slidingtab/e;->j:F

    sub-float v6, v7, v6

    int-to-float v3, v3

    mul-float/2addr v3, v6

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 141
    iget v5, p0, Lcom/etermax/widget/slidingtab/e;->j:F

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/etermax/widget/slidingtab/e;->j:F

    sub-float v5, v7, v5

    int-to-float v1, v1

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    float-to-int v1, v1

    move v13, v1

    move v1, v3

    move v3, v13

    .line 144
    :goto_1
    iget-object v4, p0, Lcom/etermax/widget/slidingtab/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget v0, p0, Lcom/etermax/widget/slidingtab/e;->a:I

    if-nez v0, :cond_3

    .line 146
    int-to-float v1, v1

    int-to-float v3, v3

    iget v0, p0, Lcom/etermax/widget/slidingtab/e;->d:I

    add-int/lit8 v0, v0, 0x0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/etermax/widget/slidingtab/e;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 153
    :cond_1
    :goto_2
    iget v0, p0, Lcom/etermax/widget/slidingtab/e;->a:I

    if-nez v0, :cond_4

    .line 154
    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/e;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget v0, p0, Lcom/etermax/widget/slidingtab/e;->b:F

    add-float v5, v2, v0

    iget-object v6, p0, Lcom/etermax/widget/slidingtab/e;->c:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 160
    :goto_3
    sub-int v0, v10, v12

    div-int/lit8 v7, v0, 0x2

    .line 162
    const/4 v0, 0x0

    move v6, v0

    :goto_4
    add-int/lit8 v0, v11, -0x1

    if-ge v6, v0, :cond_5

    .line 163
    invoke-virtual {p0, v6}, Lcom/etermax/widget/slidingtab/e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/etermax/widget/slidingtab/e;->g:Landroid/graphics/Paint;

    invoke-interface {v9, v6}, Lcom/etermax/widget/slidingtab/c;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v7

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    add-int v0, v7, v12

    int-to-float v4, v0

    iget-object v5, p0, Lcom/etermax/widget/slidingtab/e;->g:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 162
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_4

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/e;->l:Lcom/etermax/widget/slidingtab/f;

    move-object v9, v0

    goto/16 :goto_0

    .line 148
    :cond_3
    int-to-float v4, v1

    iget v0, p0, Lcom/etermax/widget/slidingtab/e;->d:I

    sub-int v0, v10, v0

    int-to-float v5, v0

    int-to-float v6, v3

    int-to-float v7, v10

    iget-object v8, p0, Lcom/etermax/widget/slidingtab/e;->e:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 156
    :cond_4
    int-to-float v0, v10

    iget v1, p0, Lcom/etermax/widget/slidingtab/e;->b:F

    sub-float v3, v0, v1

    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/e;->getWidth()I

    move-result v0

    int-to-float v4, v0

    int-to-float v5, v10

    iget-object v6, p0, Lcom/etermax/widget/slidingtab/e;->c:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 175
    :cond_5
    return-void

    :cond_6
    move v13, v1

    move v1, v3

    move v3, v13

    goto/16 :goto_1
.end method

.method setBottomBorderThickness(F)V
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 101
    mul-float/2addr v0, p1

    iput v0, p0, Lcom/etermax/widget/slidingtab/e;->b:F

    .line 102
    return-void
.end method

.method setCustomTabColorizer(Lcom/etermax/widget/slidingtab/c;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/etermax/widget/slidingtab/e;->k:Lcom/etermax/widget/slidingtab/c;

    .line 84
    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/e;->invalidate()V

    .line 85
    return-void
.end method

.method varargs setDividerColors([I)V
    .locals 1
    .parameter

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/widget/slidingtab/e;->k:Lcom/etermax/widget/slidingtab/c;

    .line 107
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/e;->l:Lcom/etermax/widget/slidingtab/f;

    invoke-virtual {v0, p1}, Lcom/etermax/widget/slidingtab/f;->b([I)V

    .line 108
    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/e;->invalidate()V

    .line 109
    return-void
.end method

.method varargs setSelectedIndicatorColors([I)V
    .locals 1
    .parameter

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/widget/slidingtab/e;->k:Lcom/etermax/widget/slidingtab/c;

    .line 90
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/e;->l:Lcom/etermax/widget/slidingtab/f;

    invoke-virtual {v0, p1}, Lcom/etermax/widget/slidingtab/f;->a([I)V

    .line 91
    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/e;->invalidate()V

    .line 92
    return-void
.end method

.method setSelectedIndicatorThickness(I)V
    .locals 2
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/etermax/widget/slidingtab/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 96
    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/etermax/widget/slidingtab/e;->d:I

    .line 97
    return-void
.end method
