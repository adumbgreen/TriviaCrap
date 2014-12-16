.class Lcom/mopub/mobileads/MillennialBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "SourceFile"


# static fields
.field public static final AD_HEIGHT_KEY:Ljava/lang/String; = "adHeight"

.field public static final AD_WIDTH_KEY:Ljava/lang/String; = "adWidth"

.field public static final APID_KEY:Ljava/lang/String; = "adUnitID"


# instance fields
.field private a:Lcom/millennialmedia/android/MMAdView;

.field private b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/MillennialBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

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
    .line 78
    :try_start_0
    const-string v0, "adWidth"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 79
    const-string v0, "adHeight"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const-string v0, "adUnitID"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/mopub/mobileads/MillennialBanner;)Lcom/millennialmedia/android/MMAdView;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner;->a:Lcom/millennialmedia/android/MMAdView;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;",
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
    .line 32
    iput-object p2, p0, Lcom/mopub/mobileads/MillennialBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 38
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/MillennialBanner;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "adUnitID"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    const-string v1, "adWidth"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 41
    const-string v1, "adHeight"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 47
    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->initialize(Landroid/content/Context;)V

    .line 49
    new-instance v3, Lcom/millennialmedia/android/MMAdView;

    invoke-direct {v3, p1}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mopub/mobileads/MillennialBanner;->a:Lcom/millennialmedia/android/MMAdView;

    .line 50
    iget-object v3, p0, Lcom/mopub/mobileads/MillennialBanner;->a:Lcom/millennialmedia/android/MMAdView;

    new-instance v4, Lcom/mopub/mobileads/w;

    invoke-direct {v4, p0}, Lcom/mopub/mobileads/w;-><init>(Lcom/mopub/mobileads/MillennialBanner;)V

    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 52
    iget-object v3, p0, Lcom/mopub/mobileads/MillennialBanner;->a:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v3, v0}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner;->a:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdView;->setWidth(I)V

    .line 54
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner;->a:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setHeight(I)V

    .line 56
    const-string v0, "location"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-static {v0}, Lcom/millennialmedia/android/MMRequest;->setUserLocation(Landroid/location/Location;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner;->a:Lcom/millennialmedia/android/MMAdView;

    new-instance v1, Lcom/millennialmedia/android/MMRequest;

    invoke-direct {v1}, Lcom/millennialmedia/android/MMRequest;-><init>()V

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    .line 62
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner;->a:Lcom/millennialmedia/android/MMAdView;

    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->getDefaultAdId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    .line 63
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner;->a:Lcom/millennialmedia/android/MMAdView;

    invoke-static {v0}, Lcom/mopub/mobileads/AdViewController;->a(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner;->a:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    .line 65
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner;->a:Lcom/millennialmedia/android/MMAdView;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialBanner;->a:Lcom/millennialmedia/android/MMAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 74
    :cond_0
    return-void
.end method
