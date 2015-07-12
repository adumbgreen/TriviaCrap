.class public Lcom/etermax/admob/millennial/MillennialCustomEventBanner;
.super Lcom/etermax/admob/custom/BaseCustomEventBanner;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# instance fields
.field mAdView:Lcom/millennialmedia/android/MMAdView;

.field mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

.field wrappedAdView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/etermax/admob/custom/BaseCustomEventBanner;-><init>()V

    return-void
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onDismissScreen()V

    .line 136
    const-string v0, "admob ads"

    const-string v1, "MillennialCustomEventBanner - MMAdOverlayClosed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onPresentScreen()V

    .line 109
    const-string v0, "admob ads"

    const-string v1, "MillennialCustomEventBanner - MMAdOverlayLaunched"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .parameter

    .prologue
    .line 114
    const-string v0, "admob ads"

    const-string v1, "MillennialCustomEventBanner - MMAdRequestIsCaching"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method protected canFit(Landroid/content/Context;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-static {p2, p1}, Lcom/etermax/admob/millennial/MillennialHelper;->dip(ILandroid/content/Context;)I

    move-result v0

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 103
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mAdView:Lcom/millennialmedia/android/MMAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 43
    return-void
.end method

.method public onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onClick()V

    .line 142
    const-string v0, "admob ads"

    const-string v1, "MillennialCustomEventBanner - onSingleTap"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    iget-object v1, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->wrappedAdView:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onReceivedAd(Landroid/view/View;)V

    .line 120
    const-string v0, "admob ads"

    const-string v1, "MillennialCustomEventBanner - requestCompleted"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method protected requestCustomBannerAd(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x2d8

    const/16 v2, 0x1e0

    .line 48
    iput-object p1, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    .line 51
    :try_start_0
    invoke-static {p2}, Lcom/millennialmedia/android/MMSDK;->initialize(Landroid/content/Context;)V

    .line 53
    invoke-static {p4}, Lcom/etermax/admob/millennial/MillennialHelper;->getApId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 54
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 56
    new-instance v0, Lcom/millennialmedia/android/MMAdView;

    invoke-direct {v0, p2}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mAdView:Lcom/millennialmedia/android/MMAdView;

    .line 57
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, v4}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    .line 59
    const/16 v3, 0x140

    .line 60
    const/16 v0, 0x32

    .line 63
    const/16 v6, 0x2d8

    invoke-virtual {p0, p2, v6}, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->canFit(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    const/16 v0, 0x5a

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v2, v1}, Lcom/millennialmedia/android/MMAdView;->setWidth(I)V

    .line 71
    iget-object v2, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v2, v0}, Lcom/millennialmedia/android/MMAdView;->setHeight(I)V

    .line 73
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1, p2}, Lcom/etermax/admob/millennial/MillennialHelper;->dip(ILandroid/content/Context;)I

    move-result v3

    invoke-static {v0, p2}, Lcom/etermax/admob/millennial/MillennialHelper;->dip(ILandroid/content/Context;)I

    move-result v6

    invoke-direct {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    iget-object v3, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v3, v2}, Lcom/millennialmedia/android/MMAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v2, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->getDefaultAdId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    .line 80
    iget-object v2, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mAdView:Lcom/millennialmedia/android/MMAdView;

    const/4 v3, 0x0

    invoke-static {v2, v5, p6, v3}, Lcom/etermax/admob/millennial/MillennialHelper;->populateAdViewParameters(Lcom/millennialmedia/android/MMAd;Ljava/util/Hashtable;Lcom/google/ads/mediation/MediationAdRequest;Lcom/etermax/admob/millennial/MillennialAdapterExtras;)V

    .line 82
    iget-object v2, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v2, p0}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 84
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->wrappedAdView:Landroid/widget/RelativeLayout;

    .line 85
    iget-object v2, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->wrappedAdView:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1, p2}, Lcom/etermax/admob/millennial/MillennialHelper;->dip(ILandroid/content/Context;)I

    move-result v5

    invoke-static {v0, p2}, Lcom/etermax/admob/millennial/MillennialHelper;->dip(ILandroid/content/Context;)I

    move-result v0

    invoke-direct {v3, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->wrappedAdView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 88
    const-string v0, "admob ads"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MillennialCustomEventBanner - fetching Millennial apid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, p2, v1}, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->canFit(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    .line 98
    :goto_1
    return-void

    .line 66
    :cond_0
    const/16 v1, 0x1e0

    invoke-virtual {p0, p2, v1}, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->canFit(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    const/16 v0, 0x3c

    move v1, v2

    goto/16 :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string v1, "admob ads"

    const-string v2, "MillennialCustomEventBanner - excepci\u00f3n"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    goto :goto_1

    :cond_2
    move v1, v3

    goto/16 :goto_0
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 125
    const-string v0, "admob ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MillennialCustomEventBanner - requestFailed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getCode()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    iget-object v1, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->wrappedAdView:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onReceivedAd(Landroid/view/View;)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/etermax/admob/millennial/MillennialCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method
