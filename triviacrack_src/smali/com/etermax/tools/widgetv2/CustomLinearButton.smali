.class public Lcom/etermax/tools/widgetv2/CustomLinearButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Z

.field private e:I

.field private f:I

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->h:I

    .line 33
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->g:I

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->a:Z

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->g:I

    iget v2, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->e:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->h:I

    iget v4, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->f:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setPadding(IIII)V

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->g:I

    invoke-virtual {p0}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->h:I

    iget v4, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->e:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setPadding(IIII)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 39
    sget-object v0, Lcom/etermax/q;->TextViewFont:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->a:Z

    .line 42
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->b:Landroid/graphics/drawable/Drawable;

    .line 43
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->c:Landroid/graphics/drawable/Drawable;

    .line 44
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->d:Z

    .line 45
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->e:I

    .line 46
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->f:I

    .line 48
    iget-object v1, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 49
    iput-boolean v3, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->a:Z

    .line 50
    iget-object v1, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-direct {p0}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->a()V

    .line 56
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 77
    invoke-direct {p0}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->a()V

    .line 78
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->d:Z

    if-eqz v0, :cond_1

    .line 101
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 102
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 103
    if-le v0, v1, :cond_0

    if-lez v1, :cond_0

    .line 104
    :goto_0
    invoke-super {p0, p2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 108
    :goto_1
    return-void

    :cond_0
    move p2, p1

    .line 103
    goto :goto_0

    .line 106
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 66
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

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/etermax/tools/widgetv2/CustomLinearButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIs3D(Z)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/etermax/tools/widgetv2/CustomLinearButton;->a:Z

    .line 96
    return-void
.end method
