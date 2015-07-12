.class Lcom/mopub/mobileads/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/AdListener;


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/AmazonCustomBanner;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AmazonCustomBanner;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mopub/mobileads/h;->a:Lcom/mopub/mobileads/AmazonCustomBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    const-string v0, "MoPub"

    const-string v1, "Amazon banner collapsed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/mopub/mobileads/h;->a:Lcom/mopub/mobileads/AmazonCustomBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonCustomBanner;->a(Lcom/mopub/mobileads/AmazonCustomBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerCollapsed()V

    .line 82
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    const-string v0, "MoPub"

    const-string v1, "Amazon banner dismissed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    const-string v0, "MoPub"

    const-string v1, "Amazon banner expanded"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/mopub/mobileads/h;->a:Lcom/mopub/mobileads/AmazonCustomBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonCustomBanner;->a(Lcom/mopub/mobileads/AmazonCustomBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 93
    iget-object v0, p0, Lcom/mopub/mobileads/h;->a:Lcom/mopub/mobileads/AmazonCustomBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonCustomBanner;->a(Lcom/mopub/mobileads/AmazonCustomBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    .line 94
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 98
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Amazon banner failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v0

    .line 101
    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/mopub/mobileads/h;->a:Lcom/mopub/mobileads/AmazonCustomBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonCustomBanner;->a(Lcom/mopub/mobileads/AmazonCustomBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 112
    :goto_0
    return-void

    .line 103
    :cond_0
    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->REQUEST_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    if-ne v0, v1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/mopub/mobileads/h;->a:Lcom/mopub/mobileads/AmazonCustomBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonCustomBanner;->a(Lcom/mopub/mobileads/AmazonCustomBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 105
    :cond_1
    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    if-ne v0, v1, :cond_2

    .line 106
    iget-object v0, p0, Lcom/mopub/mobileads/h;->a:Lcom/mopub/mobileads/AmazonCustomBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonCustomBanner;->a(Lcom/mopub/mobileads/AmazonCustomBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 107
    :cond_2
    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_FILL:Lcom/amazon/device/ads/AdError$ErrorCode;

    if-ne v0, v1, :cond_3

    .line 108
    iget-object v0, p0, Lcom/mopub/mobileads/h;->a:Lcom/mopub/mobileads/AmazonCustomBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonCustomBanner;->a(Lcom/mopub/mobileads/AmazonCustomBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/mopub/mobileads/h;->a:Lcom/mopub/mobileads/AmazonCustomBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonCustomBanner;->a(Lcom/mopub/mobileads/AmazonCustomBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    const-string v0, "MoPub"

    const-string v1, "Amazon banner loaded"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/mopub/mobileads/h;->a:Lcom/mopub/mobileads/AmazonCustomBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonCustomBanner;->a(Lcom/mopub/mobileads/AmazonCustomBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    check-cast p1, Lcom/amazon/device/ads/AdLayout;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 118
    return-void
.end method
