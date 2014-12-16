.class abstract Lcom/mopub/mobileads/ResponseBodyInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/mopub/mobileads/AdConfiguration;

.field c:J

.field private d:Lcom/mopub/mobileads/p;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    return-void
.end method

.method private b(Ljava/util/Map;)Z
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
    .line 55
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 27
    iput-object p1, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->a:Landroid/content/Context;

    .line 29
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/ResponseBodyInterstitial;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p0, p4}, Lcom/mopub/mobileads/ResponseBodyInterstitial;->a(Ljava/util/Map;)V

    .line 36
    invoke-static {p3}, Lcom/mopub/mobileads/AdConfiguration;->a(Ljava/util/Map;)Lcom/mopub/mobileads/AdConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->b:Lcom/mopub/mobileads/AdConfiguration;

    .line 37
    iget-object v0, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->b:Lcom/mopub/mobileads/AdConfiguration;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->b:Lcom/mopub/mobileads/AdConfiguration;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdConfiguration;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->c:J

    .line 41
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/p;

    iget-wide v1, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->c:J

    invoke-direct {v0, p2, v1, v2}, Lcom/mopub/mobileads/p;-><init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;J)V

    iput-object v0, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->d:Lcom/mopub/mobileads/p;

    .line 42
    iget-object v0, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->d:Lcom/mopub/mobileads/p;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/p;->register(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/ResponseBodyInterstitial;->a(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    .line 45
    :goto_0
    return-void

    .line 32
    :cond_1
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected abstract a(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
.end method

.method protected abstract a(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->d:Lcom/mopub/mobileads/p;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->d:Lcom/mopub/mobileads/p;

    invoke-virtual {v0}, Lcom/mopub/mobileads/p;->unregister()V

    .line 52
    :cond_0
    return-void
.end method
