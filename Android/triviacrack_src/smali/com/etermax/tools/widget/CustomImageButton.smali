.class public Lcom/etermax/tools/widget/CustomImageButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomImageButton;->a()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomImageButton;->a()V

    .line 24
    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Context;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 44
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

.method a()V
    .locals 4

    .prologue
    .line 27
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/tools/widget/CustomImageButton;->a(ILandroid/content/Context;)I

    move-result v0

    .line 28
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomImageButton;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomImageButton;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/etermax/tools/widget/CustomImageButton;->setPadding(IIII)V

    .line 29
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 34
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/tools/widget/CustomImageButton;->a(ILandroid/content/Context;)I

    move-result v0

    .line 35
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/etermax/tools/widget/CustomImageButton;->a(ILandroid/content/Context;)I

    move-result v1

    .line 36
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomImageButton;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomImageButton;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomImageButton;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/etermax/tools/widget/CustomImageButton;->setPadding(IIII)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomImageButton;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/etermax/tools/widget/CustomImageButton;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/etermax/tools/widget/CustomImageButton;->setPadding(IIII)V

    goto :goto_0
.end method
