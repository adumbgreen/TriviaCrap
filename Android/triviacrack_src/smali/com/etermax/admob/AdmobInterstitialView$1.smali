.class Lcom/etermax/admob/AdmobInterstitialView$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/admob/AdmobInterstitialView;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/admob/AdmobInterstitialView;


# direct methods
.method constructor <init>(Lcom/etermax/admob/AdmobInterstitialView;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/etermax/admob/AdmobInterstitialView$1;->a:Lcom/etermax/admob/AdmobInterstitialView;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/admob/AdmobInterstitialView$1;->a:Lcom/etermax/admob/AdmobInterstitialView;

    invoke-static {v0}, Lcom/etermax/admob/AdmobInterstitialView;->a(Lcom/etermax/admob/AdmobInterstitialView;)Lcom/etermax/adsinterface/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/adsinterface/c;->c()V

    .line 75
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .parameter

    .prologue
    .line 64
    const-string v0, "ADMOB-INTERSTITIAL"

    const-string v1, "onAdFailedToLoad"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/etermax/admob/AdmobInterstitialView$1;->a:Lcom/etermax/admob/AdmobInterstitialView;

    invoke-static {v0}, Lcom/etermax/admob/AdmobInterstitialView;->a(Lcom/etermax/admob/AdmobInterstitialView;)Lcom/etermax/adsinterface/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/adsinterface/c;->a()V

    .line 66
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/etermax/admob/AdmobInterstitialView$1;->a:Lcom/etermax/admob/AdmobInterstitialView;

    invoke-static {v0}, Lcom/etermax/admob/AdmobInterstitialView;->a(Lcom/etermax/admob/AdmobInterstitialView;)Lcom/etermax/adsinterface/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/adsinterface/c;->d()V

    .line 71
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "ADMOB-INTERSTITIAL"

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/etermax/admob/AdmobInterstitialView$1;->a:Lcom/etermax/admob/AdmobInterstitialView;

    invoke-static {v0}, Lcom/etermax/admob/AdmobInterstitialView;->a(Lcom/etermax/admob/AdmobInterstitialView;)Lcom/etermax/adsinterface/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/adsinterface/c;->b()V

    .line 60
    return-void
.end method
