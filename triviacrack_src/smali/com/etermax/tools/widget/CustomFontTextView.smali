.class public Lcom/etermax/tools/widget/CustomFontTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widget/CustomFontTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widget/CustomFontTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 41
    sget-object v0, Lcom/etermax/q;->TextViewFont:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p0, p1, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 48
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/tools/widget/CustomFontTextView;->c:Z

    .line 49
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/tools/widget/CustomFontTextView;->a:I

    .line 50
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/tools/widget/CustomFontTextView;->b:Z

    .line 51
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widget/CustomFontTextView;->d:F

    .line 56
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/high16 v3, 0x4000

    .line 103
    if-gtz p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget v2, p0, Lcom/etermax/tools/widget/CustomFontTextView;->d:F

    .line 109
    iget v0, p0, Lcom/etermax/tools/widget/CustomFontTextView;->d:F

    invoke-virtual {p0, v8, v0}, Lcom/etermax/tools/widget/CustomFontTextView;->setTextSize(IF)V

    .line 111
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 112
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 114
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontTextView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontTextView;->getPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    .line 116
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 117
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float v1, v5

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    move v0, v3

    .line 121
    :goto_1
    sub-float v1, v2, v0

    const/high16 v6, 0x3f00

    cmpl-float v1, v1, v6

    if-lez v1, :cond_3

    .line 122
    add-float v1, v2, v0

    div-float/2addr v1, v3

    .line 123
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 124
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 125
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    int-to-float v7, v5

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    :goto_2
    move v2, v1

    .line 129
    goto :goto_1

    :cond_2
    move v0, v1

    move v1, v2

    .line 128
    goto :goto_2

    .line 131
    :cond_3
    invoke-virtual {p0, v8, v0}, Lcom/etermax/tools/widget/CustomFontTextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-static {p1, p2}, Lcom/etermax/tools/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/CustomFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 83
    iget v0, p0, Lcom/etermax/tools/widget/CustomFontTextView;->a:I

    if-nez v0, :cond_0

    .line 84
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 94
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontTextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 90
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 91
    iget v2, p0, Lcom/etermax/tools/widget/CustomFontTextView;->a:I

    int-to-float v2, v2

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 92
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 138
    iget-boolean v0, p0, Lcom/etermax/tools/widget/CustomFontTextView;->c:Z

    if-eqz v0, :cond_0

    if-eq p1, p3, :cond_0

    .line 139
    invoke-virtual {p0, p1}, Lcom/etermax/tools/widget/CustomFontTextView;->a(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public setAngle(I)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput p1, p0, Lcom/etermax/tools/widget/CustomFontTextView;->a:I

    .line 98
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/etermax/tools/widget/CustomFontTextView;->b:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 68
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 70
    iget-boolean v0, p0, Lcom/etermax/tools/widget/CustomFontTextView;->c:Z

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/CustomFontTextView;->a(I)V

    .line 73
    :cond_1
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    return-void
.end method
