.class Lcom/mopub/mobileads/MillennialInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "SourceFile"


# static fields
.field public static final APID_KEY:Ljava/lang/String; = "adUnitID"


# instance fields
.field private a:Lcom/millennialmedia/android/MMInterstitial;

.field private b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/MillennialInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    return-object v0
.end method

.method private a(Ljava/util/Map;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 74
    const-string v0, "adUnitID"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/mopub/mobileads/MillennialInterstitial;)Lcom/millennialmedia/android/MMInterstitial;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial;->a:Lcom/millennialmedia/android/MMInterstitial;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    iput-object p2, p0, Lcom/mopub/mobileads/MillennialInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 34
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/MillennialInterstitial;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    const-string v0, "adUnitID"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->initialize(Landroid/content/Context;)V

    .line 43
    const-string v1, "location"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 44
    if-eqz v1, :cond_0

    .line 45
    invoke-static {v1}, Lcom/millennialmedia/android/MMRequest;->setUserLocation(Landroid/location/Location;)V

    .line 48
    :cond_0
    new-instance v1, Lcom/millennialmedia/android/MMInterstitial;

    invoke-direct {v1, p1}, Lcom/millennialmedia/android/MMInterstitial;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mobileads/MillennialInterstitial;->a:Lcom/millennialmedia/android/MMInterstitial;

    .line 49
    iget-object v1, p0, Lcom/mopub/mobileads/MillennialInterstitial;->a:Lcom/millennialmedia/android/MMInterstitial;

    new-instance v2, Lcom/mopub/mobileads/x;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/x;-><init>(Lcom/mopub/mobileads/MillennialInterstitial;)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMInterstitial;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 50
    iget-object v1, p0, Lcom/mopub/mobileads/MillennialInterstitial;->a:Lcom/millennialmedia/android/MMInterstitial;

    new-instance v2, Lcom/millennialmedia/android/MMRequest;

    invoke-direct {v2}, Lcom/millennialmedia/android/MMRequest;-><init>()V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMInterstitial;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    .line 51
    iget-object v1, p0, Lcom/mopub/mobileads/MillennialInterstitial;->a:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMInterstitial;->setApid(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial;->a:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->fetch()V

    .line 53
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial;->b:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial;->a:Lcom/millennialmedia/android/MMInterstitial;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial;->a:Lcom/millennialmedia/android/MMInterstitial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMInterstitial;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 71
    :cond_0
    return-void
.end method

.method protected showInterstitial()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial;->a:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitial;->a:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->display()Z

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Tried to show a Millennial interstitial ad before it finished loading. Please try again."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
