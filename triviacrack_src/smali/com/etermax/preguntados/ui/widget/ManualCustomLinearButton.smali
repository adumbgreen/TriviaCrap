.class public Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;
.super Lcom/etermax/tools/widget/CustomLinearButton;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widget/CustomLinearButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/CustomLinearButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 22
    iget-object v1, p0, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    :cond_0
    :goto_0
    return v0

    .line 23
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

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/widget/ManualCustomLinearButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 0
    .parameter

    .prologue
    .line 43
    return-void
.end method
