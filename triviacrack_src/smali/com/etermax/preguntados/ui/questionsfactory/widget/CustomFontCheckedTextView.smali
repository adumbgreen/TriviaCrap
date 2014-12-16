.class public Lcom/etermax/preguntados/ui/questionsfactory/widget/CustomFontCheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/widget/CustomFontCheckedTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/widget/CustomFontCheckedTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 37
    sget-object v0, Lcom/etermax/q;->TextViewFont:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p0, p1, v1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/CustomFontCheckedTextView;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 44
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/CustomFontCheckedTextView;->c:Z

    .line 45
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/CustomFontCheckedTextView;->a:I

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/CustomFontCheckedTextView;->b:Z

    .line 47
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/CustomFontCheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/CustomFontCheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-static {p1, p2}, Lcom/etermax/tools/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/CustomFontCheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 73
    iget v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/CustomFontCheckedTextView;->a:I

    if-nez v0, :cond_0

    .line 74
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 79
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/CustomFontCheckedTextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 80
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/CustomFontCheckedTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 81
    iget v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/CustomFontCheckedTextView;->a:I

    int-to-float v2, v2

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 82
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public setAngle(I)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/CustomFontCheckedTextView;->a:I

    .line 88
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/CustomFontCheckedTextView;->b:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 62
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 63
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 55
    return-void
.end method
