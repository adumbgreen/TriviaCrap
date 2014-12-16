.class public Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/pageindicator/a;


# instance fields
.field private a:F

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private g:I

.field private h:I

.field private i:F

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I

.field private o:F

.field private p:I

.field private q:Z

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    sget v0, Lcom/etermax/d;->vpiCirclePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 45
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->o:F

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->p:I

    .line 62
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    sget v1, Lcom/etermax/f;->default_circle_indicator_page_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 69
    sget v2, Lcom/etermax/f;->default_circle_indicator_fill_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 71
    sget v3, Lcom/etermax/j;->default_circle_indicator_orientation:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 73
    sget v4, Lcom/etermax/f;->default_circle_indicator_stroke_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 75
    sget v5, Lcom/etermax/g;->default_circle_indicator_stroke_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 77
    sget v6, Lcom/etermax/g;->default_circle_indicator_radius:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 79
    sget v7, Lcom/etermax/e;->default_circle_indicator_centered:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 81
    sget v8, Lcom/etermax/e;->default_circle_indicator_snap:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 85
    sget-object v8, Lcom/etermax/q;->CirclePageIndicator:[I

    invoke-virtual {p1, p2, v8, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 88
    const/4 v9, 0x2

    invoke-virtual {v8, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->l:Z

    .line 90
    invoke-virtual {v8, v11, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->k:I

    .line 93
    iget-object v3, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v3, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    const/4 v7, 0x5

    invoke-virtual {v8, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    const/16 v3, 0x8

    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-virtual {v8, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    iget-object v1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    const/4 v3, 0x4

    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    const/4 v1, 0x6

    invoke-virtual {v8, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a:F

    .line 108
    const/4 v1, 0x7

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->m:Z

    .line 110
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :cond_1
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->n:I

    goto/16 :goto_0
.end method

.method private a(I)I
    .locals 6
    .parameter

    .prologue
    .line 511
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 512
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 514
    const/high16 v0, 0x4000

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 528
    :cond_1
    :goto_0
    return v0

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 520
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v4, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    const/high16 v3, 0x3f80

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 524
    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_1

    .line 525
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 317
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFLandroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p2, v0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p3, v1

    invoke-virtual {p1, p4, v0, v1, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 313
    return-void
.end method

.method private a(Landroid/graphics/Canvas;IFFF)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    iget v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a:F

    .line 278
    iget-object v1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 279
    iget-object v1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    move v6, v0

    .line 282
    :goto_0
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-ge v7, p2, :cond_5

    .line 283
    int-to-float v0, v7

    mul-float/2addr v0, p5

    add-float v3, p3, v0

    .line 284
    iget v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->k:I

    if-nez v0, :cond_2

    move v2, v3

    move v3, p4

    .line 292
    :goto_2
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 294
    iget-object v4, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->s:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 300
    :cond_0
    :goto_3
    iget v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a:F

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 302
    iget-object v4, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->s:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 282
    :cond_1
    :goto_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_2
    move v2, p4

    .line 289
    goto :goto_2

    .line 296
    :cond_3
    iget-object v5, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 304
    :cond_4
    iget v4, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a:F

    iget-object v5, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 308
    :cond_5
    return-void

    :cond_6
    move v6, v0

    goto :goto_0
.end method

.method private b(I)I
    .locals 4
    .parameter

    .prologue
    .line 540
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 541
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 543
    const/high16 v1, 0x4000

    if-ne v2, v1, :cond_0

    .line 555
    :goto_0
    return v0

    .line 548
    :cond_0
    const/high16 v1, 0x4000

    iget v3, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a:F

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x3f80

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 551
    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_1

    .line 552
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->k:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    const/high16 v8, 0x4000

    .line 212
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 214
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    .line 218
    if-eqz v2, :cond_0

    .line 221
    iget v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->g:I

    if-lt v0, v2, :cond_2

    .line 222
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 231
    :cond_2
    iget v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->k:I

    if-nez v0, :cond_4

    .line 232
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->getWidth()I

    move-result v4

    .line 233
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v3

    .line 234
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v1

    .line 235
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v0

    move v6, v4

    .line 243
    :goto_1
    iget v4, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a:F

    const/high16 v5, 0x4040

    mul-float/2addr v5, v4

    .line 244
    int-to-float v0, v0

    iget v4, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a:F

    add-float/2addr v4, v0

    .line 245
    int-to-float v0, v3

    iget v7, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a:F

    add-float/2addr v0, v7

    .line 246
    iget-boolean v7, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->l:Z

    if-eqz v7, :cond_8

    .line 247
    sub-int v3, v6, v3

    sub-int v1, v3, v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    int-to-float v3, v2

    mul-float/2addr v3, v5

    div-float/2addr v3, v8

    sub-float/2addr v1, v3

    add-float v3, v0, v1

    :goto_2
    move-object v0, p0

    move-object v1, p1

    .line 251
    invoke-direct/range {v0 .. v5}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a(Landroid/graphics/Canvas;IFFF)V

    .line 256
    iget-boolean v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->m:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->h:I

    :goto_3
    int-to-float v0, v0

    mul-float/2addr v0, v5

    .line 257
    iget-boolean v1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->m:Z

    if-nez v1, :cond_3

    .line 258
    iget v1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->i:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    .line 260
    :cond_3
    iget v1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->k:I

    if-nez v1, :cond_6

    .line 261
    add-float v2, v3, v0

    move v3, v4

    .line 267
    :goto_4
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 268
    iget-object v4, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->r:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 237
    :cond_4
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->getHeight()I

    move-result v4

    .line 238
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v3

    .line 239
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v1

    .line 240
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v0

    move v6, v4

    goto :goto_1

    .line 256
    :cond_5
    iget v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->g:I

    goto :goto_3

    .line 265
    :cond_6
    add-float/2addr v3, v0

    move v2, v4

    goto :goto_4

    .line 270
    :cond_7
    iget v4, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a:F

    iget-object v5, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_8
    move v3, v0

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 493
    iget v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->k:I

    if-nez v0, :cond_0

    .line 494
    invoke-direct {p0, p1}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 500
    :goto_0
    return-void

    .line 497
    :cond_0
    invoke-direct {p0, p1}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->b(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 448
    iput p1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->j:I

    .line 450
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 453
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 458
    iput p1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->g:I

    .line 459
    iput p2, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->i:F

    .line 460
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->invalidate()V

    .line 462
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 466
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->m:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->j:I

    if-nez v0, :cond_1

    .line 471
    :cond_0
    iput p1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->g:I

    .line 472
    iput p1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->h:I

    .line 473
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->invalidate()V

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 479
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 560
    check-cast p1, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;

    .line 561
    invoke-virtual {p1}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 562
    iget v0, p1, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->g:I

    .line 563
    iget v0, p1, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->h:I

    .line 564
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->requestLayout()V

    .line 565
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 569
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 570
    new-instance v1, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 571
    iget v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->g:I

    iput v0, v1, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;->a:I

    .line 572
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 320
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v1

    .line 323
    :cond_1
    iget-object v2, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v1, v0

    .line 324
    goto :goto_0

    .line 327
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 328
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 330
    :pswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->p:I

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->o:F

    goto :goto_0

    .line 335
    :pswitch_2
    iget v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->p:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 337
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 338
    iget v2, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->o:F

    sub-float v2, v0, v2

    .line 340
    iget-boolean v3, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->q:Z

    if-nez v3, :cond_4

    .line 341
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->n:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 342
    iput-boolean v1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->q:Z

    .line 346
    :cond_4
    iget-boolean v3, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->q:Z

    if-eqz v3, :cond_0

    .line 347
    iput v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->o:F

    .line 348
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    :cond_5
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 358
    :pswitch_3
    iget-boolean v3, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->q:Z

    if-nez v3, :cond_7

    .line 359
    iget-object v3, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 360
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->getWidth()I

    move-result v4

    .line 361
    int-to-float v5, v4

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    .line 362
    int-to-float v4, v4

    const/high16 v6, 0x40c0

    div-float/2addr v4, v6

    .line 364
    iget v6, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->g:I

    if-lez v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v7, v5, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    .line 365
    if-eq v2, v8, :cond_0

    .line 366
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->g:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 369
    :cond_6
    iget v6, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->g:I

    add-int/lit8 v3, v3, -0x1

    if-ge v6, v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 371
    if-eq v2, v8, :cond_0

    .line 372
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 378
    :cond_7
    iput-boolean v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->q:Z

    .line 379
    const/4 v0, -0x1

    iput v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->p:I

    .line 380
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_0

    .line 385
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 386
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->o:F

    .line 387
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->p:I

    goto/16 :goto_0

    .line 392
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 393
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 395
    iget v4, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->p:I

    if-ne v3, v4, :cond_9

    .line 396
    if-nez v2, :cond_8

    move v0, v1

    .line 397
    :cond_8
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->p:I

    .line 400
    :cond_9
    iget v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->p:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->o:F

    goto/16 :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCentered(Z)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->l:Z

    .line 131
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->invalidate()V

    .line 132
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter

    .prologue
    .line 433
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 437
    iput p1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->g:I

    .line 438
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->invalidate()V

    .line 439
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->invalidate()V

    .line 150
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 484
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter

    .prologue
    .line 157
    packed-switch p1, :pswitch_data_0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :pswitch_0
    iput p1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->k:I

    .line 161
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->requestLayout()V

    .line 168
    return-void

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->invalidate()V

    .line 141
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput p1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->a:F

    .line 194
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->invalidate()V

    .line 195
    return-void
.end method

.method public setSnap(Z)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->m:Z

    .line 203
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->invalidate()V

    .line 204
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->invalidate()V

    .line 177
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 185
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->invalidate()V

    .line 186
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 423
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 416
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 417
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_2
    iput-object p1, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    .line 421
    iget-object v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 422
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator;->invalidate()V

    goto :goto_0
.end method
