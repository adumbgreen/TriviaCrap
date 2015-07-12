.class public final Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lifestreet/android/lsmsdk/BannerAdapter;
.implements Lcom/lifestreet/android/lsmsdk/ads/AdListener;


# annotations
.annotation runtime Lcom/lifestreet/android/lsmsdk/annotations/NetworkAdapter;
    name = "LSM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
        "<",
        "Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;",
        ">;",
        "Lcom/lifestreet/android/lsmsdk/ads/AdListener;"
    }
.end annotation


# instance fields
.field private mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

.field private mContainerView:Landroid/widget/FrameLayout;

.field private mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createAdView(Landroid/content/Context;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;)Lcom/lifestreet/android/lsmsdk/ads/AdView;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 63
    new-instance v1, Lcom/lifestreet/android/lsmsdk/ads/AdView;

    invoke-direct {v1, p1}, Lcom/lifestreet/android/lsmsdk/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/lifestreet/android/lsmsdk/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    invoke-virtual {v1, p0}, Lcom/lifestreet/android/lsmsdk/ads/AdView;->setListener(Lcom/lifestreet/android/lsmsdk/ads/AdListener;)V

    .line 68
    invoke-virtual {p2}, Lcom/lifestreet/android/lsmsdk/SlotContext;->isShowBannerCloseButton()Z

    move-result v0

    .line 69
    iget-object v2, p3, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->showCloseButton:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 70
    const-string v2, "true"

    iget-object v3, p3, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->showCloseButton:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    const/4 v0, 0x1

    .line 77
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/lifestreet/android/lsmsdk/ads/AdView;->showCloseButton(Z)V

    .line 79
    return-object v1

    .line 72
    :cond_1
    const-string v2, "false"

    iget-object v3, p3, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->showCloseButton:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createContainerView(Landroid/content/Context;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/ads/AdView;)Landroid/widget/FrameLayout;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-virtual {p2}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getWidthInDips()I

    move-result v0

    .line 84
    invoke-virtual {p2}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getHeightInDips()I

    move-result v1

    .line 86
    invoke-static {v0, v1}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->findAdSizeThatFits(II)Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    move-result-object v2

    .line 88
    sget-object v3, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slot size is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calculated best size for slot: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 92
    invoke-virtual {v2}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v0}, Lcom/lifestreet/android/lsmsdk/commons/Utils;->convertDipsToPixels(FLandroid/util/DisplayMetrics;)I

    move-result v1

    .line 93
    invoke-virtual {v2}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2, v0}, Lcom/lifestreet/android/lsmsdk/commons/Utils;->convertDipsToPixels(FLandroid/util/DisplayMetrics;)I

    move-result v0

    .line 95
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 96
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public getBannerAd(Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "getBannerAd"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    .line 38
    invoke-virtual {p2}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;

    const-string v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    const-string v1, "nobid"

    iget-object v2, p3, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->html:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onFailedToReceiveAd(Landroid/view/View;)V

    .line 55
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    invoke-direct {p0, v0, p2, p3}, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->createAdView(Landroid/content/Context;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;)Lcom/lifestreet/android/lsmsdk/ads/AdView;

    move-result-object v1

    iput-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    .line 49
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    invoke-direct {p0, v0, p2, v1}, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->createContainerView(Landroid/content/Context;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/ads/AdView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mContainerView:Landroid/widget/FrameLayout;

    .line 51
    iget-object v0, p3, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->baseUrl:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getSlotUrl()Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_1
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    iget-object v2, p3, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->html:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/lifestreet/android/lsmsdk/ads/AdView;->loadHtmlWithBaseURL(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_3
    iget-object v0, p3, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->baseUrl:Ljava/lang/String;

    goto :goto_1
.end method

.method public bridge synthetic getBannerAd(Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    check-cast p3, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->getBannerAd(Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;)V

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
    .line 59
    const-class v0, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    return-object v0
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mContainerView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onClick(Landroid/view/View;)V

    .line 183
    :cond_0
    return-void
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 187
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onClose"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mContainerView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onClose(Landroid/view/View;)V

    .line 192
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 109
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    .line 111
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mContainerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 113
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mContainerView:Landroid/widget/FrameLayout;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdView;->destroy()V

    .line 118
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    .line 120
    :cond_1
    return-void
.end method

.method public onDismissScreen(Lcom/lifestreet/android/lsmsdk/ads/AdView;)V
    .locals 2
    .parameter

    .prologue
    .line 169
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onDismissScreen"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mContainerView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onDismissScreen(Landroid/view/View;)V

    .line 174
    :cond_0
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/lifestreet/android/lsmsdk/ads/AdView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 142
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

    .line 144
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mContainerView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onFailedToReceiveAd(Landroid/view/View;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onLeaveApplication(Lcom/lifestreet/android/lsmsdk/ads/AdView;)V
    .locals 2
    .parameter

    .prologue
    .line 151
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onLeaveApplication"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mContainerView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onLeaveApplication(Landroid/view/View;)V

    .line 156
    :cond_0
    return-void
.end method

.method public onNotResponding()V
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onNotResponding"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mContainerView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onFailedToReceiveAd(Landroid/view/View;)V

    .line 129
    :cond_0
    return-void
.end method

.method public onPresentScreen(Lcom/lifestreet/android/lsmsdk/ads/AdView;)V
    .locals 2
    .parameter

    .prologue
    .line 160
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onPresentScreen"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mContainerView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onPresentScreen(Landroid/view/View;)V

    .line 165
    :cond_0
    return-void
.end method

.method public onReceiveAd(Lcom/lifestreet/android/lsmsdk/ads/AdView;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onReceiveAd"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;->mContainerView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onReceiveAd(Landroid/view/View;)V

    .line 138
    :cond_0
    return-void
.end method
