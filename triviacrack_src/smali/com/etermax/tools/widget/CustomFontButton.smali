.class public Lcom/etermax/tools/widget/CustomFontButton;
.super Landroid/widget/Button;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widget/CustomFontButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widget/CustomFontButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private a(ILandroid/content/Context;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    sget-object v0, Lcom/etermax/q;->TextViewFont:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/etermax/tools/widget/CustomFontButton;->a:Z

    .line 46
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/etermax/tools/widget/CustomFontButton;->c:I

    .line 47
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/etermax/tools/widget/CustomFontButton;->d:I

    .line 49
    iget v2, p0, Lcom/etermax/tools/widget/CustomFontButton;->c:I

    if-eqz v2, :cond_0

    .line 50
    iput-boolean v5, p0, Lcom/etermax/tools/widget/CustomFontButton;->a:Z

    .line 51
    iget v2, p0, Lcom/etermax/tools/widget/CustomFontButton;->c:I

    invoke-virtual {p0, v2}, Lcom/etermax/tools/widget/CustomFontButton;->setBackgroundResource(I)V

    .line 54
    :cond_0
    iget-boolean v2, p0, Lcom/etermax/tools/widget/CustomFontButton;->a:Z

    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/etermax/tools/widget/CustomFontButton;->a(ILandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/etermax/tools/widget/CustomFontButton;->b:I

    .line 57
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontButton;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontButton;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/etermax/tools/widget/CustomFontButton;->b:I

    invoke-virtual {p0, v2, v5, v3, v4}, Lcom/etermax/tools/widget/CustomFontButton;->setPadding(IIII)V

    .line 60
    :cond_1
    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p0, p1, v1}, Lcom/etermax/tools/widget/CustomFontButton;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 64
    :cond_2
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/tools/widget/CustomFontButton;->e:Z

    .line 66
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/tools/widget/CustomFontButton;->f:Z

    .line 68
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/tools/widget/CustomFontButton;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 8
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 124
    if-gtz p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const/high16 v2, 0x43a0

    .line 130
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 131
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 133
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontButton;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontButton;->getPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    .line 135
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontButton;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 136
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float v1, v5

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    move v0, v3

    .line 140
    :goto_1
    sub-float v1, v2, v0

    const/high16 v6, 0x3f00

    cmpl-float v1, v1, v6

    if-lez v1, :cond_3

    .line 141
    add-float v1, v2, v0

    div-float/2addr v1, v3

    .line 142
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 143
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontButton;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 144
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontButton;->getText()Ljava/lang/CharSequence;

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

    .line 148
    goto :goto_1

    :cond_2
    move v0, v1

    move v1, v2

    .line 147
    goto :goto_2

    .line 150
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/etermax/tools/widget/CustomFontButton;->setTextSize(IF)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/etermax/tools/widget/CustomFontButton;->c:I

    .line 74
    iput p2, p0, Lcom/etermax/tools/widget/CustomFontButton;->d:I

    .line 75
    invoke-virtual {p0, p1}, Lcom/etermax/tools/widget/CustomFontButton;->setBackgroundResource(I)V

    .line 76
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-static {p1, p2}, Lcom/etermax/tools/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/CustomFontButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 102
    iget-boolean v0, p0, Lcom/etermax/tools/widget/CustomFontButton;->a:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontButton;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/etermax/tools/widget/CustomFontButton;->b:I

    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontButton;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/etermax/tools/widget/CustomFontButton;->setPadding(IIII)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontButton;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomFontButton;->getPaddingRight()I

    move-result v1

    iget v2, p0, Lcom/etermax/tools/widget/CustomFontButton;->b:I

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/etermax/tools/widget/CustomFontButton;->setPadding(IIII)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    .line 157
    iget-boolean v0, p0, Lcom/etermax/tools/widget/CustomFontButton;->f:Z

    if-eqz v0, :cond_0

    if-eq p1, p3, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lcom/etermax/tools/widget/CustomFontButton;->a(I)V

    .line 160
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 88
    iget v1, p0, Lcom/etermax/tools/widget/CustomFontButton;->d:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/etermax/tools/widget/CustomFontButton;->c:I

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 90
    iget v1, p0, Lcom/etermax/tools/widget/CustomFontButton;->d:I

    invoke-virtual {p0, v1}, Lcom/etermax/tools/widget/CustomFontButton;->setBackgroundResource(I)V

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 92
    :cond_2
    iget v1, p0, Lcom/etermax/tools/widget/CustomFontButton;->c:I

    invoke-virtual {p0, v1}, Lcom/etermax/tools/widget/CustomFontButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/etermax/tools/widget/CustomFontButton;->e:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 116
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 117
    return-void
.end method
