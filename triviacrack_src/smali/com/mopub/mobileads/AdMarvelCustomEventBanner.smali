.class public Lcom/mopub/mobileads/AdMarvelCustomEventBanner;
.super Lcom/etermax/mopubads/custom/BaseCustomEventBanner;
.source "SourceFile"

# interfaces
.implements Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;


# static fields
.field private static b:Z


# instance fields
.field private a:Lcom/admarvel/android/ads/AdMarvelView;

.field private c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/etermax/mopubads/custom/BaseCustomEventBanner;-><init>()V

    .line 138
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Lorg/json/JSONObject;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    const-string v1, "AdMarvel"

    const-string v2, "Banner"

    invoke-static {v1, v2}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 42
    :try_start_0
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 43
    check-cast p1, Landroid/app/Activity;

    .line 49
    :goto_0
    if-nez p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 79
    :goto_1
    return-void

    .line 53
    :cond_0
    sget-boolean v0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->b:Z

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    invoke-static {p1, v0}, Lcom/admarvel/android/ads/AdMarvelView;->initialize(Landroid/app/Activity;Ljava/util/Map;)V

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->b:Z

    .line 59
    :cond_1
    const-string v0, "adPartnerID"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "adSiteID"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string v0, "AdMarvel"

    const-string v1, "banner ad failed to load."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_1

    .line 65
    :cond_3
    :try_start_1
    new-instance v2, Lcom/admarvel/android/ads/AdMarvelView;

    invoke-direct {v2, p1}, Lcom/admarvel/android/ads/AdMarvelView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->a:Lcom/admarvel/android/ads/AdMarvelView;

    .line 66
    iget-object v2, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->a:Lcom/admarvel/android/ads/AdMarvelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/admarvel/android/ads/AdMarvelView;->setEnableClickRedirect(Z)V

    .line 67
    iget-object v2, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->a:Lcom/admarvel/android/ads/AdMarvelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/admarvel/android/ads/AdMarvelView;->setDisableAnimation(Z)V

    .line 68
    iget-object v2, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->a:Lcom/admarvel/android/ads/AdMarvelView;

    invoke-virtual {v2, p0}, Lcom/admarvel/android/ads/AdMarvelView;->setListener(Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;)V

    .line 69
    iget-object v2, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->a:Lcom/admarvel/android/ads/AdMarvelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/admarvel/android/ads/AdMarvelView;->setEnableAutoScaling(Z)V

    .line 70
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelUtils;->enableLogging(Z)V

    .line 71
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 72
    iget-object v3, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->a:Lcom/admarvel/android/ads/AdMarvelView;

    invoke-virtual {v3, v2, v0, v1, p1}, Lcom/admarvel/android/ads/AdMarvelView;->requestNewAd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    move-object p1, v0

    goto :goto_0
.end method

.method public onClickAd(Lcom/admarvel/android/ads/AdMarvelView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 92
    const-string v0, "AdMarvel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Banner ad clicked. URL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 97
    :cond_0
    return-void
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerCollapsed()V

    .line 103
    return-void
.end method

.method public onExpand()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    .line 109
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    sget-object v0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner$1;->a:[I

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 140
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 133
    :pswitch_3
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->a:Lcom/admarvel/android/ads/AdMarvelView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->a:Lcom/admarvel/android/ads/AdMarvelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelView;->setListener(Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;)V

    .line 85
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->a:Lcom/admarvel/android/ads/AdMarvelView;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->a:Lcom/admarvel/android/ads/AdMarvelView;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelView;->destroy()V

    .line 88
    :cond_0
    return-void
.end method

.method public onReceiveAd(Lcom/admarvel/android/ads/AdMarvelView;)V
    .locals 2
    .parameter

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventBanner;->c:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onRequestAd(Lcom/admarvel/android/ads/AdMarvelView;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    return-void
.end method
