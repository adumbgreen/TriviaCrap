.class public Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;
.super Lcom/etermax/admob/custom/BaseCustomEventInterstitial;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/a/e;


# instance fields
.field private adParameters:Lcom/etermax/adsinterface/a/a;

.field private cac:Lcom/etermax/adsinterface/a/d;

.field private customAdsLoader:Lcom/etermax/adsinterface/a/f;

.field private loadingView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/etermax/admob/custom/BaseCustomEventInterstitial;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)Lcom/etermax/adsinterface/a/a;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->adParameters:Lcom/etermax/adsinterface/a/a;

    return-object v0
.end method

.method static synthetic access$002(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;Lcom/etermax/adsinterface/a/a;)Lcom/etermax/adsinterface/a/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->adParameters:Lcom/etermax/adsinterface/a/a;

    return-object p1
.end method

.method static synthetic access$100(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)Lcom/etermax/adsinterface/a/f;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->customAdsLoader:Lcom/etermax/adsinterface/a/f;

    return-object v0
.end method

.method static synthetic access$302(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;Lcom/etermax/adsinterface/a/f;)Lcom/etermax/adsinterface/a/f;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->customAdsLoader:Lcom/etermax/adsinterface/a/f;

    return-object p1
.end method

.method static synthetic access$400(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->hideLoadingDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->showInterstitialAfterLoad(Ljava/lang/Object;)V

    return-void
.end method

.method private hideLoadingDialog()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->loadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 132
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->loadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 135
    :cond_0
    return-void
.end method

.method private showInterstitialAfterLoad(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onPresentScreen()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->cac:Lcom/etermax/adsinterface/a/d;

    if-nez v0, :cond_2

    .line 145
    new-instance v0, Lcom/etermax/adsinterface/a/d;

    iget-object v1, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/etermax/adsinterface/a/d;-><init>(Landroid/content/Context;Lcom/etermax/adsinterface/a/e;)V

    iput-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->cac:Lcom/etermax/adsinterface/a/d;

    .line 146
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->cac:Lcom/etermax/adsinterface/a/d;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/d;->show()V

    .line 151
    :goto_0
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->cac:Lcom/etermax/adsinterface/a/d;

    iget-object v1, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->adParameters:Lcom/etermax/adsinterface/a/a;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p1}, Lcom/etermax/adsinterface/a/d;->a(Lcom/etermax/adsinterface/a/a;Landroid/graphics/Bitmap;)V

    .line 157
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->adParameters:Lcom/etermax/adsinterface/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/adsinterface/a/a;->a(J)V

    .line 159
    invoke-virtual {p0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->notifySuccess()V

    .line 163
    :goto_2
    return-void

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->cac:Lcom/etermax/adsinterface/a/d;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/d;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {p0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->notifyFailure()V

    goto :goto_2

    .line 153
    :cond_3
    :try_start_1
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->cac:Lcom/etermax/adsinterface/a/d;

    iget-object v1, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->adParameters:Lcom/etermax/adsinterface/a/a;

    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Lcom/etermax/adsinterface/a/d;->a(Lcom/etermax/adsinterface/a/a;Landroid/webkit/WebView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->customAdsLoader:Lcom/etermax/adsinterface/a/f;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->customAdsLoader:Lcom/etermax/adsinterface/a/f;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/f;->a()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->customAdsLoader:Lcom/etermax/adsinterface/a/f;

    .line 45
    :cond_0
    invoke-super {p0}, Lcom/etermax/admob/custom/BaseCustomEventInterstitial;->destroy()V

    .line 46
    return-void
.end method

.method public notifyFailure()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$3;

    invoke-direct {v1, p0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$3;-><init>(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method

.method public notifySuccess()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$2;

    invoke-direct {v1, p0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$2;-><init>(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method

.method public onAdCanceled()V
    .locals 2

    .prologue
    .line 185
    const-string v0, "admob ads"

    const-string v1, "CustomAdsEventInterstitial - onAdCanceled"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onDismissScreen()V

    .line 189
    :cond_0
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .prologue
    .line 176
    const-string v0, "admob ads"

    const-string v1, "CustomAdsEventInterstitial - onAdClicked"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->cac:Lcom/etermax/adsinterface/a/d;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/d;->dismiss()V

    .line 179
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onLeaveApplication()V

    .line 181
    :cond_0
    return-void
.end method

.method protected requestCustomInterstitialAd(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    const-string v0, "admob ads"

    const-string v1, "Requesting Custom Ad"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object p2, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mActivity:Landroid/app/Activity;

    .line 53
    iput-object p1, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mHandler:Landroid/os/Handler;

    .line 56
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 58
    const-string v0, "admob ads"

    const-string v1, "Custom ads can only be called from a FragmentActivity!"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->loadingView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->interstitial_loading:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->loadingView:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->loadingView:Landroid/view/View;

    sget v1, Lcom/etermax/i;->interstitial_loading_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/o;->loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_1
    new-instance v0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;

    invoke-direct {v0, p0}, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial$1;-><init>(Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;)V

    invoke-static {p2, p4, v0}, Lcom/etermax/adsinterface/a/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/etermax/adsinterface/a/c;)V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 168
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->loadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 170
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v2, p0, Lcom/etermax/admob/custom/EtermaxSpecialAdsCustomEventInterstitial;->loadingView:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    :cond_0
    return-void
.end method
