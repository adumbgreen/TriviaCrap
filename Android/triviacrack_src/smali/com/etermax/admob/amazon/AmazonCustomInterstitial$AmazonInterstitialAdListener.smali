.class Lcom/etermax/admob/amazon/AmazonCustomInterstitial$AmazonInterstitialAdListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/AdListener;


# instance fields
.field final synthetic this$0:Lcom/etermax/admob/amazon/AmazonCustomInterstitial;


# direct methods
.method constructor <init>(Lcom/etermax/admob/amazon/AmazonCustomInterstitial;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial$AmazonInterstitialAdListener;->this$0:Lcom/etermax/admob/amazon/AmazonCustomInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    const-string v0, "MoPub"

    const-string v1, "Amazon interstitial collapsed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    const-string v0, "MoPub"

    const-string v1, "Amazon interstitial dismissed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial$AmazonInterstitialAdListener;->this$0:Lcom/etermax/admob/amazon/AmazonCustomInterstitial;

    #getter for: Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->mInterstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->access$000(Lcom/etermax/admob/amazon/AmazonCustomInterstitial;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onDismissScreen()V

    .line 87
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    const-string v0, "MoPub"

    const-string v1, "Amazon interstitial expanded"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 96
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Amazon interstitial failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial$AmazonInterstitialAdListener;->this$0:Lcom/etermax/admob/amazon/AmazonCustomInterstitial;

    #getter for: Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->mInterstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->access$000(Lcom/etermax/admob/amazon/AmazonCustomInterstitial;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 98
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 102
    const-string v0, "MoPub"

    const-string v1, "Amazon interstitial loaded"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomInterstitial$AmazonInterstitialAdListener;->this$0:Lcom/etermax/admob/amazon/AmazonCustomInterstitial;

    #getter for: Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->mInterstitialListener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/etermax/admob/amazon/AmazonCustomInterstitial;->access$000(Lcom/etermax/admob/amazon/AmazonCustomInterstitial;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V

    .line 104
    return-void
.end method
