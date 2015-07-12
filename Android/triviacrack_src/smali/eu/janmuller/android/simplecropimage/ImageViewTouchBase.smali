.class abstract Leu/janmuller/android/simplecropimage/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:[F

.field private c:Leu/janmuller/android/simplecropimage/g;

.field private d:Ljava/lang/Runnable;

.field protected f:Landroid/graphics/Matrix;

.field protected g:Landroid/graphics/Matrix;

.field protected final h:Leu/janmuller/android/simplecropimage/j;

.field i:I

.field j:I

.field k:F

.field l:I

.field m:I

.field n:I

.field o:I

.field protected p:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 243
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->b:[F

    .line 58
    new-instance v0, Leu/janmuller/android/simplecropimage/j;

    invoke-direct {v0, v2}, Leu/janmuller/android/simplecropimage/j;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->h:Leu/janmuller/android/simplecropimage/j;

    .line 60
    iput v1, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->i:I

    iput v1, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->j:I

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->p:Landroid/os/Handler;

    .line 149
    iput-object v2, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    .line 244
    invoke-direct {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->d()V

    .line 245
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    .line 132
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 135
    :cond_0
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->h:Leu/janmuller/android/simplecropimage/j;

    invoke-virtual {v0}, Leu/janmuller/android/simplecropimage/j;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->h:Leu/janmuller/android/simplecropimage/j;

    invoke-virtual {v1, p1}, Leu/janmuller/android/simplecropimage/j;->a(Landroid/graphics/Bitmap;)V

    .line 137
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->h:Leu/janmuller/android/simplecropimage/j;

    invoke-virtual {v1, p2}, Leu/janmuller/android/simplecropimage/j;->a(I)V

    .line 139
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->c:Leu/janmuller/android/simplecropimage/g;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->c:Leu/janmuller/android/simplecropimage/g;

    invoke-interface {v1, v0}, Leu/janmuller/android/simplecropimage/g;->a(Landroid/graphics/Bitmap;)V

    .line 142
    :cond_1
    return-void
.end method

.method private a(Leu/janmuller/android/simplecropimage/j;Landroid/graphics/Matrix;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    .line 272
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 273
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 275
    invoke-virtual {p1}, Leu/janmuller/android/simplecropimage/j;->f()I

    move-result v2

    int-to-float v2, v2

    .line 276
    invoke-virtual {p1}, Leu/janmuller/android/simplecropimage/j;->e()I

    move-result v3

    int-to-float v3, v3

    .line 277
    invoke-virtual {p1}, Leu/janmuller/android/simplecropimage/j;->a()I

    .line 278
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 282
    div-float v4, v0, v2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 283
    div-float v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 284
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 286
    invoke-virtual {p1}, Leu/janmuller/android/simplecropimage/j;->c()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 287
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 289
    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    mul-float v2, v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 290
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 249
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 250
    return-void
.end method


# virtual methods
.method protected a()F
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected a(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected a(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->b:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 255
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->b:[F

    aget v0, v0, p2

    return v0
.end method

.method protected a(F)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 356
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 357
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 359
    invoke-virtual {p0, p1, v0, v1}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a(FFF)V

    .line 360
    return-void
.end method

.method protected a(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 413
    return-void
.end method

.method protected a(FFF)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 321
    iget v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->k:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 322
    iget p1, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->k:F

    .line 325
    :cond_0
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a()F

    move-result v0

    .line 326
    div-float v0, p1, v0

    .line 328
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 329
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->b()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 330
    invoke-virtual {p0, v2, v2}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a(ZZ)V

    .line 331
    return-void
.end method

.method protected a(FFFF)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 336
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a()F

    move-result v5

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 339
    iget-object v9, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->p:Landroid/os/Handler;

    new-instance v0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase$2;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase$2;-><init>(Leu/janmuller/android/simplecropimage/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    new-instance v0, Leu/janmuller/android/simplecropimage/j;

    invoke-direct {v0, p1}, Leu/janmuller/android/simplecropimage/j;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a(Leu/janmuller/android/simplecropimage/j;Z)V

    .line 156
    return-void
.end method

.method public a(Leu/janmuller/android/simplecropimage/j;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 162
    if-gtz v0, :cond_0

    .line 163
    new-instance v0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase$1;

    invoke-direct {v0, p0, p1, p2}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase$1;-><init>(Leu/janmuller/android/simplecropimage/ImageViewTouchBase;Leu/janmuller/android/simplecropimage/j;Z)V

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    .line 185
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p1}, Leu/janmuller/android/simplecropimage/j;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a(Leu/janmuller/android/simplecropimage/j;Landroid/graphics/Matrix;)V

    .line 174
    invoke-virtual {p1}, Leu/janmuller/android/simplecropimage/j;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Leu/janmuller/android/simplecropimage/j;->a()I

    move-result v1

    invoke-direct {p0, v0, v1}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    .line 180
    :goto_1
    if-eqz p2, :cond_1

    .line 181
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 183
    :cond_1
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->b()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 184
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->c()F

    move-result v0

    iput v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->k:F

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method protected a(ZZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    const/4 v0, 0x0

    .line 194
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->h:Leu/janmuller/android/simplecropimage/j;

    invoke-virtual {v1}, Leu/janmuller/android/simplecropimage/j;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->b()Landroid/graphics/Matrix;

    move-result-object v1

    .line 200
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->h:Leu/janmuller/android/simplecropimage/j;

    invoke-virtual {v3}, Leu/janmuller/android/simplecropimage/j;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->h:Leu/janmuller/android/simplecropimage/j;

    invoke-virtual {v4}, Leu/janmuller/android/simplecropimage/j;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 202
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 204
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 205
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 209
    if-eqz p2, :cond_6

    .line 210
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->getHeight()I

    move-result v4

    .line 211
    int-to-float v5, v4

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    .line 212
    int-to-float v4, v4

    sub-float v1, v4, v1

    div-float/2addr v1, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    .line 220
    :goto_1
    if-eqz p1, :cond_1

    .line 221
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->getWidth()I

    move-result v4

    .line 222
    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    .line 223
    int-to-float v0, v4

    sub-float/2addr v0, v3

    div-float/2addr v0, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    .line 231
    :cond_1
    :goto_2
    invoke-virtual {p0, v0, v1}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a(FF)V

    .line 232
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->b()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 213
    :cond_2
    iget v1, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    .line 214
    iget v1, v2, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    goto :goto_1

    .line 215
    :cond_3
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    .line 216
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    goto :goto_1

    .line 224
    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_5

    .line 225
    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_2

    .line 226
    :cond_5
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 227
    int-to-float v0, v4

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method protected b()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 297
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 298
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected b(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 417
    invoke-virtual {p0, p1, p2}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a(FF)V

    .line 418
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->b()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 419
    return-void
.end method

.method protected c()F
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->h:Leu/janmuller/android/simplecropimage/j;

    invoke-virtual {v0}, Leu/janmuller/android/simplecropimage/j;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 310
    const/high16 v0, 0x3f80

    .line 316
    :goto_0
    return v0

    .line 313
    :cond_0
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->h:Leu/janmuller/android/simplecropimage/j;

    invoke-virtual {v0}, Leu/janmuller/android/simplecropimage/j;->f()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 314
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->h:Leu/janmuller/android/simplecropimage/j;

    invoke-virtual {v1}, Leu/janmuller/android/simplecropimage/j;->e()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->j:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 315
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    .line 316
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 110
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 113
    invoke-virtual {p0, v1}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a(F)V

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 90
    iput p2, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->l:I

    .line 91
    iput p4, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->m:I

    .line 92
    iput p3, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->n:I

    .line 93
    iput p5, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->o:I

    .line 94
    sub-int v0, p4, p2

    iput v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->i:I

    .line 95
    sub-int v0, p5, p3

    iput v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->j:I

    .line 96
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    .line 97
    if-eqz v0, :cond_0

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    .line 99
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 101
    :cond_0
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->h:Leu/janmuller/android/simplecropimage/j;

    invoke-virtual {v0}, Leu/janmuller/android/simplecropimage/j;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->h:Leu/janmuller/android/simplecropimage/j;

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a(Leu/janmuller/android/simplecropimage/j;Landroid/graphics/Matrix;)V

    .line 103
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->b()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 105
    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    .line 125
    return-void
.end method
