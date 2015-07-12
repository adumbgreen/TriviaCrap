.class Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;->onAdInfoLoadedOk(Lcom/etermax/adsinterface/a/a;)V
.end annotation


# instance fields
.field final synthetic this$1:Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;


# direct methods
.method constructor <init>(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1$1;->this$1:Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLoadCompleted(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1$1;->this$1:Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;

    #getter for: Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->access$200(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V

    .line 78
    const-string v0, "admob ads"

    const-string v1, "finished loading custom image"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1$1;->this$1:Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;

    #setter for: Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->imageAd:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->access$402(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 80
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1$1;->this$1:Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;

    const/4 v1, 0x0

    #setter for: Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->webAd:Landroid/webkit/WebView;
    invoke-static {v0, v1}, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->access$502(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 81
    return-void
.end method

.method public contentLoadCompleted(Landroid/webkit/WebView;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1$1;->this$1:Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;

    #getter for: Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->access$200(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V

    .line 86
    const-string v0, "admob ads"

    const-string v1, "finished loading custom web content"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1$1;->this$1:Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;

    #setter for: Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->webAd:Landroid/webkit/WebView;
    invoke-static {v0, p1}, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->access$502(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 88
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1$1;->this$1:Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;

    const/4 v1, 0x0

    #setter for: Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->imageAd:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->access$402(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 89
    return-void
.end method

.method public contentLoadFailed(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1$1;->this$1:Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;

    iget-object v0, v0, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial$1;->this$0:Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;

    #getter for: Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->mListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;->access$200(Lcom/etermax/admob/custom/EtermaxAdsCustomEventInterstitial;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 72
    const-string v0, "admob ads"

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

    .line 73
    return-void
.end method
