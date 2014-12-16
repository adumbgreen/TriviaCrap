.class public Lcom/etermax/admob/mopub/MoPubCustomEventBanner;
.super Lcom/etermax/admob/custom/BaseCustomEventBanner;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


# instance fields
.field bannerView:Lcom/mopub/mobileads/MoPubView;

.field mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/admob/custom/BaseCustomEventBanner;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "admob ads"

    const-string v1, "MoPubCustomEventBanner - destroy"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventBanner;->bannerView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventBanner;->bannerView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventBanner;->bannerView:Lcom/mopub/mobileads/MoPubView;

    .line 31
    :cond_0
    return-void
.end method

.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onClick()V

    .line 57
    const-string v0, "admob ads"

    const-string v1, "MoPubCustomEventBanner - onBannerClicked"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    .line 71
    const-string v0, "admob ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoPubCustomEventBanner - onBannerFailed - error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onReceivedAd(Landroid/view/View;)V

    .line 77
    const-string v0, "admob ads"

    const-string v1, "MoPubCustomEventBanner - onBannerLoaded"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method protected requestCustomBannerAd(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/etermax/admob/mopub/MoPubCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    .line 40
    :try_start_0
    const-string v0, "adunit"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    const-string v0, "admob ads"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoPubCustomEventBanner - adUnitId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/etermax/k;->mopub_banner:I

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/MoPubView;

    iput-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventBanner;->bannerView:Lcom/mopub/mobileads/MoPubView;

    .line 43
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventBanner;->bannerView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventBanner;->bannerView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 45
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventBanner;->bannerView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v1, "admob ads"

    const-string v2, "MoPubCustomEventBanner - Exception"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/etermax/admob/mopub/MoPubCustomEventBanner;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method
