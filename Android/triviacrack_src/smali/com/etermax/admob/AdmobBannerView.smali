.class public Lcom/etermax/admob/AdmobBannerView;
.super Lcom/etermax/adsinterface/AdBannerDefaultView;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/ads/AdView;

.field private b:Lcom/google/android/gms/ads/AdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/etermax/adsinterface/AdBannerDefaultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Lcom/etermax/admob/AdmobBannerView$1;

    invoke-direct {v0, p0}, Lcom/etermax/admob/AdmobBannerView$1;-><init>(Lcom/etermax/admob/AdmobBannerView;)V

    iput-object v0, p0, Lcom/etermax/admob/AdmobBannerView;->b:Lcom/google/android/gms/ads/AdListener;

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/etermax/admob/AdmobBannerView;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/etermax/admob/AdmobBannerView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/admob/AdmobBannerView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/etermax/admob/AdmobBannerView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/admob/AdmobBannerView;->a:Lcom/google/android/gms/ads/AdView;

    .line 46
    iget-object v0, p0, Lcom/etermax/admob/AdmobBannerView;->a:Lcom/google/android/gms/ads/AdView;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 47
    iget-object v0, p0, Lcom/etermax/admob/AdmobBannerView;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/etermax/admob/AdmobBannerView;->a:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/etermax/admob/AdmobBannerView;->b:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 49
    iget-object v0, p0, Lcom/etermax/admob/AdmobBannerView;->a:Lcom/google/android/gms/ads/AdView;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/admob/AdmobBannerView;->addView(Landroid/view/View;II)V

    .line 50
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "ADMOB"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/etermax/admob/AdmobBannerView;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/etermax/admob/AdmobBannerView;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 75
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/etermax/admob/AdmobBannerView;->b:Lcom/google/android/gms/ads/AdListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 42
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string v0, "ADMOB"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/etermax/admob/AdmobBannerView;->a:Lcom/google/android/gms/ads/AdView;

    if-nez v0, :cond_1

    .line 34
    invoke-virtual {p0, p1}, Lcom/etermax/admob/AdmobBannerView;->a(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/etermax/admob/AdmobBannerView;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/etermax/admob/AdmobBannerView;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/etermax/admob/AdmobBannerView;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "ADMOB"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/etermax/admob/AdmobBannerView;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/etermax/admob/AdmobBannerView;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/admob/AdmobBannerView;->a:Lcom/google/android/gms/ads/AdView;

    .line 84
    :cond_0
    return-void
.end method
