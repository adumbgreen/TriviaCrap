.class public Lcom/etermax/admob/mobfox/MobFoxCustomEventBanner;
.super Lcom/etermax/admob/custom/BaseCustomEventBanner;
.source "SourceFile"


# instance fields
.field private mMobFoxBannerContainer:Lcom/etermax/admob/mobfox/MobFoxBannerContainer;


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
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxCustomEventBanner;->mMobFoxBannerContainer:Lcom/etermax/admob/mobfox/MobFoxBannerContainer;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxCustomEventBanner;->mMobFoxBannerContainer:Lcom/etermax/admob/mobfox/MobFoxBannerContainer;

    invoke-virtual {v0}, Lcom/etermax/admob/mobfox/MobFoxBannerContainer;->destroy()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxCustomEventBanner;->mMobFoxBannerContainer:Lcom/etermax/admob/mobfox/MobFoxBannerContainer;

    .line 23
    :cond_0
    return-void
.end method

.method protected requestCustomBannerAd(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 3
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
    const-string v0, "pid"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/etermax/admob/mobfox/MobFoxBannerContainer;

    invoke-direct {v1, p2, v0, p1}, Lcom/etermax/admob/mobfox/MobFoxBannerContainer;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/mediation/customevent/CustomEventBannerListener;)V

    iput-object v1, p0, Lcom/etermax/admob/mobfox/MobFoxCustomEventBanner;->mMobFoxBannerContainer:Lcom/etermax/admob/mobfox/MobFoxBannerContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const-string v1, "admob ads"

    const-string v2, "MobFoxEventBanner exception"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method
