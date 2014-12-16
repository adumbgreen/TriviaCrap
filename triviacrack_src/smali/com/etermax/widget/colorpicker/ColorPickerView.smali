.class public Lcom/etermax/widget/colorpicker/ColorPickerView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static f:F


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:Landroid/graphics/RectF;

.field private E:Landroid/graphics/RectF;

.field private F:Landroid/graphics/RectF;

.field private G:Landroid/graphics/RectF;

.field private H:Lcom/etermax/widget/colorpicker/a;

.field private I:Landroid/graphics/Point;

.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private g:Lcom/etermax/widget/colorpicker/c;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/Shader;

.field private p:Landroid/graphics/Shader;

.field private q:Landroid/graphics/Shader;

.field private r:Landroid/graphics/Shader;

.field private s:Lcom/etermax/widget/colorpicker/b;

.field private t:I

.field private u:F

.field private v:F

.field private w:F

.field private x:Ljava/lang/String;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/high16 v0, 0x3f80

    sput v0, Lcom/etermax/widget/colorpicker/ColorPickerView;->f:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/etermax/widget/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->a:F

    .line 54
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->b:F

    .line 59
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->c:F

    .line 63
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->d:F

    .line 68
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->e:F

    .line 96
    const/16 v0, 0xff

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->t:I

    .line 97
    const/high16 v0, 0x43b4

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->u:F

    .line 98
    iput v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->v:F

    .line 99
    iput v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->w:F

    .line 101
    iput-object v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->x:Ljava/lang/String;

    .line 102
    const v0, -0x424243

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->y:I

    .line 103
    const v0, -0x919192

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->z:I

    .line 104
    iput-boolean v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->A:Z

    .line 110
    iput v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->B:I

    .line 131
    iput-object v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->I:Landroid/graphics/Point;

    .line 143
    invoke-direct {p0, p2}, Lcom/etermax/widget/colorpicker/ColorPickerView;->a(Landroid/util/AttributeSet;)V

    .line 144
    return-void
.end method

.method private a(F)Landroid/graphics/Point;
    .locals 5
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->F:Landroid/graphics/RectF;

    .line 383
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 385
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 387
    mul-float v3, p1, v1

    const/high16 v4, 0x43b4

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 388
    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Point;->x:I

    .line 390
    return-object v2
.end method

.method private a(FF)Landroid/graphics/Point;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->E:Landroid/graphics/RectF;

    .line 396
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 397
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 399
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 401
    mul-float/2addr v2, p1

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Point;->x:I

    .line 402
    const/high16 v2, 0x3f80

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v3, Landroid/graphics/Point;->y:I

    .line 404
    return-object v3
.end method

.method private a(I)Landroid/graphics/Point;
    .locals 5
    .parameter

    .prologue
    .line 409
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->G:Landroid/graphics/RectF;

    .line 410
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 412
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 414
    int-to-float v3, p1

    mul-float/2addr v3, v1

    const/high16 v4, 0x437f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Point;->x:I

    .line 415
    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 417
    return-object v2
.end method

.method private a()V
    .locals 4

    .prologue
    const/high16 v2, 0x4000

    const/4 v3, 0x1

    .line 173
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->h:Landroid/graphics/Paint;

    .line 174
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->i:Landroid/graphics/Paint;

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->j:Landroid/graphics/Paint;

    .line 176
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->k:Landroid/graphics/Paint;

    .line 177
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->l:Landroid/graphics/Paint;

    .line 178
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->m:Landroid/graphics/Paint;

    .line 179
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->n:Landroid/graphics/Paint;

    .line 181
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->i:Landroid/graphics/Paint;

    sget v1, Lcom/etermax/widget/colorpicker/ColorPickerView;->f:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 183
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 185
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->k:Landroid/graphics/Paint;

    sget v1, Lcom/etermax/widget/colorpicker/ColorPickerView;->f:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 188
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 190
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->m:Landroid/graphics/Paint;

    const v1, -0xe3e3e4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->m:Landroid/graphics/Paint;

    const/high16 v1, 0x4160

    sget v2, Lcom/etermax/widget/colorpicker/ColorPickerView;->f:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 192
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 194
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 196
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    .line 236
    iget-object v8, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->E:Landroid/graphics/RectF;

    .line 239
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->z:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->D:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->D:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v0, v8, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f80

    add-float/2addr v3, v0

    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f80

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->n:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 243
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->o:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/RectF;->left:F

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    const/4 v5, -0x1

    const/high16 v6, -0x100

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->o:Landroid/graphics/Shader;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->s:Lcom/etermax/widget/colorpicker/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->s:Lcom/etermax/widget/colorpicker/b;

    iget v0, v0, Lcom/etermax/widget/colorpicker/b;->c:F

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->u:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->s:Lcom/etermax/widget/colorpicker/b;

    if-nez v0, :cond_2

    .line 252
    new-instance v0, Lcom/etermax/widget/colorpicker/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/etermax/widget/colorpicker/b;-><init>(Lcom/etermax/widget/colorpicker/ColorPickerView;Lcom/etermax/widget/colorpicker/ColorPickerView$1;)V

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->s:Lcom/etermax/widget/colorpicker/b;

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->s:Lcom/etermax/widget/colorpicker/b;

    iget-object v0, v0, Lcom/etermax/widget/colorpicker/b;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->s:Lcom/etermax/widget/colorpicker/b;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/etermax/widget/colorpicker/b;->b:Landroid/graphics/Bitmap;

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->s:Lcom/etermax/widget/colorpicker/b;

    iget-object v0, v0, Lcom/etermax/widget/colorpicker/b;->a:Landroid/graphics/Canvas;

    if-nez v0, :cond_4

    .line 262
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->s:Lcom/etermax/widget/colorpicker/b;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->s:Lcom/etermax/widget/colorpicker/b;

    iget-object v2, v2, Lcom/etermax/widget/colorpicker/b;->b:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/etermax/widget/colorpicker/b;->a:Landroid/graphics/Canvas;

    .line 265
    :cond_4
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->u:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    .line 267
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/RectF;->right:F

    iget v4, v8, Landroid/graphics/RectF;->top:F

    const/4 v5, -0x1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->p:Landroid/graphics/Shader;

    .line 269
    new-instance v0, Landroid/graphics/ComposeShader;

    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->o:Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->p:Landroid/graphics/Shader;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 270
    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 276
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->s:Lcom/etermax/widget/colorpicker/b;

    iget-object v0, v0, Lcom/etermax/widget/colorpicker/b;->a:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->s:Lcom/etermax/widget/colorpicker/b;

    iget-object v3, v3, Lcom/etermax/widget/colorpicker/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->s:Lcom/etermax/widget/colorpicker/b;

    iget-object v4, v4, Lcom/etermax/widget/colorpicker/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->h:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 280
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->s:Lcom/etermax/widget/colorpicker/b;

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->u:F

    iput v1, v0, Lcom/etermax/widget/colorpicker/b;->c:F

    .line 286
    :cond_5
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->s:Lcom/etermax/widget/colorpicker/b;

    iget-object v0, v0, Lcom/etermax/widget/colorpicker/b;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 288
    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->v:F

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->w:F

    invoke-direct {p0, v0, v1}, Lcom/etermax/widget/colorpicker/ColorPickerView;->a(FF)Landroid/graphics/Point;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->i:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 291
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->d:F

    const/high16 v4, 0x3f80

    sget v5, Lcom/etermax/widget/colorpicker/ColorPickerView;->f:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 293
    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->i:Landroid/graphics/Paint;

    const v2, -0x222223

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->d:F

    iget-object v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 296
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 148
    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/etermax/q;->ColorPickerView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 149
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->A:Z

    .line 150
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->x:Ljava/lang/String;

    .line 151
    const/4 v1, 0x2

    const v2, -0x424243

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->y:I

    .line 152
    const/4 v1, 0x3

    const v2, -0x919192

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->z:I

    .line 153
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/etermax/widget/colorpicker/ColorPickerView;->f:F

    .line 156
    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->d:F

    sget v1, Lcom/etermax/widget/colorpicker/ColorPickerView;->f:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->d:F

    .line 157
    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->e:F

    sget v1, Lcom/etermax/widget/colorpicker/ColorPickerView;->f:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->e:F

    .line 158
    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->a:F

    sget v1, Lcom/etermax/widget/colorpicker/ColorPickerView;->f:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->a:F

    .line 159
    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->b:F

    sget v1, Lcom/etermax/widget/colorpicker/ColorPickerView;->f:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->b:F

    .line 160
    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->c:F

    sget v1, Lcom/etermax/widget/colorpicker/ColorPickerView;->f:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->c:F

    .line 162
    invoke-direct {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->b()I

    move-result v0

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->C:I

    .line 164
    invoke-direct {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->a()V

    .line 167
    invoke-virtual {p0, v3}, Lcom/etermax/widget/colorpicker/ColorPickerView;->setFocusable(Z)V

    .line 168
    invoke-virtual {p0, v3}, Lcom/etermax/widget/colorpicker/ColorPickerView;->setFocusableInTouchMode(Z)V

    .line 169
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 610
    iget-object v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->I:Landroid/graphics/Point;

    if-nez v2, :cond_0

    .line 644
    :goto_0
    return v1

    .line 616
    :cond_0
    iget-object v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->I:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 617
    iget-object v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->I:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 619
    iget-object v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->F:Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 620
    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->B:I

    .line 622
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/etermax/widget/colorpicker/ColorPickerView;->b(F)F

    move-result v1

    iput v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->u:F

    :goto_1
    move v1, v0

    .line 644
    goto :goto_0

    .line 625
    :cond_1
    iget-object v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->E:Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 627
    iput v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->B:I

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/etermax/widget/colorpicker/ColorPickerView;->b(FF)[F

    move-result-object v2

    .line 631
    aget v1, v2, v1

    iput v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->v:F

    .line 632
    aget v1, v2, v0

    iput v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->w:F

    goto :goto_1

    .line 635
    :cond_2
    iget-object v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->G:Landroid/graphics/RectF;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->G:Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 637
    const/4 v1, 0x2

    iput v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->B:I

    .line 639
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/etermax/widget/colorpicker/ColorPickerView;->b(I)I

    move-result v1

    iput v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->t:I

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private b(F)F
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x43b4

    .line 453
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->F:Landroid/graphics/RectF;

    .line 455
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 457
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 458
    const/4 v0, 0x0

    .line 465
    :goto_0
    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    return v0

    .line 459
    :cond_0
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    move v0, v1

    .line 460
    goto :goto_0

    .line 462
    :cond_1
    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v0, p1, v0

    goto :goto_0
.end method

.method private b()I
    .locals 3

    .prologue
    .line 199
    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->d:F

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->e:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 200
    const/high16 v1, 0x3f80

    sget v2, Lcom/etermax/widget/colorpicker/ColorPickerView;->f:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 202
    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private b(I)I
    .locals 4
    .parameter

    .prologue
    .line 470
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->G:Landroid/graphics/RectF;

    .line 471
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    .line 473
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 474
    const/4 v0, 0x0

    .line 481
    :goto_0
    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v1

    rsub-int v0, v0, 0xff

    return v0

    .line 475
    :cond_0
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    move v0, v1

    .line 476
    goto :goto_0

    .line 478
    :cond_1
    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter

    .prologue
    const/high16 v10, 0x4000

    const/4 v9, 0x0

    const/high16 v4, 0x3f80

    .line 305
    iget-object v8, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->F:Landroid/graphics/RectF;

    .line 308
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->z:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    iget v0, v8, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    iget v0, v8, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    iget v0, v8, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->n:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 312
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->q:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-direct {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->c()[I

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v1, v9

    move v2, v9

    move v3, v9

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->q:Landroid/graphics/Shader;

    .line 315
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->j:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->q:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 320
    const/high16 v0, 0x4080

    sget v1, Lcom/etermax/widget/colorpicker/ColorPickerView;->f:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v10

    .line 322
    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->u:F

    invoke-direct {p0, v1}, Lcom/etermax/widget/colorpicker/ColorPickerView;->a(F)Landroid/graphics/Point;

    move-result-object v1

    .line 324
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 325
    iget v3, v8, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->e:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 326
    iget v3, v8, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->e:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 327
    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 328
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 330
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v10, v10, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 334
    return-void
.end method

.method private b(FF)[F
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v7, 0x3f80

    .line 423
    iget-object v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->E:Landroid/graphics/RectF;

    .line 424
    const/4 v0, 0x2

    new-array v5, v0, [F

    .line 426
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 427
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 429
    iget v0, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    move v0, v1

    .line 437
    :goto_0
    iget v6, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v6, p2, v6

    if-gez v6, :cond_2

    .line 445
    :goto_1
    const/4 v4, 0x0

    div-float v2, v7, v2

    mul-float/2addr v0, v2

    aput v0, v5, v4

    .line 446
    const/4 v0, 0x1

    div-float v2, v7, v3

    mul-float/2addr v1, v2

    sub-float v1, v7, v1

    aput v1, v5, v0

    .line 448
    return-object v5

    .line 431
    :cond_0
    iget v0, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    move v0, v2

    .line 432
    goto :goto_0

    .line 434
    :cond_1
    iget v0, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, p1, v0

    goto :goto_0

    .line 439
    :cond_2
    iget v1, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_3

    move v1, v3

    .line 440
    goto :goto_1

    .line 442
    :cond_3
    iget v1, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v1

    goto :goto_1
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter

    .prologue
    const/4 v6, 0x0

    const/high16 v10, 0x4080

    const/high16 v9, 0x4000

    const/high16 v4, 0x3f80

    .line 341
    iget-boolean v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->G:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->H:Lcom/etermax/widget/colorpicker/a;

    if-nez v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v8, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->G:Landroid/graphics/RectF;

    .line 347
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->z:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 348
    iget v0, v8, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    iget v0, v8, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    iget v0, v8, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->n:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 351
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->H:Lcom/etermax/widget/colorpicker/a;

    invoke-virtual {v0, p1}, Lcom/etermax/widget/colorpicker/a;->draw(Landroid/graphics/Canvas;)V

    .line 353
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->u:F

    aput v1, v0, v6

    const/4 v1, 0x1

    iget v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->v:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->w:F

    aput v2, v0, v1

    .line 354
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    .line 355
    invoke-static {v6, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    .line 357
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    iget v3, v8, Landroid/graphics/RectF;->right:F

    iget v4, v8, Landroid/graphics/RectF;->top:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->r:Landroid/graphics/Shader;

    .line 359
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->l:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->r:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 361
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 363
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->x:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->x:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->x:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sget v3, Lcom/etermax/widget/colorpicker/ColorPickerView;->f:F

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 367
    :cond_2
    sget v0, Lcom/etermax/widget/colorpicker/ColorPickerView;->f:F

    mul-float/2addr v0, v10

    div-float/2addr v0, v9

    .line 369
    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->t:I

    invoke-direct {p0, v1}, Lcom/etermax/widget/colorpicker/ColorPickerView;->a(I)Landroid/graphics/Point;

    move-result-object v1

    .line 371
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 372
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 373
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 374
    iget v0, v8, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->e:F

    sub-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->top:F

    .line 375
    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->e:F

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 377
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v9, v9, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private c()[I
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/high16 v6, 0x3f80

    .line 206
    const/16 v0, 0x169

    new-array v3, v0, [I

    .line 209
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_0
    if-ltz v0, :cond_0

    .line 210
    const/4 v4, 0x3

    new-array v4, v4, [F

    int-to-float v5, v0

    aput v5, v4, v2

    const/4 v5, 0x1

    aput v6, v4, v5

    const/4 v5, 0x2

    aput v6, v4, v5

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v3, v1

    .line 209
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-object v3
.end method

.method private d()V
    .locals 6

    .prologue
    const/high16 v4, 0x3f80

    .line 790
    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->D:Landroid/graphics/RectF;

    .line 792
    iget v0, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v0, v4

    .line 793
    iget v0, v1, Landroid/graphics/RectF;->top:F

    add-float v3, v0, v4

    .line 794
    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v4

    .line 795
    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->c:F

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->a:F

    sub-float/2addr v1, v4

    .line 797
    iget-boolean v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->A:Z

    if-eqz v4, :cond_0

    .line 798
    iget v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->b:F

    iget v5, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->c:F

    add-float/2addr v4, v5

    sub-float/2addr v0, v4

    .line 801
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->E:Landroid/graphics/RectF;

    .line 802
    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    .line 806
    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->D:Landroid/graphics/RectF;

    .line 808
    iget v0, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->a:F

    sub-float/2addr v0, v2

    add-float v2, v0, v6

    .line 809
    iget v0, v1, Landroid/graphics/RectF;->top:F

    add-float v3, v0, v6

    .line 810
    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v0, v6

    iget-boolean v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->A:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->c:F

    iget v5, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->b:F

    add-float/2addr v0, v5

    :goto_0
    sub-float v0, v4, v0

    .line 811
    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v6

    .line 813
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->F:Landroid/graphics/RectF;

    .line 814
    return-void

    .line 810
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 818
    iget-boolean v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->A:Z

    if-nez v0, :cond_0

    .line 832
    :goto_0
    return-void

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->D:Landroid/graphics/RectF;

    .line 823
    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    .line 824
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->b:F

    sub-float/2addr v2, v3

    add-float/2addr v2, v4

    .line 825
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    .line 826
    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v4

    .line 828
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->G:Landroid/graphics/RectF;

    .line 830
    new-instance v0, Lcom/etermax/widget/colorpicker/a;

    const/high16 v1, 0x40a0

    sget v2, Lcom/etermax/widget/colorpicker/ColorPickerView;->f:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lcom/etermax/widget/colorpicker/a;-><init>(I)V

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->H:Lcom/etermax/widget/colorpicker/a;

    .line 831
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->H:Lcom/etermax/widget/colorpicker/a;

    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->G:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->G:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->G:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->G:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/etermax/widget/colorpicker/a;->setBounds(IIII)V

    goto :goto_0
.end method

.method private getPreferredHeight()I
    .locals 3

    .prologue
    .line 758
    const/high16 v0, 0x4348

    sget v1, Lcom/etermax/widget/colorpicker/ColorPickerView;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 760
    iget-boolean v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->A:Z

    if-eqz v1, :cond_0

    .line 761
    int-to-float v0, v0

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->c:F

    iget v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->b:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 763
    :cond_0
    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 752
    const/high16 v0, 0x4348

    sget v1, Lcom/etermax/widget/colorpicker/ColorPickerView;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 754
    int-to-float v0, v0

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->a:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->c:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a(IZ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 871
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 872
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 873
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 874
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 876
    new-array v4, v8, [F

    .line 878
    invoke-static {v1, v3, v2, v4}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 880
    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->t:I

    .line 881
    aget v0, v4, v5

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->u:F

    .line 882
    aget v0, v4, v6

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->v:F

    .line 883
    aget v0, v4, v7

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->w:F

    .line 885
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->g:Lcom/etermax/widget/colorpicker/c;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->g:Lcom/etermax/widget/colorpicker/c;

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->t:I

    new-array v2, v8, [F

    iget v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->u:F

    aput v3, v2, v5

    iget v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->v:F

    aput v3, v2, v6

    iget v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->w:F

    aput v3, v2, v7

    invoke-static {v1, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/etermax/widget/colorpicker/c;->a(I)V

    .line 889
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->invalidate()V

    .line 890
    return-void
.end method

.method public getAlphaSliderText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->z:I

    return v0
.end method

.method public getColor()I
    .locals 4

    .prologue
    .line 850
    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->t:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->u:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->v:F

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->w:F

    aput v3, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public getDrawingOffset()F
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->C:I

    int-to-float v0, v0

    return v0
.end method

.method public getSliderTrackerColor()I
    .locals 1

    .prologue
    .line 949
    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->y:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->D:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->D:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-direct {p0, p1}, Lcom/etermax/widget/colorpicker/ColorPickerView;->a(Landroid/graphics/Canvas;)V

    .line 223
    invoke-direct {p0, p1}, Lcom/etermax/widget/colorpicker/ColorPickerView;->b(Landroid/graphics/Canvas;)V

    .line 224
    invoke-direct {p0, p1}, Lcom/etermax/widget/colorpicker/ColorPickerView;->c(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x4000

    .line 649
    .line 652
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 653
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 655
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 656
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 661
    if-eq v1, v5, :cond_0

    if-ne v4, v5, :cond_7

    .line 664
    :cond_0
    if-ne v1, v5, :cond_4

    if-eq v4, v5, :cond_4

    .line 666
    int-to-float v1, v2

    iget v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->c:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->a:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 668
    iget-boolean v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->A:Z

    if-eqz v3, :cond_1

    .line 669
    int-to-float v1, v1

    iget v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->c:F

    iget v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->b:F

    add-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 672
    :cond_1
    if-le v1, v0, :cond_3

    .line 734
    :cond_2
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->setMeasuredDimension(II)V

    .line 735
    return-void

    :cond_3
    move v0, v1

    .line 676
    goto :goto_0

    .line 681
    :cond_4
    if-ne v4, v5, :cond_2

    if-eq v1, v5, :cond_2

    .line 684
    int-to-float v1, v0

    iget v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->c:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->a:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 686
    iget-boolean v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->A:Z

    if-eqz v3, :cond_5

    .line 687
    int-to-float v1, v1

    iget v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->c:F

    iget v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->b:F

    sub-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 690
    :cond_5
    if-le v1, v2, :cond_6

    move v1, v2

    :cond_6
    move v2, v1

    .line 699
    goto :goto_0

    .line 714
    :cond_7
    int-to-float v1, v0

    iget v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->c:F

    add-float/2addr v1, v4

    iget v4, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->a:F

    add-float/2addr v1, v4

    float-to-int v4, v1

    .line 716
    int-to-float v1, v2

    iget v5, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->c:F

    sub-float/2addr v1, v5

    iget v5, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->a:F

    sub-float/2addr v1, v5

    float-to-int v1, v1

    .line 718
    iget-boolean v5, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->A:Z

    if-eqz v5, :cond_8

    .line 719
    int-to-float v4, v4

    iget v5, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->c:F

    iget v6, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->b:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 720
    int-to-float v1, v1

    iget v5, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->c:F

    iget v6, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->b:F

    add-float/2addr v5, v6

    add-float/2addr v1, v5

    float-to-int v1, v1

    .line 723
    :cond_8
    if-gt v4, v2, :cond_9

    move v2, v4

    .line 725
    goto :goto_0

    .line 726
    :cond_9
    if-gt v1, v0, :cond_a

    move v0, v1

    .line 728
    goto :goto_0

    :cond_a
    move v0, v3

    move v2, v3

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 768
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 770
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->D:Landroid/graphics/RectF;

    .line 771
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->D:Landroid/graphics/RectF;

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->C:I

    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 772
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->D:Landroid/graphics/RectF;

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->C:I

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 773
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->D:Landroid/graphics/RectF;

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->C:I

    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 774
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->D:Landroid/graphics/RectF;

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->C:I

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 777
    iput-object v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->o:Landroid/graphics/Shader;

    .line 778
    iput-object v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->p:Landroid/graphics/Shader;

    .line 779
    iput-object v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->q:Landroid/graphics/Shader;

    .line 780
    iput-object v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->r:Landroid/graphics/Shader;

    .line 783
    invoke-direct {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->d()V

    .line 784
    invoke-direct {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->e()V

    .line 785
    invoke-direct {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->f()V

    .line 786
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 579
    .line 581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 597
    :goto_0
    if-eqz v1, :cond_1

    .line 598
    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->g:Lcom/etermax/widget/colorpicker/c;

    if-eqz v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->g:Lcom/etermax/widget/colorpicker/c;

    iget v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->t:I

    const/4 v4, 0x3

    new-array v4, v4, [F

    iget v5, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->u:F

    aput v5, v4, v2

    iget v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->v:F

    aput v2, v4, v0

    const/4 v2, 0x2

    iget v5, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->w:F

    aput v5, v4, v2

    invoke-static {v3, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/etermax/widget/colorpicker/c;->a(I)V

    .line 601
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->invalidate()V

    .line 605
    :goto_1
    return v0

    .line 584
    :pswitch_0
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->I:Landroid/graphics/Point;

    .line 585
    invoke-direct {p0, p1}, Lcom/etermax/widget/colorpicker/ColorPickerView;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 589
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/etermax/widget/colorpicker/ColorPickerView;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 592
    :pswitch_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->I:Landroid/graphics/Point;

    .line 593
    invoke-direct {p0, p1}, Lcom/etermax/widget/colorpicker/ColorPickerView;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 605
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/high16 v8, 0x4120

    const/4 v3, 0x0

    const/high16 v1, 0x3f80

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 495
    iget v5, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->B:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    move v0, v3

    .line 564
    :goto_0
    if-eqz v0, :cond_a

    .line 566
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->g:Lcom/etermax/widget/colorpicker/c;

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->g:Lcom/etermax/widget/colorpicker/c;

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->t:I

    const/4 v2, 0x3

    new-array v2, v2, [F

    iget v5, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->u:F

    aput v5, v2, v3

    iget v3, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->v:F

    aput v3, v2, v4

    const/4 v3, 0x2

    iget v5, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->w:F

    aput v5, v2, v3

    invoke-static {v1, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/etermax/widget/colorpicker/c;->a(I)V

    .line 570
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->invalidate()V

    move v0, v4

    .line 574
    :goto_1
    return v0

    .line 502
    :pswitch_0
    iget v5, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->v:F

    const/high16 v7, 0x4248

    div-float/2addr v2, v7

    add-float/2addr v5, v2

    .line 503
    iget v2, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->w:F

    const/high16 v7, 0x4248

    div-float/2addr v6, v7

    sub-float/2addr v2, v6

    .line 505
    cmpg-float v6, v5, v0

    if-gez v6, :cond_3

    move v5, v0

    .line 511
    :cond_2
    :goto_2
    cmpg-float v6, v2, v0

    if-gez v6, :cond_4

    .line 517
    :goto_3
    iput v5, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->v:F

    .line 518
    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->w:F

    move v0, v4

    .line 522
    goto :goto_0

    .line 507
    :cond_3
    cmpl-float v6, v5, v1

    if-lez v6, :cond_2

    move v5, v1

    .line 508
    goto :goto_2

    .line 513
    :cond_4
    cmpl-float v0, v2, v1

    if-lez v0, :cond_c

    move v0, v1

    .line 514
    goto :goto_3

    .line 526
    :pswitch_1
    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->u:F

    mul-float v2, v6, v8

    sub-float/2addr v1, v2

    .line 528
    cmpg-float v2, v1, v0

    if-gez v2, :cond_5

    .line 534
    :goto_4
    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->u:F

    move v0, v4

    .line 538
    goto :goto_0

    .line 530
    :cond_5
    const/high16 v0, 0x43b4

    cmpl-float v0, v1, v0

    if-lez v0, :cond_b

    .line 531
    const/high16 v0, 0x43b4

    goto :goto_4

    .line 542
    :pswitch_2
    iget-boolean v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->A:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->G:Landroid/graphics/RectF;

    if-nez v0, :cond_7

    :cond_6
    move v0, v3

    .line 543
    goto :goto_0

    .line 546
    :cond_7
    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->t:I

    int-to-float v0, v0

    mul-float v1, v2, v8

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 548
    if-gez v0, :cond_9

    move v0, v3

    .line 554
    :cond_8
    :goto_5
    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->t:I

    move v0, v4

    .line 556
    goto :goto_0

    .line 550
    :cond_9
    const/16 v1, 0xff

    if-le v0, v1, :cond_8

    .line 551
    const/16 v0, 0xff

    goto :goto_5

    .line 574
    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    :cond_b
    move v0, v1

    goto :goto_4

    :cond_c
    move v0, v2

    goto :goto_3

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAlphaSliderText(I)V
    .locals 1
    .parameter

    .prologue
    .line 976
    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 977
    invoke-virtual {p0, v0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->setAlphaSliderText(Ljava/lang/String;)V

    .line 978
    return-void
.end method

.method public setAlphaSliderText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 987
    iput-object p1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->x:Ljava/lang/String;

    .line 988
    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->invalidate()V

    .line 989
    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 913
    iget-boolean v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->A:Z

    if-eq v0, p1, :cond_0

    .line 914
    iput-boolean p1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->A:Z

    .line 921
    iput-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->o:Landroid/graphics/Shader;

    .line 922
    iput-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->p:Landroid/graphics/Shader;

    .line 923
    iput-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->q:Landroid/graphics/Shader;

    .line 924
    iput-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->r:Landroid/graphics/Shader;

    .line 927
    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->requestLayout()V

    .line 930
    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 958
    iput p1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->z:I

    .line 959
    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->invalidate()V

    .line 960
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 859
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->a(IZ)V

    .line 860
    return-void
.end method

.method public setOnColorChangedListener(Lcom/etermax/widget/colorpicker/c;)V
    .locals 0
    .parameter

    .prologue
    .line 841
    iput-object p1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->g:Lcom/etermax/widget/colorpicker/c;

    .line 842
    return-void
.end method

.method public setSliderTrackerColor(I)V
    .locals 2
    .parameter

    .prologue
    .line 938
    iput p1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->y:I

    .line 939
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/etermax/widget/colorpicker/ColorPickerView;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 940
    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPickerView;->invalidate()V

    .line 941
    return-void
.end method
