.class Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field protected a:Z

.field protected final b:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 503
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 499
    iput-boolean v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->a:Z

    .line 504
    iput-boolean p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->a:Z

    .line 505
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->b:Landroid/graphics/Paint;

    .line 506
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 507
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 508
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter

    .prologue
    const/16 v1, 0xff

    const/high16 v9, 0x4000

    .line 513
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 514
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v6, v2, v3

    .line 515
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v7, v2, v0

    .line 516
    int-to-float v0, v6

    const/high16 v2, 0x40c0

    div-float v8, v0, v2

    .line 517
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 518
    iget-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->a:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 519
    :goto_0
    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v0, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 520
    div-float v1, v8, v9

    div-float v2, v8, v9

    int-to-float v0, v6

    div-float v3, v8, v9

    sub-float v3, v0, v3

    int-to-float v0, v7

    div-float v4, v8, v9

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 522
    int-to-float v0, v6

    div-float v1, v8, v9

    sub-float v1, v0, v1

    div-float v2, v8, v9

    div-float v3, v8, v9

    int-to-float v0, v7

    div-float v4, v8, v9

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 524
    return-void

    .line 518
    :cond_0
    const/16 v0, 0x50

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 529
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter

    .prologue
    .line 535
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 540
    return-void
.end method
