.class public Lcom/etermax/tools/widget/CustomLinearButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected a:Landroid/graphics/drawable/Drawable;

.field protected b:Landroid/graphics/drawable/Drawable;

.field private c:Z

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widget/CustomLinearButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x0

    .line 33
    sget-object v0, Lcom/etermax/q;->TextViewFont:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/tools/widget/CustomLinearButton;->c:Z

    .line 36
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/tools/widget/CustomLinearButton;->a:Landroid/graphics/drawable/Drawable;

    .line 37
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/tools/widget/CustomLinearButton;->b:Landroid/graphics/drawable/Drawable;

    .line 38
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/tools/widget/CustomLinearButton;->e:Z

    .line 40
    iget-object v1, p0, Lcom/etermax/tools/widget/CustomLinearButton;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 41
    iput-boolean v4, p0, Lcom/etermax/tools/widget/CustomLinearButton;->c:Z

    .line 42
    iget-object v1, p0, Lcom/etermax/tools/widget/CustomLinearButton;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/etermax/tools/widget/CustomLinearButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    :cond_0
    iget-boolean v1, p0, Lcom/etermax/tools/widget/CustomLinearButton;->c:Z

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomLinearButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/etermax/tools/widget/CustomLinearButton;->a(ILandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/etermax/tools/widget/CustomLinearButton;->d:I

    .line 48
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomLinearButton;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomLinearButton;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/etermax/tools/widget/CustomLinearButton;->d:I

    invoke-virtual {p0, v1, v4, v2, v3}, Lcom/etermax/tools/widget/CustomLinearButton;->setPadding(IIII)V

    .line 51
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Context;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 84
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

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 74
    iget-boolean v0, p0, Lcom/etermax/tools/widget/CustomLinearButton;->c:Z

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomLinearButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomLinearButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomLinearButton;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/etermax/tools/widget/CustomLinearButton;->d:I

    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomLinearButton;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/etermax/tools/widget/CustomLinearButton;->setPadding(IIII)V

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomLinearButton;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomLinearButton;->getPaddingRight()I

    move-result v1

    iget v2, p0, Lcom/etermax/tools/widget/CustomLinearButton;->d:I

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/etermax/tools/widget/CustomLinearButton;->setPadding(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/etermax/tools/widget/CustomLinearButton;->e:Z

    if-eqz v0, :cond_1

    .line 94
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 95
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 96
    if-le v0, v1, :cond_0

    if-lez v1, :cond_0

    .line 97
    :goto_0
    invoke-super {p0, p2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 101
    :goto_1
    return-void

    :cond_0
    move p2, p1

    .line 96
    goto :goto_0

    .line 99
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/etermax/tools/widget/CustomLinearButton;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/tools/widget/CustomLinearButton;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/etermax/tools/widget/CustomLinearButton;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/etermax/tools/widget/CustomLinearButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 62
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

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/etermax/tools/widget/CustomLinearButton;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/etermax/tools/widget/CustomLinearButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIs3D(Z)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/etermax/tools/widget/CustomLinearButton;->c:Z

    .line 89
    return-void
.end method
