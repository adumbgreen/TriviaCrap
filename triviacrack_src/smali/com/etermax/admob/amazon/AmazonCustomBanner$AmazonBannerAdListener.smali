.class Lcom/etermax/admob/amazon/AmazonCustomBanner$AmazonBannerAdListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/AdListener;


# instance fields
.field final synthetic this$0:Lcom/etermax/admob/amazon/AmazonCustomBanner;


# direct methods
.method constructor <init>(Lcom/etermax/admob/amazon/AmazonCustomBanner;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/etermax/admob/amazon/AmazonCustomBanner$AmazonBannerAdListener;->this$0:Lcom/etermax/admob/amazon/AmazonCustomBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    const-string v0, "MoPub"

    const-string v1, "Amazon banner collapsed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    const-string v0, "MoPub"

    const-string v1, "Amazon banner dismissed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    const-string v0, "MoPub"

    const-string v1, "Amazon banner expanded"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomBanner$AmazonBannerAdListener;->this$0:Lcom/etermax/admob/amazon/AmazonCustomBanner;

    #getter for: Lcom/etermax/admob/amazon/AmazonCustomBanner;->mBannerListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;
    invoke-static {v0}, Lcom/etermax/admob/amazon/AmazonCustomBanner;->access$000(Lcom/etermax/admob/amazon/AmazonCustomBanner;)Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onClick()V

    .line 87
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 91
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Amazon banner failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomBanner$AmazonBannerAdListener;->this$0:Lcom/etermax/admob/amazon/AmazonCustomBanner;

    #getter for: Lcom/etermax/admob/amazon/AmazonCustomBanner;->mBannerListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;
    invoke-static {v0}, Lcom/etermax/admob/amazon/AmazonCustomBanner;->access$000(Lcom/etermax/admob/amazon/AmazonCustomBanner;)Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    .line 93
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    const-string v0, "MoPub"

    const-string v1, "Amazon banner loaded"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/etermax/admob/amazon/AmazonCustomBanner$AmazonBannerAdListener;->this$0:Lcom/etermax/admob/amazon/AmazonCustomBanner;

    #getter for: Lcom/etermax/admob/amazon/AmazonCustomBanner;->mBannerListener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;
    invoke-static {v0}, Lcom/etermax/admob/amazon/AmazonCustomBanner;->access$000(Lcom/etermax/admob/amazon/AmazonCustomBanner;)Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    move-result-object v0

    check-cast p1, Lcom/amazon/device/ads/AdLayout;

    invoke-interface {v0, p1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onReceivedAd(Landroid/view/View;)V

    .line 99
    return-void
.end method
