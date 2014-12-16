.class Lcom/mopub/nativeads/ag;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/ProgressBar;

.field private b:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 21
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 24
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 25
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/ag;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/ag;->setVisibility(I)V

    .line 28
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/ag;->setBackgroundColor(I)V

    .line 29
    invoke-virtual {p0}, Lcom/mopub/nativeads/ag;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 31
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/nativeads/ag;->a:Landroid/widget/ProgressBar;

    .line 32
    const/high16 v0, 0x41c8

    invoke-virtual {p0}, Lcom/mopub/nativeads/ag;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ag;->b:I

    .line 33
    iget-object v0, p0, Lcom/mopub/nativeads/ag;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 34
    iget-object v0, p0, Lcom/mopub/nativeads/ag;->a:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/ag;->addView(Landroid/view/View;)V

    .line 35
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 74
    invoke-static {p0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 75
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/ag;->setVisibility(I)V

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method a(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 53
    if-nez p1, :cond_0

    move v0, v2

    .line 70
    :goto_0
    return v0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 60
    check-cast v0, Landroid/view/ViewGroup;

    .line 62
    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/ag;->setVisibility(I)V

    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/mopub/nativeads/ag;->setMeasuredDimension(II)V

    .line 65
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    invoke-virtual {p0}, Lcom/mopub/nativeads/ag;->forceLayout()V

    .line 67
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 70
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    add-int v0, p2, p4

    div-int/lit8 v0, v0, 0x2

    .line 41
    add-int v1, p3, p5

    div-int/lit8 v1, v1, 0x2

    .line 42
    iget-object v2, p0, Lcom/mopub/nativeads/ag;->a:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/mopub/nativeads/ag;->b:I

    sub-int v3, v0, v3

    iget v4, p0, Lcom/mopub/nativeads/ag;->b:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/mopub/nativeads/ag;->b:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/mopub/nativeads/ag;->b:I

    add-int/2addr v1, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 50
    :cond_0
    return-void
.end method
