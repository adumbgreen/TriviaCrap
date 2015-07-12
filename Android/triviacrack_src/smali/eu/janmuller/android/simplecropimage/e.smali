.class Leu/janmuller/android/simplecropimage/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/view/View;

.field b:I

.field c:Z

.field d:Z

.field e:Landroid/graphics/Rect;

.field f:Landroid/graphics/RectF;

.field g:Landroid/graphics/Matrix;

.field private h:Leu/janmuller/android/simplecropimage/f;

.field private i:Landroid/graphics/RectF;

.field private j:Z

.field private k:F

.field private l:Z

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;

.field private final p:Landroid/graphics/Paint;

.field private final q:Landroid/graphics/Paint;

.field private final r:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    sget-object v0, Leu/janmuller/android/simplecropimage/f;->a:Leu/janmuller/android/simplecropimage/f;

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/e;->h:Leu/janmuller/android/simplecropimage/f;

    .line 410
    iput-boolean v1, p0, Leu/janmuller/android/simplecropimage/e;->j:Z

    .line 412
    iput-boolean v1, p0, Leu/janmuller/android/simplecropimage/e;->l:Z

    .line 418
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/e;->p:Landroid/graphics/Paint;

    .line 419
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/e;->q:Landroid/graphics/Paint;

    .line 420
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/e;->r:Landroid/graphics/Paint;

    .line 51
    iput-object p1, p0, Leu/janmuller/android/simplecropimage/e;->a:Landroid/view/View;

    .line 52
    iput p2, p0, Leu/janmuller/android/simplecropimage/e;->b:I

    .line 53
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    sget v1, Lcom/etermax/h;->camera_crop_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Leu/janmuller/android/simplecropimage/e;->m:Landroid/graphics/drawable/Drawable;

    .line 59
    sget v1, Lcom/etermax/h;->camera_crop_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Leu/janmuller/android/simplecropimage/e;->n:Landroid/graphics/drawable/Drawable;

    .line 60
    sget v1, Lcom/etermax/h;->indicator_autocrop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/e;->o:Landroid/graphics/drawable/Drawable;

    .line 61
    return-void
.end method

.method private e()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 360
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 361
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 362
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 363
    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 364
    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 365
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 366
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v3, v1

    add-int/2addr v0, v2

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method


# virtual methods
.method public a(FF)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x20

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/high16 v7, 0x41a0

    .line 191
    invoke-direct {p0}, Leu/janmuller/android/simplecropimage/e;->e()Landroid/graphics/Rect;

    move-result-object v5

    .line 195
    iget-boolean v2, p0, Leu/janmuller/android/simplecropimage/e;->l:Z

    if-eqz v2, :cond_5

    .line 196
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    .line 197
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    .line 198
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 199
    iget-object v5, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 200
    sub-int v6, v4, v5

    .line 201
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    .line 202
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 203
    cmpg-float v0, v3, v8

    if-gez v0, :cond_1

    .line 204
    const/16 v0, 0x8

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    const/16 v0, 0x10

    goto :goto_0

    .line 209
    :cond_2
    cmpg-float v0, v2, v8

    if-gez v0, :cond_3

    .line 210
    const/4 v0, 0x2

    goto :goto_0

    .line 212
    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    .line 215
    :cond_4
    if-lt v4, v5, :cond_0

    move v0, v1

    .line 218
    goto :goto_0

    .line 223
    :cond_5
    iget v2, v5, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, v7

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_a

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    cmpg-float v2, p2, v2

    if-gez v2, :cond_a

    move v2, v1

    .line 224
    :goto_1
    iget v4, v5, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v4, v7

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_6

    iget v4, v5, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v4, v7

    cmpg-float v4, p1, v4

    if-gez v4, :cond_6

    move v3, v1

    .line 227
    :cond_6
    iget v4, v5, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_c

    if-eqz v2, :cond_c

    .line 228
    const/4 v4, 0x3

    .line 230
    :goto_2
    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    if-eqz v2, :cond_7

    .line 231
    or-int/lit8 v4, v4, 0x4

    .line 233
    :cond_7
    iget v2, v5, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_8

    if-eqz v3, :cond_8

    .line 234
    or-int/lit8 v4, v4, 0x8

    .line 236
    :cond_8
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_b

    if-eqz v3, :cond_b

    .line 237
    or-int/lit8 v4, v4, 0x10

    move v2, v4

    .line 241
    :goto_3
    if-ne v2, v1, :cond_9

    float-to-int v1, p1

    float-to-int v3, p2

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_9
    move v0, v2

    goto :goto_0

    :cond_a
    move v2, v3

    .line 223
    goto :goto_1

    :cond_b
    move v2, v4

    goto :goto_3

    :cond_c
    move v4, v1

    goto :goto_2
.end method

.method a(IFF)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 252
    invoke-direct {p0}, Leu/janmuller/android/simplecropimage/e;->e()Landroid/graphics/Rect;

    move-result-object v3

    .line 253
    if-ne p1, v2, :cond_0

    .line 272
    :goto_0
    return-void

    .line 255
    :cond_0
    const/16 v4, 0x20

    if-ne p1, v4, :cond_1

    .line 257
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, p3

    invoke-virtual {p0, v0, v1}, Leu/janmuller/android/simplecropimage/e;->b(FF)V

    goto :goto_0

    .line 259
    :cond_1
    and-int/lit8 v4, p1, 0x6

    if-nez v4, :cond_2

    move p2, v0

    .line 263
    :cond_2
    and-int/lit8 v4, p1, 0x18

    if-nez v4, :cond_3

    move p3, v0

    .line 268
    :cond_3
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    mul-float v4, p2, v0

    .line 269
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float v3, p3, v0

    .line 270
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    int-to-float v0, v0

    mul-float/2addr v4, v0

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {p0, v4, v0}, Leu/janmuller/android/simplecropimage/e;->c(FF)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter

    .prologue
    const/high16 v6, 0x4000

    .line 83
    iget-boolean v0, p0, Leu/janmuller/android/simplecropimage/e;->d:Z

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 88
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/e;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->r:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 92
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 93
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 94
    iget-boolean v0, p0, Leu/janmuller/android/simplecropimage/e;->l:Z

    if-eqz v0, :cond_4

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 98
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 99
    iget-object v3, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 100
    iget-object v4, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    div-float v5, v0, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    div-float/2addr v3, v6

    add-float/2addr v3, v5

    div-float/2addr v0, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v3, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 101
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->r:Landroid/graphics/Paint;

    const v3, -0x10fb2a

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 104
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/e;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->p:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 133
    :goto_2
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 135
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->h:Leu/janmuller/android/simplecropimage/f;

    sget-object v1, Leu/janmuller/android/simplecropimage/f;->c:Leu/janmuller/android/simplecropimage/f;

    if-ne v0, v1, :cond_0

    .line 136
    iget-boolean v0, p0, Leu/janmuller/android/simplecropimage/e;->l:Z

    if-eqz v0, :cond_d

    .line 137
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 138
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 140
    const-wide v2, 0x3fe921fb54442d18L

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget-object v4, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 141
    iget-object v3, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v3, v0

    .line 142
    iget-object v3, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    .line 143
    iget-object v2, p0, Leu/janmuller/android/simplecropimage/e;->o:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Leu/janmuller/android/simplecropimage/e;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Leu/janmuller/android/simplecropimage/e;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 104
    :cond_3
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->q:Landroid/graphics/Paint;

    goto :goto_1

    .line 110
    :cond_4
    new-instance v3, Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, v0, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 111
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_5

    .line 112
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/e;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->p:Landroid/graphics/Paint;

    :goto_3
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 114
    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v0, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 115
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_6

    .line 116
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/e;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->p:Landroid/graphics/Paint;

    :goto_4
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 118
    :cond_6
    new-instance v5, Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    invoke-direct {v5, v0, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 119
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_7

    .line 120
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/e;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->p:Landroid/graphics/Paint;

    :goto_5
    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 122
    :cond_7
    new-instance v5, Landroid/graphics/Rect;

    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-direct {v5, v0, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 123
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_8

    .line 124
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/e;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->p:Landroid/graphics/Paint;

    :goto_6
    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 127
    :cond_8
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 129
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->r:Landroid/graphics/Paint;

    const/16 v2, -0x7600

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 112
    :cond_9
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->q:Landroid/graphics/Paint;

    goto/16 :goto_3

    .line 116
    :cond_a
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->q:Landroid/graphics/Paint;

    goto :goto_4

    .line 120
    :cond_b
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->q:Landroid/graphics/Paint;

    goto :goto_5

    .line 124
    :cond_c
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->q:Landroid/graphics/Paint;

    goto :goto_6

    .line 146
    :cond_d
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    .line 147
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    .line 148
    iget-object v2, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x4

    .line 149
    iget-object v3, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x3

    .line 151
    iget-object v4, p0, Leu/janmuller/android/simplecropimage/e;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 152
    iget-object v5, p0, Leu/janmuller/android/simplecropimage/e;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 153
    iget-object v6, p0, Leu/janmuller/android/simplecropimage/e;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 154
    iget-object v7, p0, Leu/janmuller/android/simplecropimage/e;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    .line 156
    iget-object v8, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 157
    iget-object v9, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 159
    iget-object v10, p0, Leu/janmuller/android/simplecropimage/e;->m:Landroid/graphics/drawable/Drawable;

    sub-int v11, v0, v4

    sub-int v12, v9, v5

    add-int/2addr v0, v4

    add-int v13, v9, v5

    invoke-virtual {v10, v11, v12, v0, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 160
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 162
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->m:Landroid/graphics/drawable/Drawable;

    sub-int v10, v1, v4

    sub-int v11, v9, v5

    add-int/2addr v1, v4

    add-int v4, v9, v5

    invoke-virtual {v0, v10, v11, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 165
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->n:Landroid/graphics/drawable/Drawable;

    sub-int v1, v8, v7

    sub-int v4, v2, v6

    add-int v5, v8, v7

    add-int/2addr v2, v6

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 166
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 168
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->n:Landroid/graphics/drawable/Drawable;

    sub-int v1, v8, v7

    sub-int v2, v3, v6

    add-int v4, v8, v7

    add-int/2addr v3, v6

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x7d

    const/4 v0, 0x1

    const/16 v3, 0x32

    .line 376
    if-eqz p4, :cond_0

    move p5, v0

    .line 379
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, p0, Leu/janmuller/android/simplecropimage/e;->g:Landroid/graphics/Matrix;

    .line 381
    iput-object p3, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    .line 382
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Leu/janmuller/android/simplecropimage/e;->i:Landroid/graphics/RectF;

    .line 383
    iput-boolean p5, p0, Leu/janmuller/android/simplecropimage/e;->j:Z

    .line 384
    iput-boolean p4, p0, Leu/janmuller/android/simplecropimage/e;->l:Z

    .line 386
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    iput v1, p0, Leu/janmuller/android/simplecropimage/e;->k:F

    .line 387
    invoke-direct {p0}, Leu/janmuller/android/simplecropimage/e;->e()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    .line 389
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 390
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->q:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 391
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->r:Landroid/graphics/Paint;

    const/high16 v2, 0x4040

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 392
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->r:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 393
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->r:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 395
    sget-object v0, Leu/janmuller/android/simplecropimage/f;->a:Leu/janmuller/android/simplecropimage/f;

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/e;->h:Leu/janmuller/android/simplecropimage/f;

    .line 396
    invoke-direct {p0}, Leu/janmuller/android/simplecropimage/e;->d()V

    .line 397
    return-void
.end method

.method public a(Leu/janmuller/android/simplecropimage/f;)V
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->h:Leu/janmuller/android/simplecropimage/f;

    if-eq p1, v0, :cond_0

    .line 183
    iput-object p1, p0, Leu/janmuller/android/simplecropimage/e;->h:Leu/janmuller/android/simplecropimage/f;

    .line 184
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 186
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Leu/janmuller/android/simplecropimage/e;->c:Z

    .line 74
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Leu/janmuller/android/simplecropimage/e;->c:Z

    return v0
.end method

.method public b()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 354
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method b(FF)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, -0xa

    const/4 v5, 0x0

    .line 277
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 279
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 282
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Leu/janmuller/android/simplecropimage/e;->i:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Leu/janmuller/android/simplecropimage/e;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 284
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Leu/janmuller/android/simplecropimage/e;->i:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Leu/janmuller/android/simplecropimage/e;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 286
    invoke-direct {p0}, Leu/janmuller/android/simplecropimage/e;->e()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    .line 287
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 288
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 289
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 290
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-boolean p1, p0, Leu/janmuller/android/simplecropimage/e;->d:Z

    .line 79
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Leu/janmuller/android/simplecropimage/e;->e()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    .line 372
    return-void
.end method

.method c(FF)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 295
    iget-boolean v0, p0, Leu/janmuller/android/simplecropimage/e;->j:Z

    if-eqz v0, :cond_0

    .line 296
    cmpl-float v0, p1, v5

    if-eqz v0, :cond_7

    .line 297
    iget v0, p0, Leu/janmuller/android/simplecropimage/e;->k:F

    div-float p2, p1, v0

    .line 306
    :cond_0
    :goto_0
    new-instance v2, Landroid/graphics/RectF;

    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 307
    cmpl-float v0, p1, v5

    if-lez v0, :cond_a

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v1, v6, p1

    add-float/2addr v0, v1

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    .line 308
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    div-float p1, v0, v6

    .line 310
    iget-boolean v0, p0, Leu/janmuller/android/simplecropimage/e;->j:Z

    if-eqz v0, :cond_a

    .line 311
    iget v0, p0, Leu/janmuller/android/simplecropimage/e;->k:F

    div-float p2, p1, v0

    move v0, p2

    move v1, p1

    .line 314
    :goto_1
    cmpl-float v3, v0, v5

    if-lez v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v4, v6, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Leu/janmuller/android/simplecropimage/e;->i:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 315
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v0, v3

    div-float/2addr v0, v6

    .line 317
    iget-boolean v3, p0, Leu/janmuller/android/simplecropimage/e;->j:Z

    if-eqz v3, :cond_1

    .line 318
    iget v1, p0, Leu/janmuller/android/simplecropimage/e;->k:F

    mul-float/2addr v1, v0

    .line 322
    :cond_1
    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 325
    iget v0, p0, Leu/janmuller/android/simplecropimage/e;->b:I

    int-to-float v0, v0

    .line 326
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    .line 327
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v1, v0, v1

    neg-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {v2, v1, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 329
    :cond_2
    iget-boolean v1, p0, Leu/janmuller/android/simplecropimage/e;->j:Z

    if-eqz v1, :cond_3

    iget v1, p0, Leu/janmuller/android/simplecropimage/e;->k:F

    div-float/2addr v0, v1

    .line 330
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_4

    .line 331
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    div-float/2addr v0, v6

    invoke-virtual {v2, v5, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 335
    :cond_4
    iget v0, v2, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 336
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {v2, v0, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 340
    :cond_5
    :goto_2
    iget v0, v2, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 341
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {v2, v5, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 346
    :cond_6
    :goto_3
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 347
    invoke-direct {p0}, Leu/janmuller/android/simplecropimage/e;->e()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    .line 348
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 349
    return-void

    .line 298
    :cond_7
    cmpl-float v0, p2, v5

    if-eqz v0, :cond_0

    .line 299
    iget v0, p0, Leu/janmuller/android/simplecropimage/e;->k:F

    mul-float p1, p2, v0

    goto/16 :goto_0

    .line 337
    :cond_8
    iget v0, v2, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 338
    iget v0, v2, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v2, v0, v5}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    .line 342
    :cond_9
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 343
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/e;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v2, v5, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_3

    :cond_a
    move v0, p2

    move v1, p1

    goto/16 :goto_1
.end method
