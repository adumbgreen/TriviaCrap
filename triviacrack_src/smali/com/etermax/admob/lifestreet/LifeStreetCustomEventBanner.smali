.class public Lcom/etermax/admob/lifestreet/LifeStreetCustomEventBanner;
.super Lcom/etermax/admob/custom/BaseCustomEventBanner;
.source "SourceFile"


# instance fields
.field mContainer:Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/etermax/admob/custom/BaseCustomEventBanner;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetCustomEventBanner;->mContainer:Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetCustomEventBanner;->mContainer:Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;

    invoke-virtual {v0}, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;->destroy()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetCustomEventBanner;->mContainer:Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;

    .line 23
    :cond_0
    return-void
.end method

.method protected requestCustomBannerAd(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    :try_start_0
    const-string v0, "key"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://mobile-android.lfstmedia.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 32
    new-instance v0, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;-><init>(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;)V

    iput-object v0, p0, Lcom/etermax/admob/lifestreet/LifeStreetCustomEventBanner;->mContainer:Lcom/etermax/admob/lifestreet/LifeStreetBannerContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string v1, "admob ads"

    const-string v2, "LifeStreetCustomEventBanner - Excepci\u00f3n cargando el banner"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method
