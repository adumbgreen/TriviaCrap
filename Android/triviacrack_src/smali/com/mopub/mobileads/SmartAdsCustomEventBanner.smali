.class public Lcom/mopub/mobileads/SmartAdsCustomEventBanner;
.super Lcom/etermax/mopubads/custom/BaseCustomEventBanner;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/mopubads/custom/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/etermax/mopubads/custom/BaseCustomEventBanner;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Lorg/json/JSONObject;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    const-string v0, "mopub ads"

    const-string v1, "SmartAdsCustomEventBanner - loadCustomBannerAd"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :try_start_0
    new-instance v0, Lcom/etermax/mopubads/custom/a/b;

    invoke-direct {v0, p3}, Lcom/etermax/mopubads/custom/a/b;-><init>(Lorg/json/JSONObject;)V

    .line 30
    new-instance v1, Lcom/etermax/mopubads/custom/a/a;

    invoke-virtual {v0}, Lcom/etermax/mopubads/custom/a/b;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/etermax/mopubads/custom/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/etermax/mopubads/custom/a/b;->c()I

    move-result v0

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/etermax/mopubads/custom/a/a;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object v1, p0, Lcom/mopub/mobileads/SmartAdsCustomEventBanner;->a:Lcom/etermax/mopubads/custom/a/a;

    .line 31
    iget-object v0, p0, Lcom/mopub/mobileads/SmartAdsCustomEventBanner;->a:Lcom/etermax/mopubads/custom/a/a;

    invoke-virtual {v0, p2}, Lcom/etermax/mopubads/custom/a/a;->a(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string v0, "mopub ads"

    const-string v1, "SmartAdsCustomEventBanner - adLoadingFailed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mopub/mobileads/SmartAdsCustomEventBanner;->a:Lcom/etermax/mopubads/custom/a/a;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/mopub/mobileads/SmartAdsCustomEventBanner;->a:Lcom/etermax/mopubads/custom/a/a;

    invoke-virtual {v0}, Lcom/etermax/mopubads/custom/a/a;->a()V

    .line 21
    :cond_0
    return-void
.end method
