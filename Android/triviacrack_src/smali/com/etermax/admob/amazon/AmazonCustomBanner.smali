.class public Lcom/etermax/admob/amazon/AmazonCustomBanner;
.super Lcom/etermax/admob/custom/BaseCustomEventBanner;
.source "SourceFile"


# instance fields
.field private mAmazonBanner:Lcom/amazon/device/ads/AdLayout;

.field private mBannerListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/etermax/admob/custom/BaseCustomEventBanner;-><init>()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/etermax/admob/amazon/AmazonCustomBanner;)Lcom/google/ads/mediation/customevent/CustomEventBannerListener;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomBanner;->mBannerListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomBanner;->mAmazonBanner:Lcom/amazon/device/ads/AdLayout;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomBanner;->mAmazonBanner:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdLayout;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 31
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomBanner;->mAmazonBanner:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->destroy()V

    .line 32
    iput-object v1, p0, Lcom/etermax/admob/amazon/AmazonCustomBanner;->mAmazonBanner:Lcom/amazon/device/ads/AdLayout;

    .line 34
    :cond_0
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
    .line 39
    iput-object p1, p0, Lcom/etermax/admob/amazon/AmazonCustomBanner;->mBannerListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    .line 44
    sget-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_320x50:Lcom/amazon/device/ads/AdSize;

    .line 47
    :try_start_0
    const-string v1, "appId"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    if-eqz p2, :cond_0

    if-nez v1, :cond_1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomBanner;->mBannerListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    .line 70
    :goto_0
    return-void

    .line 54
    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/etermax/admob/amazon/AmazonCustomCommon;->init(Ljava/lang/String;Z)V

    .line 56
    const-string v2, "MoPub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Amazon Banner - Loading ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v1, Lcom/amazon/device/ads/AdLayout;

    invoke-direct {v1, p2, v0}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/app/Activity;Lcom/amazon/device/ads/AdSize;)V

    iput-object v1, p0, Lcom/etermax/admob/amazon/AmazonCustomBanner;->mAmazonBanner:Lcom/amazon/device/ads/AdLayout;

    .line 59
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 60
    iget-object v1, p0, Lcom/etermax/admob/amazon/AmazonCustomBanner;->mAmazonBanner:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/etermax/admob/amazon/AmazonCustomBanner;->mAmazonBanner:Lcom/amazon/device/ads/AdLayout;

    new-instance v2, Lcom/etermax/admob/amazon/AmazonCustomBanner$AmazonBannerAdListener;

    invoke-direct {v2, p0}, Lcom/etermax/admob/amazon/AmazonCustomBanner$AmazonBannerAdListener;-><init>(Lcom/etermax/admob/amazon/AmazonCustomBanner;)V

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdLayout;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 65
    iget-object v1, p0, Lcom/etermax/admob/amazon/AmazonCustomBanner;->mAmazonBanner:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdLayout;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v0, "MoPub"

    const-string v1, "Amazon banner ad failed to load."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomBanner;->mBannerListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method
