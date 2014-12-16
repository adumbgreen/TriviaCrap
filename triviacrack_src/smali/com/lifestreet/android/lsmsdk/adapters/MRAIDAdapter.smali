.class public final Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lifestreet/android/lsmsdk/BannerAdapter;
.implements Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;


# annotations
.annotation runtime Lcom/lifestreet/android/lsmsdk/annotations/NetworkAdapter;
    name = "MRAID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
        "<",
        "Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;",
        ">;",
        "Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;"
    }
.end annotation


# instance fields
.field private mAdView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

.field private mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBannerAd(Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "getBannerAd"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    .line 36
    invoke-virtual {p2}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 38
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;

    const-string v1, "Context should be an instance of activity"

    invoke-direct {v0, v1}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    invoke-virtual {p2}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getWidthInDips()I

    move-result v1

    invoke-virtual {p2}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getHeightInDips()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->findAdSizeThatFits(II)Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    move-result-object v1

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 45
    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v2}, Lcom/lifestreet/android/lsmsdk/commons/Utils;->convertDipsToPixels(FLandroid/util/DisplayMetrics;)I

    move-result v3

    .line 46
    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v2}, Lcom/lifestreet/android/lsmsdk/commons/Utils;->convertDipsToPixels(FLandroid/util/DisplayMetrics;)I

    move-result v2

    .line 48
    iget-object v1, p3, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->baseUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getSlotUrl()Ljava/lang/String;

    move-result-object v1

    .line 51
    :goto_0
    new-instance v4, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    check-cast v0, Landroid/app/Activity;

    sget-object v5, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;->INLINE:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    invoke-direct {v4, v0, v3, v2, v5}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;-><init>(Landroid/app/Activity;IILcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;)V

    iput-object v4, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mAdView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    .line 52
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mAdView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    invoke-virtual {v0, p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->setListener(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;)V

    .line 53
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mAdView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    iget-object v2, p3, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->html:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->loadHTML(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 48
    :cond_1
    iget-object v1, p3, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->baseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic getBannerAd(Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    check-cast p3, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->getBannerAd(Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;)V

    return-void
.end method

.method public getParametersClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const-class v0, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    return-object v0
.end method

.method public onClick(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    invoke-interface {v0, p1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onClick(Landroid/view/View;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onClose(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V
    .locals 2
    .parameter

    .prologue
    .line 129
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onClose"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    invoke-interface {v0, p1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onDismissScreen(Landroid/view/View;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 65
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    .line 67
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mAdView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mAdView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->destroy()V

    .line 69
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mAdView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    .line 71
    :cond_0
    return-void
.end method

.method public onExpand(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onExpand"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    invoke-interface {v0, p1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onPresentScreen(Landroid/view/View;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onFailedToReceiveAd"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    invoke-interface {v0, p1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onFailedToReceiveAd(Landroid/view/View;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onLeaveApplication(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onLeaveApplication"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    invoke-interface {v0, p1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onLeaveApplication(Landroid/view/View;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onNotResponding()V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onNotResponding"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mAdView:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onFailedToReceiveAd(Landroid/view/View;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onReceiveAd(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onReceiveAd"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    invoke-interface {v0, p1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onReceiveAd(Landroid/view/View;)V

    .line 89
    :cond_0
    return-void
.end method
