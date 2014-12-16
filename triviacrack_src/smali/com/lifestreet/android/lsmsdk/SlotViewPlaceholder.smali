.class public final Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHeight:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mPaint:Landroid/graphics/Paint;

    .line 30
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method private drawSizedText(Landroid/graphics/Paint;Landroid/graphics/Canvas;[Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x4000

    .line 99
    const/4 v1, 0x0

    .line 101
    array-length v4, p3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, p3, v2

    .line 102
    invoke-virtual {v3}, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    .line 101
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_0

    .line 105
    :cond_0
    div-float v2, v1, v5

    .line 106
    iget v3, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mWidth:F

    div-float/2addr v3, v5

    .line 107
    iget v4, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mHeight:F

    div-float/2addr v4, v5

    const/4 v5, 0x1

    aget-object v5, p3, v5

    invoke-virtual {v5}, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 109
    array-length v5, p3

    :goto_1
    if-ge v0, v5, :cond_1

    aget-object v6, p3, v0

    .line 110
    invoke-virtual {v6}, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;->getTextSize()F

    move-result v7

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 111
    invoke-virtual {v6}, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;->getText()Ljava/lang/String;

    move-result-object v7

    sub-float v8, v3, v1

    add-float/2addr v8, v2

    invoke-virtual {p2, v7, v8, v4, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 112
    invoke-virtual {v6}, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v1, v6

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter

    .prologue
    const/high16 v9, 0x41b0

    const/high16 v8, 0x4188

    const/high16 v7, 0x3f80

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 35
    iget v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mWidth:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 37
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0x15

    const/16 v3, 0x7c

    const/16 v4, 0xc2

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget v3, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mWidth:F

    iget v4, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mHeight:F

    iget-object v5, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 45
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mWidth:F

    sub-float v3, v0, v7

    iget v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mHeight:F

    sub-float v4, v0, v7

    iget-object v5, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 51
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 54
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;

    const/4 v2, 0x0

    new-instance v3, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;

    iget-object v4, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mPaint:Landroid/graphics/Paint;

    const-string v5, "L"

    invoke-direct {v3, p0, v4, v5, v9}, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;-><init>(Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;Landroid/graphics/Paint;Ljava/lang/String;F)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mPaint:Landroid/graphics/Paint;

    const-string v4, "IFE"

    invoke-direct {v2, p0, v3, v4, v8}, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;-><init>(Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;Landroid/graphics/Paint;Ljava/lang/String;F)V

    aput-object v2, v1, v6

    const/4 v2, 0x2

    new-instance v3, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;

    iget-object v4, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mPaint:Landroid/graphics/Paint;

    const-string v5, "S"

    invoke-direct {v3, p0, v4, v5, v9}, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;-><init>(Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;Landroid/graphics/Paint;Ljava/lang/String;F)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;

    iget-object v4, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mPaint:Landroid/graphics/Paint;

    const-string v5, "TREET"

    invoke-direct {v3, p0, v4, v5, v8}, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;-><init>(Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;Landroid/graphics/Paint;Ljava/lang/String;F)V

    aput-object v3, v1, v2

    invoke-direct {p0, v0, p1, v1}, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->drawSizedText(Landroid/graphics/Paint;Landroid/graphics/Canvas;[Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder$SizedText;)V

    .line 61
    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput p1, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mWidth:F

    .line 65
    iput p2, p0, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->mHeight:F

    .line 66
    return-void
.end method
