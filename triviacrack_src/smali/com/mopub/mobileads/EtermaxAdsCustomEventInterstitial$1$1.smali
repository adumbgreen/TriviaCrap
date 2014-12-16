.class Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->onAdInfoLoadedOk(Lcom/etermax/adsinterface/a/a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLoadCompleted(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->c(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 68
    const-string v0, "mopub ads"

    const-string v1, "finished loading custom image"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->a(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 70
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->a(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 71
    return-void
.end method

.method public contentLoadCompleted(Landroid/webkit/WebView;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->c(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 76
    const-string v0, "mopub ads"

    const-string v1, "finished loading custom web content"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->a(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->a(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 79
    return-void
.end method

.method public contentLoadFailed(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;->a:Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->c(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 62
    const-string v0, "mopub ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load custom content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
