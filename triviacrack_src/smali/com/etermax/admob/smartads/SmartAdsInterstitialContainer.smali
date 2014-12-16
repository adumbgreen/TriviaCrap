.class public Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;
.super Lcom/etermax/admob/smartads/SmartAdsBaseContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/admob/smartads/SmartAdsBaseContainer",
        "<",
        "Lcom/smartadserver/android/library/SASInterstitialView;",
        "Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;",
        ">;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/etermax/admob/smartads/SmartAdsBaseContainer;-><init>(Landroid/app/Activity;ILjava/lang/String;I)V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;->mHandler:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected adClicked()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method protected getResponseHandler(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;)Lcom/smartadserver/android/library/ui/a;
    .locals 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;->mView:Lcom/smartadserver/android/library/ui/SASAdView;

    check-cast v0, Lcom/smartadserver/android/library/SASInterstitialView;

    new-instance v1, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$1;

    invoke-direct {v1, p0, p1}, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$1;-><init>(Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Lcom/smartadserver/android/library/ui/c;)V

    .line 55
    new-instance v0, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2;

    invoke-direct {v0, p0}, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2;-><init>(Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;)V

    return-object v0
.end method

.method protected bridge synthetic getResponseHandler(Lcom/google/ads/mediation/customevent/CustomEventListener;)Lcom/smartadserver/android/library/ui/a;
    .locals 1
    .parameter

    .prologue
    .line 17
    check-cast p1, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-virtual {p0, p1}, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;->getResponseHandler(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;)Lcom/smartadserver/android/library/ui/a;

    move-result-object v0

    return-object v0
.end method

.method protected initAdsView(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    new-instance v0, Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/SASInterstitialView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;->mView:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 30
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;->mView:Lcom/smartadserver/android/library/ui/SASAdView;

    check-cast v0, Lcom/smartadserver/android/library/SASInterstitialView;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;->getLoader(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/SASInterstitialView;->setLoaderView(Landroid/view/View;)V

    .line 31
    const/16 v0, 0x2ee0

    invoke-static {v0}, Lcom/smartadserver/android/library/SASInterstitialView;->setDefaultAdLoadingTimeout(I)V

    .line 32
    return-void
.end method
