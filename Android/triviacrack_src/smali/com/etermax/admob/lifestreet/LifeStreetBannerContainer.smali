.class public Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;
.super Lcom/etermax/admob/lifestreet/BaseLifeStreetContainer;
.source "SourceFile"


# instance fields
.field mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

.field mSlotView:Lcom/lifestreet/android/lsmsdk/SlotView;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 20
    invoke-direct {p0}, Lcom/etermax/admob/lifestreet/BaseLifeStreetContainer;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    .line 23
    new-instance v0, Lcom/lifestreet/android/lsmsdk/SlotView;

    invoke-direct {v0, p2}, Lcom/lifestreet/android/lsmsdk/SlotView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mSlotView:Lcom/lifestreet/android/lsmsdk/SlotView;

    .line 24
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mSlotView:Lcom/lifestreet/android/lsmsdk/SlotView;

    invoke-virtual {v0, p3}, Lcom/lifestreet/android/lsmsdk/SlotView;->setSlotTag(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mSlotView:Lcom/lifestreet/android/lsmsdk/SlotView;

    invoke-virtual {v0, v8}, Lcom/lifestreet/android/lsmsdk/SlotView;->setAutoRefreshEnabled(Z)V

    .line 26
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mSlotView:Lcom/lifestreet/android/lsmsdk/SlotView;

    invoke-virtual {v0, p0}, Lcom/lifestreet/android/lsmsdk/SlotView;->setListener(Lcom/lifestreet/android/lsmsdk/SlotListener;)V

    .line 27
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mSlotView:Lcom/lifestreet/android/lsmsdk/SlotView;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/IntegrationType;->ADMOB:Lcom/lifestreet/android/lsmsdk/IntegrationType;

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotView;->setIntegrationType(Lcom/lifestreet/android/lsmsdk/IntegrationType;)V

    .line 28
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mSlotView:Lcom/lifestreet/android/lsmsdk/SlotView;

    invoke-virtual {p0, p5}, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->newSlotTargetingInstance(Lcom/google/ads/mediation/MediationAdRequest;)Lcom/lifestreet/android/lsmsdk/SlotTargeting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotView;->setTargeting(Lcom/lifestreet/android/lsmsdk/SlotTargeting;)V

    .line 30
    new-instance v0, Lcom/google/ads/AdSize;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_1024x768:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getWidth()I

    move-result v1

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_1024x768:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    invoke-virtual {v2}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/ads/AdSize;-><init>(II)V

    .line 31
    new-instance v1, Lcom/google/ads/AdSize;

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_768x1024:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    invoke-virtual {v2}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getWidth()I

    move-result v2

    sget-object v3, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_768x1024:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    invoke-virtual {v3}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSize;-><init>(II)V

    .line 32
    new-instance v2, Lcom/google/ads/AdSize;

    sget-object v3, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_728x90:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    invoke-virtual {v3}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getWidth()I

    move-result v3

    sget-object v4, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_728x90:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    invoke-virtual {v4}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/ads/AdSize;-><init>(II)V

    .line 33
    new-instance v3, Lcom/google/ads/AdSize;

    sget-object v4, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_320x480:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    invoke-virtual {v4}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getWidth()I

    move-result v4

    sget-object v5, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_320x480:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    invoke-virtual {v5}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/google/ads/AdSize;-><init>(II)V

    .line 34
    new-instance v4, Lcom/google/ads/AdSize;

    sget-object v5, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_300x250:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    invoke-virtual {v5}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getWidth()I

    move-result v5

    sget-object v6, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_300x250:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    invoke-virtual {v6}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/google/ads/AdSize;-><init>(II)V

    .line 35
    new-instance v5, Lcom/google/ads/AdSize;

    sget-object v6, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_320x50:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    invoke-virtual {v6}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getWidth()I

    move-result v6

    sget-object v7, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_320x50:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    invoke-virtual {v7}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/google/ads/AdSize;-><init>(II)V

    .line 37
    if-eqz p4, :cond_0

    .line 38
    const/4 v6, 0x6

    new-array v6, v6, [Lcom/google/ads/AdSize;

    aput-object v0, v6, v8

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    aput-object v2, v6, v7

    const/4 v7, 0x3

    aput-object v3, v6, v7

    const/4 v7, 0x4

    aput-object v4, v6, v7

    const/4 v7, 0x5

    aput-object v5, v6, v7

    invoke-virtual {p4, v6}, Lcom/google/ads/AdSize;->findBestSize([Lcom/google/ads/AdSize;)Lcom/google/ads/AdSize;

    move-result-object v6

    .line 40
    if-ne v6, v0, :cond_1

    .line 41
    sget-object v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_1024x768:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    .line 64
    :goto_0
    if-eqz v0, :cond_7

    .line 65
    iget-object v1, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mSlotView:Lcom/lifestreet/android/lsmsdk/SlotView;

    invoke-virtual {v1, v0}, Lcom/lifestreet/android/lsmsdk/SlotView;->setSlotSize(Lcom/lifestreet/android/lsmsdk/ads/AdSize;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mSlotView:Lcom/lifestreet/android/lsmsdk/SlotView;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotView;->loadAd()V

    .line 73
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mSlotView:Lcom/lifestreet/android/lsmsdk/SlotView;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotView;->resume()V

    .line 74
    :goto_1
    return-void

    .line 43
    :cond_1
    if-ne v6, v1, :cond_2

    .line 44
    sget-object v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_768x1024:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    goto :goto_0

    .line 46
    :cond_2
    if-ne v6, v2, :cond_3

    .line 47
    sget-object v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_728x90:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    goto :goto_0

    .line 49
    :cond_3
    if-ne v6, v3, :cond_4

    .line 50
    sget-object v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_320x480:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    goto :goto_0

    .line 52
    :cond_4
    if-ne v6, v4, :cond_5

    .line 53
    sget-object v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_300x250:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    goto :goto_0

    .line 55
    :cond_5
    if-ne v6, v5, :cond_6

    .line 56
    sget-object v0, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->SIZE_320x50:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    goto :goto_0

    .line 58
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :cond_7
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mSlotView:Lcom/lifestreet/android/lsmsdk/SlotView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mSlotView:Lcom/lifestreet/android/lsmsdk/SlotView;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotView;->pause()V

    .line 79
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mSlotView:Lcom/lifestreet/android/lsmsdk/SlotView;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotView;->destroy()V

    .line 80
    iput-object v1, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mSlotView:Lcom/lifestreet/android/lsmsdk/SlotView;

    .line 82
    :cond_0
    iput-object v1, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    .line 83
    return-void
.end method

.method public onClick(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onClick()V

    .line 147
    :cond_0
    const-string v0, "admob ads"

    const-string v1, "LifeStreetBannerContainer - onClick"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public onDismissScreen(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onDismissScreen()V

    .line 131
    :cond_0
    const-string v0, "admob ads"

    const-string v1, "LifeStreetBannerContainer - onDismissScreen"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public onFailedToLoadSlotView(Lcom/lifestreet/android/lsmsdk/SlotView;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    .line 91
    :cond_0
    const-string v0, "admob ads"

    const-string v1, "LifeStreetBannerContainer - onFailedToLoadSlotView"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    .line 107
    :cond_0
    const-string v0, "admob ads"

    const-string v1, "LifeStreetBannerContainer - onFailedToReceiveAd"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onFailedToReceiveInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    .line 115
    :cond_0
    const-string v0, "admob ads"

    const-string v1, "LifeStreetBannerContainer - onFailedToReceiveInterstitialAd"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onLeaveApplication(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onLeaveApplication()V

    .line 139
    :cond_0
    const-string v0, "admob ads"

    const-string v1, "LifeStreetBannerContainer - onLeaveApplication"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public onPresentScreen(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onPresentScreen()V

    .line 123
    :cond_0
    const-string v0, "admob ads"

    const-string v1, "LifeStreetBannerContainer - onPresentScreen"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public onReceiveAd(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    iget-object v1, p0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->mSlotView:Lcom/lifestreet/android/lsmsdk/SlotView;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onReceivedAd(Landroid/view/View;)V

    .line 99
    :cond_0
    const-string v0, "admob ads"

    const-string v1, "LifeStreetBannerContainer - onReceiveAd"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
