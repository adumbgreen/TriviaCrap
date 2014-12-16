.class public Lcom/etermax/widget/colorpicker/ColorPanelView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static a:F


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/graphics/RectF;

.field private h:Lcom/etermax/widget/colorpicker/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/high16 v0, 0x3f80

    sput v0, Lcom/etermax/widget/colorpicker/ColorPanelView;->a:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/etermax/widget/colorpicker/ColorPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const v0, -0x919192

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->b:I

    .line 27
    const/high16 v0, -0x100

    iput v0, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->c:I

    .line 48
    invoke-direct {p0}, Lcom/etermax/widget/colorpicker/ColorPanelView;->a()V

    .line 49
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->d:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->e:Landroid/graphics/Paint;

    .line 54
    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/etermax/widget/colorpicker/ColorPanelView;->a:F

    .line 55
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 100
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->f:Landroid/graphics/RectF;

    .line 102
    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    .line 103
    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v4

    .line 104
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    .line 105
    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v4

    .line 107
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->g:Landroid/graphics/RectF;

    .line 109
    new-instance v0, Lcom/etermax/widget/colorpicker/a;

    const/high16 v1, 0x40a0

    sget v2, Lcom/etermax/widget/colorpicker/ColorPanelView;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lcom/etermax/widget/colorpicker/a;-><init>(I)V

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->h:Lcom/etermax/widget/colorpicker/a;

    .line 111
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->h:Lcom/etermax/widget/colorpicker/a;

    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->g:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->g:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->g:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/etermax/widget/colorpicker/a;->setBounds(IIII)V

    .line 113
    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->b:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->c:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->g:Landroid/graphics/RectF;

    .line 63
    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 67
    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->h:Lcom/etermax/widget/colorpicker/a;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->h:Lcom/etermax/widget/colorpicker/a;

    invoke-virtual {v1, p1}, Lcom/etermax/widget/colorpicker/a;->draw(Landroid/graphics/Canvas;)V

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->e:Landroid/graphics/Paint;

    iget v2, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->c:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v1, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 74
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 80
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/etermax/widget/colorpicker/ColorPanelView;->setMeasuredDimension(II)V

    .line 83
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 89
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->f:Landroid/graphics/RectF;

    .line 90
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPanelView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 91
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPanelView;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 92
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPanelView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 93
    iget-object v0, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPanelView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 95
    invoke-direct {p0}, Lcom/etermax/widget/colorpicker/ColorPanelView;->b()V

    .line 97
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput p1, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->b:I

    .line 141
    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPanelView;->invalidate()V

    .line 142
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput p1, p0, Lcom/etermax/widget/colorpicker/ColorPanelView;->c:I

    .line 122
    invoke-virtual {p0}, Lcom/etermax/widget/colorpicker/ColorPanelView;->invalidate()V

    .line 123
    return-void
.end method
