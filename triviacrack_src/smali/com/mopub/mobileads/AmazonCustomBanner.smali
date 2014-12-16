.class public Lcom/mopub/mobileads/AmazonCustomBanner;
.super Lcom/etermax/mopubads/custom/BaseCustomEventBanner;
.source "SourceFile"


# instance fields
.field private a:Lcom/amazon/device/ads/AdLayout;

.field private b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/mopubads/custom/BaseCustomEventBanner;-><init>()V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/AmazonCustomBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonCustomBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Lorg/json/JSONObject;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p2, p0, Lcom/mopub/mobileads/AmazonCustomBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 34
    sget-object v1, Lcom/amazon/device/ads/AdSize;->SIZE_320x50:Lcom/amazon/device/ads/AdSize;

    .line 37
    :try_start_0
    const-string v0, "appId"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    const/4 v0, 0x0

    .line 40
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 41
    check-cast p1, Landroid/app/Activity;

    .line 44
    :goto_0
    if-eqz p1, :cond_0

    if-nez v2, :cond_1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonCustomBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 65
    :goto_1
    return-void

    .line 49
    :cond_1
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/mopub/mobileads/AmazonCustomCommon;->init(Ljava/lang/String;Z)V

    .line 51
    const-string v0, "MoPub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Amazon Banner - Loading ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/amazon/device/ads/AdLayout;

    invoke-direct {v0, p1, v1}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/app/Activity;Lcom/amazon/device/ads/AdSize;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AmazonCustomBanner;->a:Lcom/amazon/device/ads/AdLayout;

    .line 54
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    iget-object v1, p0, Lcom/mopub/mobileads/AmazonCustomBanner;->a:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/mopub/mobileads/AmazonCustomBanner;->a:Lcom/amazon/device/ads/AdLayout;

    new-instance v2, Lcom/mopub/mobileads/h;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/h;-><init>(Lcom/mopub/mobileads/AmazonCustomBanner;)V

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdLayout;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 60
    iget-object v1, p0, Lcom/mopub/mobileads/AmazonCustomBanner;->a:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdLayout;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v0, "MoPub"

    const-string v1, "Amazon banner ad failed to load."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonCustomBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_1

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonCustomBanner;->a:Lcom/amazon/device/ads/AdLayout;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonCustomBanner;->a:Lcom/amazon/device/ads/AdLayout;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonCustomBanner;->a:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdLayout;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonCustomBanner;->a:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->destroy()V

    .line 73
    iput-object v1, p0, Lcom/mopub/mobileads/AmazonCustomBanner;->a:Lcom/amazon/device/ads/AdLayout;

    .line 75
    :cond_0
    return-void
.end method
