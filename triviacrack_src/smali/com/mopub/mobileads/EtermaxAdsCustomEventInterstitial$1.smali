.class Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Lorg/json/JSONObject;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdInfoLoadedFailed(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->c(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 96
    const-string v0, "mopub ads"

    const-string v1, "Error loading interstitial info"

    invoke-static {v0, v1, p1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method

.method public onAdInfoLoadedOk(Lcom/etermax/adsinterface/a/a;)V
    .locals 4
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->a(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;Lcom/etermax/adsinterface/a/a;)Lcom/etermax/adsinterface/a/a;

    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->b(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)Lcom/etermax/adsinterface/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    invoke-static {v1}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->a(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/adsinterface/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->c(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    new-instance v2, Lcom/etermax/adsinterface/a/f;

    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->a(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    invoke-static {v3}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->b(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)Lcom/etermax/adsinterface/a/a;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/etermax/adsinterface/a/f;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/adsinterface/a/a;)V

    invoke-static {v1, v2}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->a(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;Lcom/etermax/adsinterface/a/f;)Lcom/etermax/adsinterface/a/f;

    .line 57
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->d(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)Lcom/etermax/adsinterface/a/f;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1$1;-><init>(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;)V

    invoke-virtual {v0, v1}, Lcom/etermax/adsinterface/a/f;->a(Lcom/etermax/adsinterface/a/h;)V

    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->b(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)Lcom/etermax/adsinterface/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :cond_2
    const-string v0, "Custom"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->c(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method
