.class public Lcom/etermax/tools/widget/RoundedRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Canvas;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:I

.field private e:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v0, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->a:F

    .line 32
    iput v0, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->b:F

    .line 33
    iput v0, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->c:F

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->d:I

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->e:Landroid/graphics/RectF;

    .line 47
    invoke-direct {p0, p2}, Lcom/etermax/tools/widget/RoundedRelativeLayout;->a(Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput v0, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->a:F

    .line 32
    iput v0, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->b:F

    .line 33
    iput v0, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->c:F

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->d:I

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->e:Landroid/graphics/RectF;

    .line 42
    invoke-direct {p0, p2}, Lcom/etermax/tools/widget/RoundedRelativeLayout;->a(Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method private a(II)Landroid/util/Pair;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    sget-object v0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->f:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 124
    if-nez v0, :cond_1

    .line 129
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 130
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    sget-object v0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/etermax/tools/widget/RoundedRelativeLayout;->b()V

    .line 142
    :cond_0
    sget-object v0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->f:Ljava/util/Map;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 144
    :cond_1
    return-object v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-direct {p0}, Lcom/etermax/tools/widget/RoundedRelativeLayout;->b()V

    .line 133
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 134
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/etermax/tools/widget/RoundedRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/etermax/q;->RoundedView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->a:F

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->b:F

    .line 60
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->c:F

    .line 61
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->d:I

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/tools/widget/RoundedRelativeLayout;->a()V

    .line 67
    sget-object v0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->f:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->f:Ljava/util/Map;

    .line 70
    :cond_1
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 148
    sget-object v0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 149
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 153
    :cond_1
    sget-object v0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 154
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 159
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/tools/widget/RoundedRelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 161
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x4000

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 80
    invoke-virtual {p0}, Lcom/etermax/tools/widget/RoundedRelativeLayout;->getWidth()I

    move-result v2

    .line 81
    invoke-virtual {p0}, Lcom/etermax/tools/widget/RoundedRelativeLayout;->getHeight()I

    move-result v3

    .line 83
    iget v0, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->a:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_0

    iget v0, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->b:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_0

    .line 84
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 85
    iget v4, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->b:F

    mul-float/2addr v0, v4

    const/high16 v4, 0x42c8

    div-float/2addr v0, v4

    iput v0, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->a:F

    .line 88
    :cond_0
    iget v0, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->c:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->e:Landroid/graphics/RectF;

    iget v4, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->c:F

    div-float/2addr v4, v9

    iget v5, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->c:F

    div-float/2addr v5, v9

    int-to-float v6, v2

    iget v7, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->c:F

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    int-to-float v7, v3

    iget v8, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->c:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 94
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/etermax/tools/widget/RoundedRelativeLayout;->a(II)Landroid/util/Pair;

    move-result-object v4

    .line 95
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 97
    new-instance v5, Landroid/graphics/BitmapShader;

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v0, v4, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 99
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 102
    iget-object v4, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->e:Landroid/graphics/RectF;

    iget v5, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->a:F

    iget v6, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->a:F

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 104
    iget v0, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->c:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_1

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 106
    iget v4, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->c:F

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    iget v4, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->d:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 110
    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 112
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->c:F

    div-float/2addr v5, v9

    iget v6, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->c:F

    div-float/2addr v6, v9

    int-to-float v2, v2

    iget v7, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->c:F

    div-float/2addr v7, v9

    sub-float/2addr v2, v7

    int-to-float v3, v3

    iget v7, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->c:F

    div-float/2addr v7, v9

    sub-float/2addr v3, v7

    invoke-direct {v4, v5, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 113
    iget v2, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->a:F

    iget v3, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->a:F

    invoke-virtual {p1, v4, v2, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 116
    :cond_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 118
    return-void

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->e:Landroid/graphics/RectF;

    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {v0, v10, v10, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method public setRadiusPercentage(F)V
    .locals 1
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->a:F

    .line 74
    iput p1, p0, Lcom/etermax/tools/widget/RoundedRelativeLayout;->b:F

    .line 75
    return-void
.end method
