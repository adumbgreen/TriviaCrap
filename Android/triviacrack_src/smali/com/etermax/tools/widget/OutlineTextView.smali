.class public Lcom/etermax/tools/widget/OutlineTextView;
.super Lcom/etermax/tools/widget/CustomFontTextView;
.source "SourceFile"


# instance fields
.field private a:Landroid/text/TextPaint;

.field private b:Landroid/text/TextPaint;

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:Z

.field private i:F

.field private j:F

.field private k:F

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/high16 v2, -0x100

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widget/CustomFontTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    const/16 v0, 0xf

    iput v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->c:I

    .line 121
    iput v2, p0, Lcom/etermax/tools/widget/OutlineTextView;->d:I

    .line 122
    iput v2, p0, Lcom/etermax/tools/widget/OutlineTextView;->e:I

    .line 123
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->f:F

    .line 124
    iput v1, p0, Lcom/etermax/tools/widget/OutlineTextView;->g:F

    .line 125
    iput-boolean v3, p0, Lcom/etermax/tools/widget/OutlineTextView;->h:Z

    .line 127
    iput v1, p0, Lcom/etermax/tools/widget/OutlineTextView;->i:F

    .line 128
    iput v1, p0, Lcom/etermax/tools/widget/OutlineTextView;->j:F

    .line 129
    iput v1, p0, Lcom/etermax/tools/widget/OutlineTextView;->k:F

    .line 130
    iput v2, p0, Lcom/etermax/tools/widget/OutlineTextView;->l:I

    .line 23
    sget-object v0, Lcom/etermax/q;->OutlineTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 24
    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/tools/widget/OutlineTextView;->c:I

    .line 25
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/tools/widget/OutlineTextView;->d:I

    .line 26
    iget v1, p0, Lcom/etermax/tools/widget/OutlineTextView;->e:I

    invoke-static {p1, v0, v1}, Lcom/etermax/tools/widget/OutlineTextView;->getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->e:I

    .line 28
    invoke-direct {p0}, Lcom/etermax/tools/widget/OutlineTextView;->a()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, -0x100

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/tools/widget/CustomFontTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    const/16 v0, 0xf

    iput v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->c:I

    .line 121
    iput v2, p0, Lcom/etermax/tools/widget/OutlineTextView;->d:I

    .line 122
    iput v2, p0, Lcom/etermax/tools/widget/OutlineTextView;->e:I

    .line 123
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->f:F

    .line 124
    iput v1, p0, Lcom/etermax/tools/widget/OutlineTextView;->g:F

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->h:Z

    .line 127
    iput v1, p0, Lcom/etermax/tools/widget/OutlineTextView;->i:F

    .line 128
    iput v1, p0, Lcom/etermax/tools/widget/OutlineTextView;->j:F

    .line 129
    iput v1, p0, Lcom/etermax/tools/widget/OutlineTextView;->k:F

    .line 130
    iput v2, p0, Lcom/etermax/tools/widget/OutlineTextView;->l:I

    .line 33
    invoke-direct {p0}, Lcom/etermax/tools/widget/OutlineTextView;->a()V

    .line 34
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 37
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->a:Landroid/text/TextPaint;

    .line 38
    iget-object v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 39
    iget-object v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->a:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 40
    iget-object v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->a:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 41
    iget-object v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->a:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->a:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 44
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->b:Landroid/text/TextPaint;

    .line 45
    iget-object v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->b:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 46
    iget-object v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->b:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 47
    iget-object v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->b:Landroid/text/TextPaint;

    iget v1, p0, Lcom/etermax/tools/widget/OutlineTextView;->d:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->b:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->b:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 50
    iget-object v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->b:Landroid/text/TextPaint;

    iget v1, p0, Lcom/etermax/tools/widget/OutlineTextView;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 51
    iget-object v0, p0, Lcom/etermax/tools/widget/OutlineTextView;->b:Landroid/text/TextPaint;

    iget v1, p0, Lcom/etermax/tools/widget/OutlineTextView;->k:F

    iget v2, p0, Lcom/etermax/tools/widget/OutlineTextView;->i:F

    iget v3, p0, Lcom/etermax/tools/widget/OutlineTextView;->j:F

    iget v4, p0, Lcom/etermax/tools/widget/OutlineTextView;->l:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 52
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lcom/etermax/tools/widget/OutlineTextView;->c:I

    .line 76
    iput p2, p0, Lcom/etermax/tools/widget/OutlineTextView;->d:I

    .line 77
    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->requestLayout()V

    .line 78
    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->invalidate()V

    .line 79
    invoke-direct {p0}, Lcom/etermax/tools/widget/OutlineTextView;->a()V

    .line 80
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    .line 108
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/tools/widget/OutlineTextView;->b:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->getWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/etermax/tools/widget/OutlineTextView;->f:F

    iget v6, p0, Lcom/etermax/tools/widget/OutlineTextView;->g:F

    iget-boolean v7, p0, Lcom/etermax/tools/widget/OutlineTextView;->h:Z

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 111
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 112
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/tools/widget/OutlineTextView;->a:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->getWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/etermax/tools/widget/OutlineTextView;->f:F

    iget v6, p0, Lcom/etermax/tools/widget/OutlineTextView;->g:F

    iget-boolean v7, p0, Lcom/etermax/tools/widget/OutlineTextView;->h:Z

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 115
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 116
    return-void
.end method

.method public setShadowLayer(FFFI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput p1, p0, Lcom/etermax/tools/widget/OutlineTextView;->k:F

    .line 84
    iput p2, p0, Lcom/etermax/tools/widget/OutlineTextView;->i:F

    .line 85
    iput p3, p0, Lcom/etermax/tools/widget/OutlineTextView;->j:F

    .line 86
    iput p4, p0, Lcom/etermax/tools/widget/OutlineTextView;->l:I

    .line 87
    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->requestLayout()V

    .line 88
    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->invalidate()V

    .line 89
    invoke-direct {p0}, Lcom/etermax/tools/widget/OutlineTextView;->a()V

    .line 90
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->requestLayout()V

    .line 57
    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->invalidate()V

    .line 58
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/CustomFontTextView;->setTextColor(I)V

    .line 69
    iput p1, p0, Lcom/etermax/tools/widget/OutlineTextView;->e:I

    .line 70
    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->invalidate()V

    .line 71
    invoke-direct {p0}, Lcom/etermax/tools/widget/OutlineTextView;->a()V

    .line 72
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/CustomFontTextView;->setTextSize(F)V

    .line 62
    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->requestLayout()V

    .line 63
    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->invalidate()V

    .line 64
    invoke-direct {p0}, Lcom/etermax/tools/widget/OutlineTextView;->a()V

    .line 65
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->requestLayout()V

    .line 102
    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->invalidate()V

    .line 103
    invoke-direct {p0}, Lcom/etermax/tools/widget/OutlineTextView;->a()V

    .line 104
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/widget/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 94
    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->requestLayout()V

    .line 95
    invoke-virtual {p0}, Lcom/etermax/tools/widget/OutlineTextView;->invalidate()V

    .line 96
    invoke-direct {p0}, Lcom/etermax/tools/widget/OutlineTextView;->a()V

    .line 97
    return-void
.end method
