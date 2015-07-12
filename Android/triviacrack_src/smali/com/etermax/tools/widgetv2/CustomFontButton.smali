.class public Lcom/etermax/tools/widgetv2/CustomFontButton;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->i:I

    .line 38
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->h:I

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widgetv2/CustomFontButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->i:I

    .line 45
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->h:I

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widgetv2/CustomFontButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->a:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->h:I

    iget v2, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->d:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->i:I

    iget v4, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->e:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/etermax/tools/widgetv2/CustomFontButton;->setPadding(IIII)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->h:I

    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->i:I

    iget v4, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->d:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/etermax/tools/widgetv2/CustomFontButton;->setPadding(IIII)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    sget-object v0, Lcom/etermax/q;->TextViewFont:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->a:Z

    .line 53
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->d:I

    .line 54
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->e:I

    .line 56
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->b:I

    .line 57
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->c:I

    .line 59
    iget v2, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->b:I

    if-eqz v2, :cond_0

    .line 60
    iput-boolean v3, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->a:Z

    .line 61
    iget v2, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->b:I

    invoke-virtual {p0, v2}, Lcom/etermax/tools/widgetv2/CustomFontButton;->setBackgroundResource(I)V

    .line 64
    :cond_0
    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {p0, p1, v1}, Lcom/etermax/tools/widgetv2/CustomFontButton;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 68
    :cond_1
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->f:Z

    .line 70
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->g:Z

    .line 72
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/tools/widgetv2/CustomFontButton;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    invoke-direct {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->a()V

    .line 76
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 8
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 130
    if-gtz p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const/high16 v2, 0x43a0

    .line 136
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 137
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 139
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->getPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    .line 141
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 142
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float v1, v5

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    move v0, v3

    .line 146
    :goto_1
    sub-float v1, v2, v0

    const/high16 v6, 0x3f00

    cmpl-float v1, v1, v6

    if-lez v1, :cond_3

    .line 147
    add-float v1, v2, v0

    div-float/2addr v1, v3

    .line 148
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 149
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 150
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->getText()Ljava/lang/CharSequence;

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

    .line 154
    goto :goto_1

    :cond_2
    move v0, v1

    move v1, v2

    .line 153
    goto :goto_2

    .line 156
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->setTextSize(IF)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-static {p1, p2}, Lcom/etermax/tools/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 108
    invoke-direct {p0}, Lcom/etermax/tools/widgetv2/CustomFontButton;->a()V

    .line 109
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    .line 163
    iget-boolean v0, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->g:Z

    if-eqz v0, :cond_0

    if-eq p1, p3, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lcom/etermax/tools/widgetv2/CustomFontButton;->a(I)V

    .line 166
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 94
    iget v1, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->c:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->b:I

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 96
    iget v1, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->c:I

    invoke-virtual {p0, v1}, Lcom/etermax/tools/widgetv2/CustomFontButton;->setBackgroundResource(I)V

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 97
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

    .line 98
    :cond_2
    iget v1, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->b:I

    invoke-virtual {p0, v1}, Lcom/etermax/tools/widgetv2/CustomFontButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/etermax/tools/widgetv2/CustomFontButton;->f:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 126
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 127
    return-void
.end method
