.class public Lcom/etermax/admob/mobfox/MobFoxBannerContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adsdk/sdk/AdListener;


# instance fields
.field private mAdView:Lcom/adsdk/sdk/banner/AdView;

.field private mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/mediation/customevent/CustomEventBannerListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "admob ads"

    const-string v1, "MobFoxBannerContainer"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iput-object p3, p0, Lcom/etermax/admob/mobfox/MobFoxBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    .line 19
    new-instance v0, Lcom/adsdk/sdk/banner/AdView;

    const-string v2, "http://my.mobfox.com/request.php"

    move-object v1, p1

    move-object v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxBannerContainer;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    .line 20
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxBannerContainer;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/banner/AdView;->setAdListener(Lcom/adsdk/sdk/AdListener;)V

    .line 21
    return-void
.end method


# virtual methods
.method public adClicked()V
    .locals 2

    .prologue
    .line 29
    const-string v0, "admob ads"

    const-string v1, "MobFoxBannerContainer - adClicked"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onClick()V

    .line 31
    return-void
.end method

.method public adClosed(Lcom/adsdk/sdk/Ad;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    const-string v0, "admob ads"

    const-string v1, "MobFoxBannerContainer - adClosed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public adLoadSucceeded(Lcom/adsdk/sdk/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    const-string v0, "admob ads"

    const-string v1, "MobFoxBannerContainer - adLoadSucceeded"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    iget-object v1, p0, Lcom/etermax/admob/mobfox/MobFoxBannerContainer;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onReceivedAd(Landroid/view/View;)V

    .line 42
    return-void
.end method

.method public adShown(Lcom/adsdk/sdk/Ad;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 46
    const-string v0, "admob ads"

    const-string v1, "MobFoxBannerContainer - adShown"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxBannerContainer;->mAdView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/banner/AdView;->release()V

    .line 25
    return-void
.end method

.method public noAdFound()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "admob ads"

    const-string v1, "MobFoxBannerContainer - noAdFound"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/etermax/admob/mobfox/MobFoxBannerContainer;->mListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    .line 53
    return-void
.end method
