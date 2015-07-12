.class Leu/janmuller/android/simplecropimage/CropImageView;
.super Leu/janmuller/android/simplecropimage/ImageViewTouchBase;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Leu/janmuller/android/simplecropimage/e;",
            ">;"
        }
    .end annotation
.end field

.field b:Leu/janmuller/android/simplecropimage/e;

.field c:F

.field d:F

.field e:I

.field private q:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->b:Leu/janmuller/android/simplecropimage/e;

    .line 38
    iput-object p1, p0, Leu/janmuller/android/simplecropimage/CropImageView;->q:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 86
    move v1, v2

    :goto_0
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 87
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/janmuller/android/simplecropimage/e;

    .line 88
    invoke-virtual {v0, v2}, Leu/janmuller/android/simplecropimage/e;->a(Z)V

    .line 89
    invoke-virtual {v0}, Leu/janmuller/android/simplecropimage/e;->c()V

    .line 86
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 92
    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 93
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/janmuller/android/simplecropimage/e;

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Leu/janmuller/android/simplecropimage/e;->a(FF)I

    move-result v1

    .line 95
    if-eq v1, v4, :cond_0

    .line 96
    invoke-virtual {v0}, Leu/janmuller/android/simplecropimage/e;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    invoke-virtual {v0, v4}, Leu/janmuller/android/simplecropimage/e;->a(Z)V

    .line 98
    invoke-virtual {v0}, Leu/janmuller/android/simplecropimage/e;->c()V

    .line 103
    :cond_2
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImageView;->invalidate()V

    .line 104
    return-void
.end method

.method private b(Leu/janmuller/android/simplecropimage/e;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 197
    iget-object v1, p1, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    .line 199
    iget v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->l:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 200
    iget v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->m:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 202
    iget v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->n:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    iget v4, p0, Leu/janmuller/android/simplecropimage/CropImageView;->n:I

    sub-int/2addr v0, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 203
    iget v4, p0, Leu/janmuller/android/simplecropimage/CropImageView;->o:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, v1

    iget v4, p0, Leu/janmuller/android/simplecropimage/CropImageView;->n:I

    sub-int/2addr v1, v4

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 205
    if-eqz v2, :cond_2

    .line 206
    :goto_0
    if-eqz v0, :cond_3

    .line 208
    :goto_1
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    int-to-float v1, v2

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Leu/janmuller/android/simplecropimage/CropImageView;->b(FF)V

    .line 211
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 205
    goto :goto_0

    :cond_3
    move v0, v1

    .line 206
    goto :goto_1
.end method

.method private c(Leu/janmuller/android/simplecropimage/e;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x3f19999a

    .line 217
    iget-object v0, p1, Leu/janmuller/android/simplecropimage/e;->e:Landroid/graphics/Rect;

    .line 219
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 220
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 222
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 223
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 225
    div-float v1, v2, v1

    mul-float/2addr v1, v4

    .line 226
    div-float v0, v3, v0

    mul-float/2addr v0, v4

    .line 228
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 229
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImageView;->a()F

    move-result v1

    mul-float/2addr v0, v1

    .line 230
    const/high16 v1, 0x3f80

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 231
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImageView;->a()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 232
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p1, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    aput v2, v1, v5

    iget-object v2, p1, Leu/janmuller/android/simplecropimage/e;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    aput v2, v1, v6

    .line 233
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 234
    aget v2, v1, v5

    aget v1, v1, v6

    const/high16 v3, 0x4396

    invoke-virtual {p0, v0, v2, v1, v3}, Leu/janmuller/android/simplecropimage/CropImageView;->a(FFFF)V

    .line 237
    :cond_0
    invoke-direct {p0, p1}, Leu/janmuller/android/simplecropimage/CropImageView;->b(Leu/janmuller/android/simplecropimage/e;)V

    .line 238
    return-void
.end method


# virtual methods
.method protected a(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a(FF)V

    .line 75
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 76
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/janmuller/android/simplecropimage/e;

    .line 77
    iget-object v2, v0, Leu/janmuller/android/simplecropimage/e;->g:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 78
    invoke-virtual {v0}, Leu/janmuller/android/simplecropimage/e;->c()V

    .line 75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method protected a(FFF)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a(FFF)V

    .line 45
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/janmuller/android/simplecropimage/e;

    .line 46
    iget-object v2, v0, Leu/janmuller/android/simplecropimage/e;->g:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 47
    invoke-virtual {v0}, Leu/janmuller/android/simplecropimage/e;->c()V

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method public a(Leu/janmuller/android/simplecropimage/e;)V
    .locals 1
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImageView;->invalidate()V

    .line 253
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 243
    invoke-super {p0, p1}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 244
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 245
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/janmuller/android/simplecropimage/e;

    invoke-virtual {v0, p1}, Leu/janmuller/android/simplecropimage/e;->a(Landroid/graphics/Canvas;)V

    .line 244
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 247
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-super/range {p0 .. p5}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 24
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->h:Leu/janmuller/android/simplecropimage/j;

    invoke-virtual {v0}, Leu/janmuller/android/simplecropimage/j;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/janmuller/android/simplecropimage/e;

    .line 26
    iget-object v2, v0, Leu/janmuller/android/simplecropimage/e;->g:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 27
    invoke-virtual {v0}, Leu/janmuller/android/simplecropimage/e;->c()V

    .line 28
    iget-boolean v2, v0, Leu/janmuller/android/simplecropimage/e;->c:Z

    if-eqz v2, :cond_0

    .line 29
    invoke-direct {p0, v0}, Leu/janmuller/android/simplecropimage/CropImageView;->c(Leu/janmuller/android/simplecropimage/e;)V

    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 109
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->q:Landroid/content/Context;

    check-cast v0, Leu/janmuller/android/simplecropimage/CropImage;

    .line 110
    iget-boolean v1, v0, Leu/janmuller/android/simplecropimage/CropImage;->c:Z

    if-eqz v1, :cond_0

    .line 191
    :goto_0
    return v2

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 176
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :cond_2
    :goto_2
    move v2, v5

    .line 191
    goto :goto_0

    .line 116
    :pswitch_0
    iget-boolean v0, v0, Leu/janmuller/android/simplecropimage/CropImage;->b:Z

    if-eqz v0, :cond_3

    .line 117
    invoke-direct {p0, p1}, Leu/janmuller/android/simplecropimage/CropImageView;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 119
    :goto_3
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 120
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/janmuller/android/simplecropimage/e;

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Leu/janmuller/android/simplecropimage/e;->a(FF)I

    move-result v2

    .line 122
    if-eq v2, v5, :cond_5

    .line 123
    iput v2, p0, Leu/janmuller/android/simplecropimage/CropImageView;->e:I

    .line 124
    iput-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->b:Leu/janmuller/android/simplecropimage/e;

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->c:F

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->d:F

    .line 127
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImageView;->b:Leu/janmuller/android/simplecropimage/e;

    const/16 v0, 0x20

    if-ne v2, v0, :cond_4

    sget-object v0, Leu/janmuller/android/simplecropimage/f;->b:Leu/janmuller/android/simplecropimage/f;

    :goto_4
    invoke-virtual {v1, v0}, Leu/janmuller/android/simplecropimage/e;->a(Leu/janmuller/android/simplecropimage/f;)V

    goto :goto_1

    :cond_4
    sget-object v0, Leu/janmuller/android/simplecropimage/f;->c:Leu/janmuller/android/simplecropimage/f;

    goto :goto_4

    .line 119
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 134
    :pswitch_1
    iget-boolean v1, v0, Leu/janmuller/android/simplecropimage/CropImage;->b:Z

    if-eqz v1, :cond_9

    move v3, v2

    .line 135
    :goto_5
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_a

    .line 136
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/janmuller/android/simplecropimage/e;

    .line 137
    invoke-virtual {v1}, Leu/janmuller/android/simplecropimage/e;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 138
    iput-object v1, v0, Leu/janmuller/android/simplecropimage/CropImage;->d:Leu/janmuller/android/simplecropimage/e;

    move v4, v2

    .line 139
    :goto_6
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_7

    .line 140
    if-ne v4, v3, :cond_6

    .line 139
    :goto_7
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_6

    .line 143
    :cond_6
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/janmuller/android/simplecropimage/e;

    invoke-virtual {v0, v5}, Leu/janmuller/android/simplecropimage/e;->b(Z)V

    goto :goto_7

    .line 145
    :cond_7
    invoke-direct {p0, v1}, Leu/janmuller/android/simplecropimage/CropImageView;->c(Leu/janmuller/android/simplecropimage/e;)V

    .line 146
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->q:Landroid/content/Context;

    check-cast v0, Leu/janmuller/android/simplecropimage/CropImage;

    iput-boolean v2, v0, Leu/janmuller/android/simplecropimage/CropImage;->b:Z

    move v2, v5

    .line 147
    goto/16 :goto_0

    .line 135
    :cond_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5

    .line 150
    :cond_9
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->b:Leu/janmuller/android/simplecropimage/e;

    if-eqz v0, :cond_a

    .line 151
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->b:Leu/janmuller/android/simplecropimage/e;

    invoke-direct {p0, v0}, Leu/janmuller/android/simplecropimage/CropImageView;->c(Leu/janmuller/android/simplecropimage/e;)V

    .line 152
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->b:Leu/janmuller/android/simplecropimage/e;

    sget-object v1, Leu/janmuller/android/simplecropimage/f;->a:Leu/janmuller/android/simplecropimage/f;

    invoke-virtual {v0, v1}, Leu/janmuller/android/simplecropimage/e;->a(Leu/janmuller/android/simplecropimage/f;)V

    .line 154
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->b:Leu/janmuller/android/simplecropimage/e;

    goto/16 :goto_1

    .line 157
    :pswitch_2
    iget-boolean v0, v0, Leu/janmuller/android/simplecropimage/CropImage;->b:Z

    if-eqz v0, :cond_b

    .line 158
    invoke-direct {p0, p1}, Leu/janmuller/android/simplecropimage/CropImageView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 159
    :cond_b
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->b:Leu/janmuller/android/simplecropimage/e;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->b:Leu/janmuller/android/simplecropimage/e;

    iget v1, p0, Leu/janmuller/android/simplecropimage/CropImageView;->e:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Leu/janmuller/android/simplecropimage/CropImageView;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Leu/janmuller/android/simplecropimage/CropImageView;->d:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Leu/janmuller/android/simplecropimage/e;->a(IFF)V

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->c:F

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->d:F

    .line 170
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImageView;->b:Leu/janmuller/android/simplecropimage/e;

    invoke-direct {p0, v0}, Leu/janmuller/android/simplecropimage/CropImageView;->b(Leu/janmuller/android/simplecropimage/e;)V

    goto/16 :goto_1

    .line 178
    :pswitch_3
    invoke-virtual {p0, v5, v5}, Leu/janmuller/android/simplecropimage/CropImageView;->a(ZZ)V

    goto/16 :goto_2

    .line 185
    :pswitch_4
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImageView;->a()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 186
    invoke-virtual {p0, v5, v5}, Leu/janmuller/android/simplecropimage/CropImageView;->a(ZZ)V

    goto/16 :goto_2

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 176
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
