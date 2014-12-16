.class public final Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;
.super Lcom/lifestreet/android/lsmsdk/ads/AbstractAdActivity;
.source "SourceFile"

# interfaces
.implements Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;


# static fields
.field public static final CATEGORY_MRAID:Ljava/lang/String; = "com.lifestreet.category.MRAID"


# instance fields
.field private mAdView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/ads/AbstractAdActivity;-><init>()V

    return-void
.end method

.method private onEvent(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    const-string v0, "com.lifestreet.category.MRAID"

    invoke-virtual {p0, p1, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    const-class v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;

    const-string v1, "lifestreet_mraid_ad"

    const-string v2, "html"

    invoke-static {p0, p2, v1, v2}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->saveToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->startActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public onClick(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    const-string v0, "com.lifestreet.action.CLICK"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->onEvent(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onClose(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onClose"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->finish()V

    .line 88
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 29
    invoke-super {p0, p1}, Lcom/lifestreet/android/lsmsdk/ads/AbstractAdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const-string v0, "com.lifestreet.action.PRESENT_SCREEN"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->onEvent(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    invoke-direct {v0, p0, v2, v2, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;-><init>(Landroid/app/Activity;IILcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->mAdView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    .line 35
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->mAdView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    invoke-virtual {v0, p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->setListener(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;)V

    .line 36
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->mAdView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->setContentView(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.lifestreet.BaseUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.lifestreet.HtmlPath"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->mAdView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    invoke-virtual {p0, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->readFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->loadHTML(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->mAdView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->mAdView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->destroy()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->mAdView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    .line 52
    :cond_0
    const-string v0, "com.lifestreet.action.DISMISS_SCREEN"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->onEvent(Ljava/lang/String;)V

    .line 54
    invoke-super {p0}, Lcom/lifestreet/android/lsmsdk/ads/AbstractAdActivity;->onDestroy()V

    .line 55
    return-void
.end method

.method public onExpand(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Impossible to expand interstitial ad"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onFailedToReceiveAd"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->finish()V

    .line 66
    return-void
.end method

.method public onLeaveApplication(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    const-string v0, "com.lifestreet.action.LEAVE_APPLICATION"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->onEvent(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->finish()V

    .line 72
    return-void
.end method

.method public onReceiveAd(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onReceiveAd"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 60
    return-void
.end method
