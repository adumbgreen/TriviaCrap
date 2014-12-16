.class Lcom/mopub/mobileads/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MillennialBanner;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MillennialBanner;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mopub/mobileads/w;->a:Lcom/mopub/mobileads/MillennialBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    const-string v0, "MoPub"

    const-string v1, "Millennial banner ad closed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/mopub/mobileads/w;->a:Lcom/mopub/mobileads/MillennialBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialBanner;->a(Lcom/mopub/mobileads/MillennialBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerCollapsed()V

    .line 98
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    const-string v0, "MoPub"

    const-string v1, "Millennial banner ad Launched."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/mopub/mobileads/w;->a:Lcom/mopub/mobileads/MillennialBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialBanner;->a(Lcom/mopub/mobileads/MillennialBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    .line 92
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    return-void
.end method

.method public onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mopub/mobileads/w;->a:Lcom/mopub/mobileads/MillennialBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialBanner;->a(Lcom/mopub/mobileads/MillennialBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 118
    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .parameter

    .prologue
    .line 105
    const-string v0, "MoPub"

    const-string v1, "Millennial banner ad loaded successfully. Showing ad..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/mopub/mobileads/w;->a:Lcom/mopub/mobileads/MillennialBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialBanner;->a(Lcom/mopub/mobileads/MillennialBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/w;->a:Lcom/mopub/mobileads/MillennialBanner;

    invoke-static {v1}, Lcom/mopub/mobileads/MillennialBanner;->b(Lcom/mopub/mobileads/MillennialBanner;)Lcom/millennialmedia/android/MMAdView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 111
    const-string v0, "MoPub"

    const-string v1, "Millennial banner ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/mopub/mobileads/w;->a:Lcom/mopub/mobileads/MillennialBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/MillennialBanner;->a(Lcom/mopub/mobileads/MillennialBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 113
    return-void
.end method
