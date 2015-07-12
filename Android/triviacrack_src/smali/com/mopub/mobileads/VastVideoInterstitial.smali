.class Lcom/mopub/mobileads/VastVideoInterstitial;
.super Lcom/mopub/mobileads/ResponseBodyInterstitial;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;


# instance fields
.field private d:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private e:Ljava/lang/String;

.field private f:Lcom/mopub/mobileads/util/vast/VastManager;

.field private g:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mopub/mobileads/ResponseBodyInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->d:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 27
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/CacheService;->initializeDiskCache(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->d:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/mobileads/factories/VastManagerFactory;->create(Landroid/content/Context;)Lcom/mopub/mobileads/util/vast/VastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->f:Lcom/mopub/mobileads/util/vast/VastManager;

    .line 33
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->f:Lcom/mopub/mobileads/util/vast/VastManager;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mopub/mobileads/util/vast/VastManager;->prepareVastVideoConfiguration(Ljava/lang/String;Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;)V

    goto :goto_0
.end method

.method protected a(Ljava/util/Map;)V
    .locals 1
    .parameter
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

    .prologue
    .line 20
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->e:Ljava/lang/String;

    .line 21
    return-void
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->f:Lcom/mopub/mobileads/util/vast/VastManager;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->f:Lcom/mopub/mobileads/util/vast/VastManager;

    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/VastManager;->cancel()V

    .line 47
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/ResponseBodyInterstitial;->onInvalidate()V

    .line 48
    return-void
.end method

.method public onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->d:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_DOWNLOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->g:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    .line 62
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->d:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    goto :goto_0
.end method

.method protected showInterstitial()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->g:Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->b:Lcom/mopub/mobileads/AdConfiguration;

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a(Landroid/content/Context;Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;Lcom/mopub/mobileads/AdConfiguration;)V

    .line 39
    return-void
.end method
