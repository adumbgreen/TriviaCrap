.class Lcom/amazon/device/ads/InterstitialAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/InterstitialAd;->callOnAdLoadedOnMainThread(Lcom/amazon/device/ads/AdProperties;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/InterstitialAd;

.field final synthetic val$adProperties:Lcom/amazon/device/ads/AdProperties;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/InterstitialAd;Lcom/amazon/device/ads/AdProperties;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/amazon/device/ads/InterstitialAd$1;->this$0:Lcom/amazon/device/ads/InterstitialAd;

    iput-object p2, p0, Lcom/amazon/device/ads/InterstitialAd$1;->val$adProperties:Lcom/amazon/device/ads/AdProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/amazon/device/ads/InterstitialAd$1;->this$0:Lcom/amazon/device/ads/InterstitialAd;

    iget-object v1, p0, Lcom/amazon/device/ads/InterstitialAd$1;->val$adProperties:Lcom/amazon/device/ads/AdProperties;

    #calls: Lcom/amazon/device/ads/InterstitialAd;->callOnAdLoaded(Lcom/amazon/device/ads/AdProperties;)V
    invoke-static {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;->access$000(Lcom/amazon/device/ads/InterstitialAd;Lcom/amazon/device/ads/AdProperties;)V

    .line 404
    return-void
.end method
