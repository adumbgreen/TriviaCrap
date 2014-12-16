.class public final Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;
.super Lcom/lifestreet/android/lsmsdk/ads/AbstractAdActivity;
.source "SourceFile"

# interfaces
.implements Lcom/lifestreet/android/lsmsdk/ads/AdListener;


# static fields
.field public static final CATEGORY_ADS:Ljava/lang/String; = "com.lifestreet.category.ADS"


# instance fields
.field private mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

.field private mLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/ads/AbstractAdActivity;-><init>()V

    return-void
.end method

.method private onEvent(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    const-string v0, "com.lifestreet.category.ADS"

    invoke-virtual {p0, p1, v0}, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;

    const-string v1, "lifestreet_int_ad"

    const-string v2, "html"

    invoke-static {p0, p2, v1, v2}, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->saveToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, p1, v1, p3}, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->startActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 23
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 93
    const-string v0, "com.lifestreet.action.CLICK"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->onEvent(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onClose"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->finish()V

    .line 100
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 27
    invoke-super {p0, p1}, Lcom/lifestreet/android/lsmsdk/ads/AbstractAdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const-string v0, "com.lifestreet.action.PRESENT_SCREEN"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->onEvent(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.lifestreet.ShowCloseButton"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 33
    new-instance v1, Lcom/lifestreet/android/lsmsdk/ads/AdView;

    invoke-direct {v1, p0}, Lcom/lifestreet/android/lsmsdk/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    .line 34
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/lifestreet/android/lsmsdk/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    invoke-virtual {v1, p0}, Lcom/lifestreet/android/lsmsdk/ads/AdView;->setListener(Lcom/lifestreet/android/lsmsdk/ads/AdListener;)V

    .line 37
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/lifestreet/android/lsmsdk/ads/AdView;->showCloseButton(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.lifestreet.BaseUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.lifestreet.HtmlPath"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    invoke-virtual {p0, v1}, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->readFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/lifestreet/android/lsmsdk/ads/AdView;->loadHtmlWithBaseURL(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->mLayout:Landroid/widget/FrameLayout;

    .line 45
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->setContentView(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 53
    iput-object v1, p0, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->mLayout:Landroid/widget/FrameLayout;

    .line 55
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdView;->destroy()V

    .line 56
    iput-object v1, p0, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    .line 59
    :cond_0
    const-string v0, "com.lifestreet.action.DISMISS_SCREEN"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->onEvent(Ljava/lang/String;)V

    .line 61
    invoke-super {p0}, Lcom/lifestreet/android/lsmsdk/ads/AbstractAdActivity;->onDestroy()V

    .line 62
    return-void
.end method

.method public onDismissScreen(Lcom/lifestreet/android/lsmsdk/ads/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->finish()V

    .line 88
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/lifestreet/android/lsmsdk/ads/AdView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 71
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailedToReceiveAd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->finish()V

    .line 73
    return-void
.end method

.method public onLeaveApplication(Lcom/lifestreet/android/lsmsdk/ads/AdView;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onLeaveApplication"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 78
    const-string v0, "com.lifestreet.action.LEAVE_APPLICATION"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->onEvent(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onPresentScreen(Lcom/lifestreet/android/lsmsdk/ads/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    return-void
.end method

.method public onReceiveAd(Lcom/lifestreet/android/lsmsdk/ads/AdView;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onReceiveAd"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 67
    return-void
.end method
