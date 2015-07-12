.class public Lcom/mopub/mobileads/FacebookCustomEventBanner;
.super Lcom/etermax/mopubads/custom/BaseCustomEventBanner;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# instance fields
.field private a:Lcom/facebook/ads/AdView;

.field private b:Landroid/view/ViewGroup;

.field private c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/etermax/mopubads/custom/BaseCustomEventBanner;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 106
    :try_start_0
    const-string v1, "placement_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    const-string v2, "MoPub"

    const-string v3, "FacebookBanner extra error"

    invoke-static {v2, v3, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Lorg/json/JSONObject;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p2, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 42
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/FacebookCustomEventBanner;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 55
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string v1, "A4B489B192C6FCD87350B61A1D916FC4"

    invoke-static {v1}, Lcom/facebook/ads/AdSettings;->addTestDevice(Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/facebook/ads/AdView;

    sget-object v2, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    invoke-direct {v1, p1, v0, v2}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v1, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->a:Lcom/facebook/ads/AdView;

    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->a:Lcom/facebook/ads/AdView;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 51
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->a:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->loadAd()V

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->facebook_banner_container:I

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->b:Landroid/view/ViewGroup;

    .line 54
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->a:Lcom/facebook/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    const-string v0, "MoPub"

    const-string v1, "Facebook banner ad clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 101
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    const-string v0, "MoPub"

    const-string v1, "Facebook banner ad loaded successfully. Showing ad..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    iget-object v1, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->b:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 87
    const-string v0, "MoPub"

    const-string v1, "Facebook banner ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    sget-object v1, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-virtual {v1}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    sget-object v1, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-virtual {v1}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->a:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->a:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    iput-object v3, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->a:Lcom/facebook/ads/AdView;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->b:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 71
    iput-object v3, p0, Lcom/mopub/mobileads/FacebookCustomEventBanner;->b:Landroid/view/ViewGroup;

    .line 73
    :cond_1
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v1, "FacebookCustomEventBanner"

    const-string v2, "Error al hacer destroy del banner de facebook"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
