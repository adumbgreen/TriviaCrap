.class public Lcom/etermax/admob/AdmobInterstitialView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/b;


# instance fields
.field private a:Lcom/google/android/gms/ads/InterstitialAd;

.field private b:Lcom/etermax/adsinterface/c;

.field private c:Lcom/google/android/gms/ads/AdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Lcom/etermax/admob/AdmobInterstitialView$1;

    invoke-direct {v0, p0}, Lcom/etermax/admob/AdmobInterstitialView$1;-><init>(Lcom/etermax/admob/AdmobInterstitialView;)V

    iput-object v0, p0, Lcom/etermax/admob/AdmobInterstitialView;->c:Lcom/google/android/gms/ads/AdListener;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/etermax/admob/AdmobInterstitialView;)Lcom/etermax/adsinterface/c;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/etermax/admob/AdmobInterstitialView;->b:Lcom/etermax/adsinterface/c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/etermax/adsinterface/c;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    .line 36
    if-eqz p2, :cond_0

    .line 37
    invoke-interface {p2}, Lcom/etermax/adsinterface/c;->a()V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/etermax/admob/AdmobInterstitialView;->a:Lcom/google/android/gms/ads/InterstitialAd;

    if-nez v0, :cond_2

    .line 43
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/admob/AdmobInterstitialView;->a:Lcom/google/android/gms/ads/InterstitialAd;

    .line 44
    iget-object v0, p0, Lcom/etermax/admob/AdmobInterstitialView;->a:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/etermax/admob/AdmobInterstitialView;->a:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/etermax/admob/AdmobInterstitialView;->c:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 47
    iput-object p2, p0, Lcom/etermax/admob/AdmobInterstitialView;->b:Lcom/etermax/adsinterface/c;

    .line 49
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/etermax/admob/AdmobInterstitialView;->a:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0
.end method

.method public a(Lcom/etermax/adsinterface/d;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-static {p1}, Lcom/etermax/adsinterface/f;->a(Lcom/etermax/adsinterface/d;)V

    .line 83
    invoke-virtual {p0}, Lcom/etermax/admob/AdmobInterstitialView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/etermax/admob/AdmobInterstitialView;->a:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-interface {p1}, Lcom/etermax/adsinterface/d;->a()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etermax/admob/AdmobInterstitialView;->a:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/admob/AdmobInterstitialView;->a:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
