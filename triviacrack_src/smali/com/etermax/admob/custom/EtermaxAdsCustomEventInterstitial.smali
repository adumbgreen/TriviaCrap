.class public Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;
.super Lcom/etermax/admob/custom/BaseCustomEventInterstitial;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/a/e;


# instance fields
.field private adParameters:Lcom/etermax/adsinterface/a/a;

.field private cac:Lcom/etermax/adsinterface/a/d;

.field private customAdsLoader:Lcom/etermax/adsinterface/a/f;

.field private imageAd:Landroid/graphics/Bitmap;

.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

.field private webAd:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/etermax/admob/custom/BaseCustomEventInterstitial;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;)Lcom/etermax/adsinterface/a/a;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->adParameters:Lcom/etermax/adsinterface/a/a;

    return-object v0
.end method

.method static synthetic access$002(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;Lcom/etermax/adsinterface/a/a;)Lcom/etermax/adsinterface/a/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->adParameters:Lcom/etermax/adsinterface/a/a;

    return-object p1
.end method

.method static synthetic access$100(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;)Lcom/etermax/adsinterface/a/f;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->customAdsLoader:Lcom/etermax/adsinterface/a/f;

    return-object v0
.end method

.method static synthetic access$302(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;Lcom/etermax/adsinterface/a/f;)Lcom/etermax/adsinterface/a/f;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->customAdsLoader:Lcom/etermax/adsinterface/a/f;

    return-object p1
.end method

.method static synthetic access$402(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->imageAd:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$502(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->webAd:Landroid/webkit/WebView;

    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->customAdsLoader:Lcom/etermax/adsinterface/a/f;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->customAdsLoader:Lcom/etermax/adsinterface/a/f;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/f;->a()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->customAdsLoader:Lcom/etermax/adsinterface/a/f;

    .line 38
    :cond_0
    invoke-super {p0}, Lcom/etermax/admob/custom/BaseCustomEventInterstitial;->destroy()V

    .line 39
    return-void
.end method

.method public notifyFailure()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$3;

    invoke-direct {v1, p0}, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$3;-><init>(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method

.method public notifySuccess()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$2;

    invoke-direct {v1, p0}, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$2;-><init>(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method public onAdCanceled()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "admob ads"

    const-string v1, "CustomAdsEventInterstitial - onAdCanceled"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onDismissScreen()V

    .line 154
    :cond_0
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "admob ads"

    const-string v1, "CustomAdsEventInterstitial - onAdClicked"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->cac:Lcom/etermax/adsinterface/a/d;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/d;->dismiss()V

    .line 144
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onLeaveApplication()V

    .line 146
    :cond_0
    return-void
.end method

.method protected requestCustomInterstitialAd(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    const-string v0, "admob ads"

    const-string v1, "Requesting Custom Ad"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iput-object p2, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mActivity:Landroid/app/Activity;

    .line 46
    iput-object p1, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    .line 49
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 51
    const-string v0, "admob ads"

    const-string v1, "Custom ads can only be called from a FragmentActivity!"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;

    invoke-direct {v0, p0}, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;-><init>(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;)V

    invoke-static {p2, p4, v0}, Lcom/etermax/adsinterface/a/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/etermax/adsinterface/a/c;)V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onPresentScreen()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->cac:Lcom/etermax/adsinterface/a/d;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Lcom/etermax/adsinterface/a/d;

    iget-object v1, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/etermax/adsinterface/a/d;-><init>(Landroid/content/Context;Lcom/etermax/adsinterface/a/e;)V

    iput-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->cac:Lcom/etermax/adsinterface/a/d;

    .line 120
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->cac:Lcom/etermax/adsinterface/a/d;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/d;->show()V

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->imageAd:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->cac:Lcom/etermax/adsinterface/a/d;

    iget-object v1, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->adParameters:Lcom/etermax/adsinterface/a/a;

    iget-object v2, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->imageAd:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/adsinterface/a/d;->a(Lcom/etermax/adsinterface/a/a;Landroid/graphics/Bitmap;)V

    .line 131
    :goto_1
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->adParameters:Lcom/etermax/adsinterface/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/adsinterface/a/a;->a(J)V

    .line 133
    invoke-virtual {p0}, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->notifySuccess()V

    .line 137
    :goto_2
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->cac:Lcom/etermax/adsinterface/a/d;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/d;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {p0}, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->notifyFailure()V

    goto :goto_2

    .line 128
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->cac:Lcom/etermax/adsinterface/a/d;

    iget-object v1, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->adParameters:Lcom/etermax/adsinterface/a/a;

    iget-object v2, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->webAd:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/adsinterface/a/d;->a(Lcom/etermax/adsinterface/a/a;Landroid/webkit/WebView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
