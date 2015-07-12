.class public Lcom/etermax/admob/smartads/SmartAdsBannerContainer;
.super Lcom/etermax/admob/smartads/SmartAdsBaseContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/admob/smartads/SmartAdsBaseContainer",
        "<",
        "Lcom/smartadserver/android/library/SASBannerView;",
        "Lcom/google/ads/mediation/customevent/CustomEventBannerListener;",
        ">;"
    }
.end annotation


# instance fields
.field protected mContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;-><init>(Landroid/app/Activity;ILjava/lang/String;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected adClicked()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method protected destroy()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;->destroy()V

    .line 28
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsBannerContainer;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 29
    return-void
.end method

.method protected getResponseHandler(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;)Lcom/smartadserver/android/library/ui/a;
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsBannerContainer;->mView:Lcom/smartadserver/android/library/ui/SASAdView;

    check-cast v0, Lcom/smartadserver/android/library/SASBannerView;

    new-instance v1, Lcom/etermax/admob/smartads/SmartAdsBannerContainer$1;

    invoke-direct {v1, p0, p1}, Lcom/etermax/admob/smartads/SmartAdsBannerContainer$1;-><init>(Lcom/etermax/admob/smartads/SmartAdsBannerContainer;Lcom/google/ads/mediation/customevent/CustomEventBannerListener;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/SASBannerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v0, Lcom/etermax/admob/smartads/SmartAdsBannerContainer$2;

    invoke-direct {v0, p0, p1}, Lcom/etermax/admob/smartads/SmartAdsBannerContainer$2;-><init>(Lcom/etermax/admob/smartads/SmartAdsBannerContainer;Lcom/google/ads/mediation/customevent/CustomEventBannerListener;)V

    return-object v0
.end method

.method protected bridge synthetic getResponseHandler(Lcom/google/ads/mediation/customevent/CustomEventListener;)Lcom/smartadserver/android/library/ui/a;
    .locals 1
    .parameter

    .prologue
    .line 17
    check-cast p1, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-virtual {p0, p1}, Lcom/etermax/admob/smartads/SmartAdsBannerContainer;->getResponseHandler(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;)Lcom/smartadserver/android/library/ui/a;

    move-result-object v0

    return-object v0
.end method

.method protected initAdsView(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 34
    new-instance v0, Lcom/smartadserver/android/library/SASBannerView;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/SASBannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsBannerContainer;->mView:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 36
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsBannerContainer;->mContainer:Landroid/widget/LinearLayout;

    .line 39
    const/4 v0, 0x1

    const/high16 v1, 0x4248

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v1, v0

    .line 42
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsBannerContainer;->mView:Lcom/smartadserver/android/library/ui/SASAdView;

    check-cast v0, Lcom/smartadserver/android/library/SASBannerView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/SASBannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsBannerContainer;->mView:Lcom/smartadserver/android/library/ui/SASAdView;

    check-cast v0, Lcom/smartadserver/android/library/SASBannerView;

    const/high16 v2, 0x6600

    invoke-virtual {p0, p1, v2}, Lcom/etermax/admob/smartads/SmartAdsBannerContainer;->getLoader(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/SASBannerView;->setLoaderView(Landroid/view/View;)V

    .line 45
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsBannerContainer;->mContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsBannerContainer;->mContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/etermax/admob/smartads/SmartAdsBannerContainer;->mView:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    return-void
.end method
