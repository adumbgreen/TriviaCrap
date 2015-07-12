.class public Lcom/mopub/mobileads/SmartAdsCustomEventInterstitial;
.super Lcom/etermax/mopubads/custom/BaseCustomEventInterstitial;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/mopubads/custom/a/c;

.field private b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/etermax/mopubads/custom/BaseCustomEventInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Lorg/json/JSONObject;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    const-string v0, "mopub ads"

    const-string v1, "SmartAdsCustomEventInterstitial - loadCustomInterstitialAd"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :try_start_0
    iput-object p2, p0, Lcom/mopub/mobileads/SmartAdsCustomEventInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 35
    new-instance v0, Lcom/etermax/mopubads/custom/a/b;

    invoke-direct {v0, p3}, Lcom/etermax/mopubads/custom/a/b;-><init>(Lorg/json/JSONObject;)V

    .line 38
    new-instance v1, Lcom/etermax/mopubads/custom/a/c;

    invoke-virtual {v0}, Lcom/etermax/mopubads/custom/a/b;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/etermax/mopubads/custom/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/etermax/mopubads/custom/a/b;->c()I

    move-result v0

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/etermax/mopubads/custom/a/c;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object v1, p0, Lcom/mopub/mobileads/SmartAdsCustomEventInterstitial;->a:Lcom/etermax/mopubads/custom/a/c;

    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/SmartAdsCustomEventInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v0, "mopub ads"

    const-string v1, "SmartAdsCustomEventInterstitial - adLoadingFailed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/mopub/mobileads/SmartAdsCustomEventInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onInvalidate()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mopub/mobileads/SmartAdsCustomEventInterstitial;->a:Lcom/etermax/mopubads/custom/a/c;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/mopub/mobileads/SmartAdsCustomEventInterstitial;->a:Lcom/etermax/mopubads/custom/a/c;

    invoke-virtual {v0}, Lcom/etermax/mopubads/custom/a/c;->a()V

    .line 22
    :cond_0
    return-void
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mopub/mobileads/SmartAdsCustomEventInterstitial;->a:Lcom/etermax/mopubads/custom/a/c;

    iget-object v1, p0, Lcom/mopub/mobileads/SmartAdsCustomEventInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-virtual {v0, v1}, Lcom/etermax/mopubads/custom/a/c;->a(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    .line 27
    return-void
.end method
