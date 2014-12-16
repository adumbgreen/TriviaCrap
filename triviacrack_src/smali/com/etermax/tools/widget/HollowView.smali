.class public Lcom/etermax/tools/widget/HollowView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field a:I

.field b:F

.field c:I

.field d:I

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput v1, p0, Lcom/etermax/tools/widget/HollowView;->a:I

    .line 15
    const v0, 0x3f59999a

    iput v0, p0, Lcom/etermax/tools/widget/HollowView;->b:F

    .line 17
    iput v1, p0, Lcom/etermax/tools/widget/HollowView;->c:I

    .line 18
    const/16 v0, 0x92

    iput v0, p0, Lcom/etermax/tools/widget/HollowView;->d:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    iput v1, p0, Lcom/etermax/tools/widget/HollowView;->a:I

    .line 15
    const v0, 0x3f59999a

    iput v0, p0, Lcom/etermax/tools/widget/HollowView;->b:F

    .line 17
    iput v1, p0, Lcom/etermax/tools/widget/HollowView;->c:I

    .line 18
    const/16 v0, 0x92

    iput v0, p0, Lcom/etermax/tools/widget/HollowView;->d:I

    .line 23
    return-void
.end method

.method private a(DD)V
    .locals 19
    .parameter
    .parameter

    .prologue
    .line 47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etermax/tools/widget/HollowView;->e:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 82
    :cond_0
    return-void

    .line 51
    :cond_1
    move-wide/from16 v0, p1

    double-to-int v2, v0

    move-wide/from16 v0, p3

    double-to-int v3, v0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/etermax/tools/widget/HollowView;->e:Landroid/graphics/Bitmap;

    .line 52
    new-instance v8, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etermax/tools/widget/HollowView;->e:Landroid/graphics/Bitmap;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etermax/tools/widget/HollowView;->e:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widget/HollowView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 56
    move-object/from16 v0, p0

    iget v2, v0, Lcom/etermax/tools/widget/HollowView;->a:I

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    cmpg-double v2, p3, p1

    if-gez v2, :cond_2

    const-wide/high16 v2, 0x4000

    div-double v2, p3, v2

    .line 62
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/etermax/tools/widget/HollowView;->b:F

    float-to-double v4, v4

    mul-double v10, v2, v4

    .line 63
    sub-double v12, v2, v10

    .line 64
    move-object/from16 v0, p0

    iget v4, v0, Lcom/etermax/tools/widget/HollowView;->d:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/etermax/tools/widget/HollowView;->c:I

    sub-int v14, v4, v5

    .line 66
    const/4 v4, 0x0

    move v7, v4

    :goto_1
    int-to-double v4, v7

    cmpg-double v4, v4, p1

    if-gez v4, :cond_0

    .line 67
    const/4 v4, 0x0

    move v6, v4

    :goto_2
    int-to-double v4, v6

    cmpg-double v4, v4, p3

    if-gez v4, :cond_5

    .line 69
    const-wide/high16 v4, 0x4000

    div-double v4, p1, v4

    int-to-double v15, v7

    sub-double/2addr v4, v15

    const-wide/high16 v15, 0x4000

    move-wide v0, v15

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v15, 0x4000

    div-double v15, p3, v15

    int-to-double v0, v6

    move-wide/from16 v17, v0

    sub-double v15, v15, v17

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    add-double/2addr v4, v15

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 71
    cmpg-double v15, v4, v2

    if-gez v15, :cond_3

    .line 73
    :goto_3
    cmpg-double v15, v4, v10

    if-gez v15, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/etermax/tools/widget/HollowView;->c:I

    .line 75
    :goto_4
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    int-to-float v4, v7

    int-to-float v5, v6

    invoke-virtual {v8, v4, v5, v9}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 67
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_2

    .line 58
    :cond_2
    const-wide/high16 v2, 0x4000

    div-double v2, p1, v2

    goto :goto_0

    :cond_3
    move-wide v4, v2

    .line 71
    goto :goto_3

    .line 73
    :cond_4
    int-to-double v15, v14

    sub-double/2addr v4, v10

    div-double/2addr v4, v12

    const-wide/high16 v17, 0x4000

    move-wide/from16 v0, v17

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/etermax/tools/widget/HollowView;->c:I

    int-to-double v15, v15

    add-double/2addr v4, v15

    double-to-int v4, v4

    goto :goto_4

    .line 66
    :cond_5
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/etermax/tools/widget/HollowView;->getMeasuredWidth()I

    move-result v0

    int-to-double v0, v0

    .line 37
    invoke-virtual {p0}, Lcom/etermax/tools/widget/HollowView;->getMeasuredHeight()I

    move-result v2

    int-to-double v2, v2

    .line 39
    cmpl-double v4, v0, v5

    if-eqz v4, :cond_0

    cmpl-double v4, v2, v5

    if-eqz v4, :cond_0

    .line 40
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/etermax/tools/widget/HollowView;->a(DD)V

    .line 43
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 44
    return-void
.end method
