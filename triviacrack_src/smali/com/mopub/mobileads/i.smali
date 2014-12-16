.class Lcom/mopub/mobileads/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/AdListener;


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/AmazonCustomInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AmazonCustomInterstitial;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mopub/mobileads/i;->a:Lcom/mopub/mobileads/AmazonCustomInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    const-string v0, "MoPub"

    const-string v1, "Amazon interstitial collapsed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    const-string v0, "MoPub"

    const-string v1, "Amazon interstitial dismissed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/mopub/mobileads/i;->a:Lcom/mopub/mobileads/AmazonCustomInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonCustomInterstitial;->a(Lcom/mopub/mobileads/AmazonCustomInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 90
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    const-string v0, "MoPub"

    const-string v1, "Amazon interstitial expanded"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 99
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Amazon interstitial failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/mopub/mobileads/i;->a:Lcom/mopub/mobileads/AmazonCustomInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonCustomInterstitial;->a(Lcom/mopub/mobileads/AmazonCustomInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 113
    :goto_0
    return-void

    .line 104
    :cond_0
    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->REQUEST_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    if-ne v0, v1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/i;->a:Lcom/mopub/mobileads/AmazonCustomInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonCustomInterstitial;->a(Lcom/mopub/mobileads/AmazonCustomInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 106
    :cond_1
    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    if-ne v0, v1, :cond_2

    .line 107
    iget-object v0, p0, Lcom/mopub/mobileads/i;->a:Lcom/mopub/mobileads/AmazonCustomInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonCustomInterstitial;->a(Lcom/mopub/mobileads/AmazonCustomInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 108
    :cond_2
    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_FILL:Lcom/amazon/device/ads/AdError$ErrorCode;

    if-ne v0, v1, :cond_3

    .line 109
    iget-object v0, p0, Lcom/mopub/mobileads/i;->a:Lcom/mopub/mobileads/AmazonCustomInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonCustomInterstitial;->a(Lcom/mopub/mobileads/AmazonCustomInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/mopub/mobileads/i;->a:Lcom/mopub/mobileads/AmazonCustomInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonCustomInterstitial;->a(Lcom/mopub/mobileads/AmazonCustomInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 117
    const-string v0, "MoPub"

    const-string v1, "Amazon interstitial loaded"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/mopub/mobileads/i;->a:Lcom/mopub/mobileads/AmazonCustomInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonCustomInterstitial;->a(Lcom/mopub/mobileads/AmazonCustomInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 119
    return-void
.end method
