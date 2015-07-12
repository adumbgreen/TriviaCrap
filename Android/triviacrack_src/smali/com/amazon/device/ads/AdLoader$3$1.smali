.class Lcom/amazon/device/ads/AdLoader$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdLoader$3;->startUpFailed()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdLoader$3;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdLoader$3;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/amazon/device/ads/AdLoader$3$1;->this$0:Lcom/amazon/device/ads/AdLoader$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 515
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v2, "The configuration was unable to be loaded"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    .line 516
    iget-object v1, p0, Lcom/amazon/device/ads/AdLoader$3$1;->this$0:Lcom/amazon/device/ads/AdLoader$3;

    iget-object v1, v1, Lcom/amazon/device/ads/AdLoader$3;->val$requestAdSlots:Ljava/util/ArrayList;

    #calls: Lcom/amazon/device/ads/AdLoader;->failAds(Lcom/amazon/device/ads/AdError;Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/amazon/device/ads/AdLoader;->access$200(Lcom/amazon/device/ads/AdError;Ljava/util/List;)V

    .line 517
    return-void
.end method
