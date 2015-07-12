.class public Lcom/smartadserver/android/library/ui/SASCloseButton;
.super Landroid/widget/ImageView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->a()V

    .line 40
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 43
    sget-object v0, Lcom/smartadserver/android/library/g/a;->a:Landroid/graphics/Bitmap;

    .line 45
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->getCloseButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->getCloseButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    :cond_0
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setBackgroundColor(I)V

    .line 52
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 53
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x3fc0

    div-float/2addr v1, v2

    .line 55
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 57
    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v3, 0x40c0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    .line 59
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v1, v0

    .line 62
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69
    :goto_0
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setPadding(IIII)V

    .line 71
    return-void

    .line 66
    :cond_1
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public a(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 75
    sget-object v0, Lcom/smartadserver/android/library/g/a;->h:Landroid/graphics/Bitmap;

    .line 78
    sget-boolean v1, Lcom/smartadserver/android/library/h/c;->a:Z

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    const/16 v2, 0x80

    const/16 v3, 0xff

    const/16 v4, 0xa5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 82
    :cond_0
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 84
    int-to-float v1, p1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 85
    int-to-float v2, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 86
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 87
    if-nez v2, :cond_1

    .line 88
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 93
    :goto_0
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setPadding(IIII)V

    .line 94
    return-void

    .line 90
    :cond_1
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 91
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method
