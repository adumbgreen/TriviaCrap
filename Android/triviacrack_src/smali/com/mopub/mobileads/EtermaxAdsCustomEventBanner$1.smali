.class Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;->a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Lorg/json/JSONObject;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

.field final synthetic c:Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner$1;->c:Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;

    iput-object p2, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner$1;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdInfoLoadedFailed(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    const-string v0, "mopub ads"

    const-string v1, "CustomEventBannerTemp - Could not read ad parameters"

    invoke-static {v0, v1, p1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner$1;->b:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 37
    return-void
.end method

.method public onAdInfoLoadedOk(Lcom/etermax/adsinterface/a/a;)V
    .locals 4
    .parameter

    .prologue
    .line 29
    iget-object v1, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner$1;->c:Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;

    new-instance v2, Lcom/etermax/adsinterface/a/i;

    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner$1;->c:Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;

    invoke-direct {v2, v0, p1, v3}, Lcom/etermax/adsinterface/a/i;-><init>(Landroid/app/Activity;Lcom/etermax/adsinterface/a/a;Lcom/etermax/adsinterface/a/m;)V

    invoke-static {v1, v2}, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;->a(Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;Lcom/etermax/adsinterface/a/i;)Lcom/etermax/adsinterface/a/i;

    .line 30
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner$1;->c:Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;->a(Lcom/mopub/mobileads/EtermaxAdsCustomEventBanner;)Lcom/etermax/adsinterface/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/i;->a()V

    .line 31
    return-void
.end method
