.class Lcom/amazon/device/ads/InterstitialAdActivityAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field private adController:Lcom/amazon/device/ads/AdController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/InterstitialAdActivityAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/amazon/device/ads/InterstitialAdActivityAdapter;Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/AdController;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    return-object p1
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method getAdController()Lcom/amazon/device/ads/AdController;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/amazon/device/ads/AdControllerFactory;->getCachedAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    .line 61
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->LOGTAG:Ljava/lang/String;

    const-string v1, "Failed to show interstitial ad due to an error in the Activity."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/amazon/device/ads/InterstitialAd;->resetIsAdShowing()V

    .line 65
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 78
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    iget-object v1, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->setAdActivity(Landroid/app/Activity;)V

    .line 69
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    new-instance v1, Lcom/amazon/device/ads/InterstitialAdActivityAdapter$InterstitialAdSDKEventListener;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/InterstitialAdActivityAdapter$InterstitialAdSDKEventListener;-><init>(Lcom/amazon/device/ads/InterstitialAdActivityAdapter;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->addSDKEventListener(Lcom/amazon/device/ads/SDKEventListener;)V

    .line 71
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getView()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 72
    if-eqz v0, :cond_1

    .line 74
    iget-object v1, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getView()Lcom/amazon/device/ads/AdContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getView()Lcom/amazon/device/ads/AdContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->adShown()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->closeAd()Z

    .line 102
    :cond_0
    return-void
.end method

.method public preOnCreate()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 43
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 45
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->hideActionAndStatusBars(Landroid/app/Activity;)V

    .line 52
    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/amazon/device/ads/InterstitialAdActivityAdapter;->activity:Landroid/app/Activity;

    .line 33
    return-void
.end method
