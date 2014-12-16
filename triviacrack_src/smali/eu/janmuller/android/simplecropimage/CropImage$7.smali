.class Leu/janmuller/android/simplecropimage/CropImage$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/janmuller/android/simplecropimage/CropImage;
.end annotation


# instance fields
.field a:F

.field b:Landroid/graphics/Matrix;

.field c:[Landroid/media/FaceDetector$Face;

.field d:I

.field final synthetic e:Leu/janmuller/android/simplecropimage/CropImage;


# direct methods
.method constructor <init>(Leu/janmuller/android/simplecropimage/CropImage;)V
    .locals 1
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    const/high16 v0, 0x3f80

    iput v0, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->a:F

    .line 547
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->c:[Landroid/media/FaceDetector$Face;

    return-void
.end method

.method private a()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 596
    new-instance v0, Leu/janmuller/android/simplecropimage/e;

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v1}, Leu/janmuller/android/simplecropimage/CropImage;->c(Leu/janmuller/android/simplecropimage/CropImage;)Leu/janmuller/android/simplecropimage/CropImageView;

    move-result-object v1

    iget-object v2, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v2}, Leu/janmuller/android/simplecropimage/CropImage;->f(Leu/janmuller/android/simplecropimage/CropImage;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Leu/janmuller/android/simplecropimage/e;-><init>(Landroid/view/View;I)V

    .line 598
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v1}, Leu/janmuller/android/simplecropimage/CropImage;->b(Leu/janmuller/android/simplecropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 599
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v1}, Leu/janmuller/android/simplecropimage/CropImage;->b(Leu/janmuller/android/simplecropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 601
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 604
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v3, v1, 0x5

    .line 607
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v1}, Leu/janmuller/android/simplecropimage/CropImage;->h(Leu/janmuller/android/simplecropimage/CropImage;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v1}, Leu/janmuller/android/simplecropimage/CropImage;->i(Leu/janmuller/android/simplecropimage/CropImage;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 609
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v1}, Leu/janmuller/android/simplecropimage/CropImage;->h(Leu/janmuller/android/simplecropimage/CropImage;)I

    move-result v1

    iget-object v4, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v4}, Leu/janmuller/android/simplecropimage/CropImage;->i(Leu/janmuller/android/simplecropimage/CropImage;)I

    move-result v4

    if-le v1, v4, :cond_1

    .line 611
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v1}, Leu/janmuller/android/simplecropimage/CropImage;->i(Leu/janmuller/android/simplecropimage/CropImage;)I

    move-result v1

    mul-int/2addr v1, v3

    iget-object v4, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v4}, Leu/janmuller/android/simplecropimage/CropImage;->h(Leu/janmuller/android/simplecropimage/CropImage;)I

    move-result v4

    div-int/2addr v1, v4

    move v4, v3

    .line 618
    :goto_0
    sub-int v3, v6, v4

    div-int/lit8 v6, v3, 0x2

    .line 619
    sub-int v3, v7, v1

    div-int/lit8 v7, v3, 0x2

    .line 621
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v8, v6

    int-to-float v9, v7

    add-int/2addr v4, v6

    int-to-float v4, v4

    add-int/2addr v1, v7

    int-to-float v1, v1

    invoke-direct {v3, v8, v9, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 622
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->b:Landroid/graphics/Matrix;

    iget-object v4, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v4}, Leu/janmuller/android/simplecropimage/CropImage;->g(Leu/janmuller/android/simplecropimage/CropImage;)Z

    move-result v4

    iget-object v6, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v6}, Leu/janmuller/android/simplecropimage/CropImage;->h(Leu/janmuller/android/simplecropimage/CropImage;)I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v6}, Leu/janmuller/android/simplecropimage/CropImage;->i(Leu/janmuller/android/simplecropimage/CropImage;)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-virtual/range {v0 .. v5}, Leu/janmuller/android/simplecropimage/e;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 624
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v1}, Leu/janmuller/android/simplecropimage/CropImage;->c(Leu/janmuller/android/simplecropimage/CropImage;)Leu/janmuller/android/simplecropimage/CropImageView;

    move-result-object v1

    iget-object v1, v1, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 626
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v1}, Leu/janmuller/android/simplecropimage/CropImage;->c(Leu/janmuller/android/simplecropimage/CropImage;)Leu/janmuller/android/simplecropimage/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Leu/janmuller/android/simplecropimage/CropImageView;->a(Leu/janmuller/android/simplecropimage/e;)V

    .line 627
    return-void

    .line 614
    :cond_1
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v1}, Leu/janmuller/android/simplecropimage/CropImage;->h(Leu/janmuller/android/simplecropimage/CropImage;)I

    move-result v1

    mul-int/2addr v1, v3

    iget-object v4, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v4}, Leu/janmuller/android/simplecropimage/CropImage;->i(Leu/janmuller/android/simplecropimage/CropImage;)I

    move-result v4

    div-int/2addr v1, v4

    move v4, v1

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    move v4, v3

    goto :goto_0
.end method

.method private a(Landroid/media/FaceDetector$Face;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 553
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 555
    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v1

    iget v2, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 556
    invoke-virtual {p1, v0}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 557
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->a:F

    mul-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 558
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->a:F

    mul-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 560
    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v4, v2

    .line 561
    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v6, v0

    .line 563
    new-instance v0, Leu/janmuller/android/simplecropimage/e;

    iget-object v2, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v2}, Leu/janmuller/android/simplecropimage/CropImage;->c(Leu/janmuller/android/simplecropimage/CropImage;)Leu/janmuller/android/simplecropimage/CropImageView;

    move-result-object v2

    iget-object v3, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v3}, Leu/janmuller/android/simplecropimage/CropImage;->f(Leu/janmuller/android/simplecropimage/CropImage;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Leu/janmuller/android/simplecropimage/e;-><init>(Landroid/view/View;I)V

    .line 565
    iget-object v2, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v2}, Leu/janmuller/android/simplecropimage/CropImage;->b(Leu/janmuller/android/simplecropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 566
    iget-object v2, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v2}, Leu/janmuller/android/simplecropimage/CropImage;->b(Leu/janmuller/android/simplecropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 568
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 570
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v7, v4

    int-to-float v8, v6

    int-to-float v4, v4

    int-to-float v6, v6

    invoke-direct {v3, v7, v8, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 571
    neg-int v4, v1

    int-to-float v4, v4

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v4, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 572
    iget v1, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_0

    .line 573
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 576
    :cond_0
    iget v1, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_1

    .line 577
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 580
    :cond_1
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 581
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 584
    :cond_2
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 585
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 588
    :cond_3
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->b:Landroid/graphics/Matrix;

    iget-object v4, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v4}, Leu/janmuller/android/simplecropimage/CropImage;->g(Leu/janmuller/android/simplecropimage/CropImage;)Z

    move-result v4

    iget-object v6, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v6}, Leu/janmuller/android/simplecropimage/CropImage;->h(Leu/janmuller/android/simplecropimage/CropImage;)I

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v6}, Leu/janmuller/android/simplecropimage/CropImage;->i(Leu/janmuller/android/simplecropimage/CropImage;)I

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    :cond_4
    invoke-virtual/range {v0 .. v5}, Leu/janmuller/android/simplecropimage/e;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 590
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v1}, Leu/janmuller/android/simplecropimage/CropImage;->c(Leu/janmuller/android/simplecropimage/CropImage;)Leu/janmuller/android/simplecropimage/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Leu/janmuller/android/simplecropimage/CropImageView;->a(Leu/janmuller/android/simplecropimage/e;)V

    .line 591
    return-void
.end method

.method static synthetic a(Leu/janmuller/android/simplecropimage/CropImage$7;)V
    .locals 0
    .parameter

    .prologue
    .line 544
    invoke-direct {p0}, Leu/janmuller/android/simplecropimage/CropImage$7;->a()V

    return-void
.end method

.method static synthetic a(Leu/janmuller/android/simplecropimage/CropImage$7;Landroid/media/FaceDetector$Face;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 544
    invoke-direct {p0, p1}, Leu/janmuller/android/simplecropimage/CropImage$7;->a(Landroid/media/FaceDetector$Face;)V

    return-void
.end method

.method private b()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 632
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v0}, Leu/janmuller/android/simplecropimage/CropImage;->b(Leu/janmuller/android/simplecropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 634
    const/4 v0, 0x0

    .line 644
    :goto_0
    return-object v0

    .line 638
    :cond_0
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v0}, Leu/janmuller/android/simplecropimage/CropImage;->b(Leu/janmuller/android/simplecropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x100

    if-le v0, v2, :cond_1

    .line 640
    const/high16 v0, 0x4380

    iget-object v2, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v2}, Leu/janmuller/android/simplecropimage/CropImage;->b(Leu/janmuller/android/simplecropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->a:F

    .line 642
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 643
    iget v0, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->a:F

    iget v2, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->a:F

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 644
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v0}, Leu/janmuller/android/simplecropimage/CropImage;->b(Leu/janmuller/android/simplecropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v2}, Leu/janmuller/android/simplecropimage/CropImage;->b(Leu/janmuller/android/simplecropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v2}, Leu/janmuller/android/simplecropimage/CropImage;->b(Leu/janmuller/android/simplecropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 649
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v0}, Leu/janmuller/android/simplecropimage/CropImage;->c(Leu/janmuller/android/simplecropimage/CropImage;)Leu/janmuller/android/simplecropimage/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Leu/janmuller/android/simplecropimage/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->b:Landroid/graphics/Matrix;

    .line 650
    invoke-direct {p0}, Leu/janmuller/android/simplecropimage/CropImage$7;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 652
    const/high16 v1, 0x3f80

    iget v2, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->a:F

    div-float/2addr v1, v2

    iput v1, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->a:F

    .line 653
    if-eqz v0, :cond_0

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v1}, Leu/janmuller/android/simplecropimage/CropImage;->j(Leu/janmuller/android/simplecropimage/CropImage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    new-instance v1, Landroid/media/FaceDetector;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->c:[Landroid/media/FaceDetector$Face;

    array-length v4, v4

    invoke-direct {v1, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 655
    iget-object v2, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->c:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v1, v0, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v1

    iput v1, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->d:I

    .line 658
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v1}, Leu/janmuller/android/simplecropimage/CropImage;->b(Leu/janmuller/android/simplecropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 659
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 662
    :cond_1
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage$7;->e:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v0}, Leu/janmuller/android/simplecropimage/CropImage;->d(Leu/janmuller/android/simplecropimage/CropImage;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Leu/janmuller/android/simplecropimage/CropImage$7$1;

    invoke-direct {v1, p0}, Leu/janmuller/android/simplecropimage/CropImage$7$1;-><init>(Leu/janmuller/android/simplecropimage/CropImage$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 684
    return-void
.end method
