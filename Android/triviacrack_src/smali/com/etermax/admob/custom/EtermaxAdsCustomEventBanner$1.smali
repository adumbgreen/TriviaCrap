.class Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;->requestCustomBannerAd(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method constructor <init>(Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;Landroid/app/Activity;Lcom/google/ads/mediation/customevent/CustomEventBannerListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner$1;->this$0:Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;

    iput-object p2, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner$1;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdInfoLoadedFailed(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    const-string v0, "admob ads"

    const-string v1, "CustomEventBannerTemp - Could not read ad parameters"

    invoke-static {v0, v1, p1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner$1;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    .line 48
    return-void
.end method

.method public onAdInfoLoadedOk(Lcom/etermax/adsinterface/a/a;)V
    .locals 4
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner$1;->this$0:Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;

    new-instance v1, Lcom/etermax/adsinterface/a/i;

    iget-object v2, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner$1;->this$0:Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;

    invoke-direct {v1, v2, p1, v3}, Lcom/etermax/adsinterface/a/i;-><init>(Landroid/app/Activity;Lcom/etermax/adsinterface/a/a;Lcom/etermax/adsinterface/a/m;)V

    #setter for: Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;->mCustomBannerContainer:Lcom/etermax/adsinterface/a/i;
    invoke-static {v0, v1}, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;->access$002(Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;Lcom/etermax/adsinterface/a/i;)Lcom/etermax/adsinterface/a/i;

    .line 41
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner$1;->this$0:Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;

    #getter for: Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;->mCustomBannerContainer:Lcom/etermax/adsinterface/a/i;
    invoke-static {v0}, Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;->access$000(Lcom/etermax/admob/custom/EtermaxAdsCustomEventBanner;)Lcom/etermax/adsinterface/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/i;->a()V

    .line 42
    return-void
.end method
