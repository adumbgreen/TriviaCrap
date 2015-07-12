.class Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->requestCustomInterstitialAd(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;


# direct methods
.method constructor <init>(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdInfoLoadedFailed(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    #getter for: Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->access$200(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 120
    const-string v0, "admob ads"

    const-string v1, "Error loading interstitial info"

    invoke-static {v0, v1, p1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    #calls: Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->access$400(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)V

    .line 122
    return-void
.end method

.method public onAdInfoLoadedOk(Lcom/etermax/adsinterface/a/a;)V
    .locals 4
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    #setter for: Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->adParameters:Lcom/etermax/adsinterface/a/a;
    invoke-static {v0, p1}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->access$002(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;Lcom/etermax/adsinterface/a/a;)Lcom/etermax/adsinterface/a/a;

    .line 74
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    #getter for: Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->adParameters:Lcom/etermax/adsinterface/a/a;
    invoke-static {v0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->access$000(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)Lcom/etermax/adsinterface/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    #getter for: Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->access$100(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/adsinterface/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    #getter for: Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->access$200(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    #getter for: Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->access$200(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    new-instance v2, Lcom/etermax/adsinterface/a/f;

    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    #getter for: Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->access$100(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    #getter for: Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->adParameters:Lcom/etermax/adsinterface/a/a;
    invoke-static {v3}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->access$000(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)Lcom/etermax/adsinterface/a/a;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/etermax/adsinterface/a/f;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/adsinterface/a/a;)V

    #setter for: Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->customAdsLoader:Lcom/etermax/adsinterface/a/f;
    invoke-static {v1, v2}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->access$302(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;Lcom/etermax/adsinterface/a/f;)Lcom/etermax/adsinterface/a/f;

    .line 83
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    #getter for: Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->customAdsLoader:Lcom/etermax/adsinterface/a/f;
    invoke-static {v0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->access$300(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)Lcom/etermax/adsinterface/a/f;

    move-result-object v0

    new-instance v1, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1$1;

    invoke-direct {v1, p0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1$1;-><init>(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;)V

    invoke-virtual {v0, v1}, Lcom/etermax/adsinterface/a/f;->a(Lcom/etermax/adsinterface/a/h;)V

    .line 106
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    #getter for: Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->adParameters:Lcom/etermax/adsinterface/a/a;
    invoke-static {v0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->access$000(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)Lcom/etermax/adsinterface/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :cond_2
    const-string v0, "Custom"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;

    #getter for: Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->access$200(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method
