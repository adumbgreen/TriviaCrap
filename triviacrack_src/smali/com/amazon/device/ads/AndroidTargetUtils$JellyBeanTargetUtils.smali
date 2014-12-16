.class Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanTargetUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideStatusBar(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 435
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 436
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 437
    return-void
.end method

.method public static setBackgroundForLinerLayout(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 417
    return-void
.end method

.method protected static setImageButtonAlpha(Landroid/widget/ImageButton;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    .line 427
    return-void
.end method
