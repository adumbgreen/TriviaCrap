.class final Lcom/amazon/device/ads/AdLoader$3;
.super Lcom/amazon/device/ads/StartUpWaiter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdLoader;->loadAds(ILcom/amazon/device/ads/AdTargetingOptions;[Lcom/amazon/device/ads/AdSlot;)V
.end annotation


# instance fields
.field final synthetic val$requestAdSlots:Ljava/util/ArrayList;

.field final synthetic val$requestOptions:Lcom/amazon/device/ads/AdTargetingOptions;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(ILcom/amazon/device/ads/AdTargetingOptions;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 498
    iput p1, p0, Lcom/amazon/device/ads/AdLoader$3;->val$timeout:I

    iput-object p2, p0, Lcom/amazon/device/ads/AdLoader$3;->val$requestOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    iput-object p3, p0, Lcom/amazon/device/ads/AdLoader$3;->val$requestAdSlots:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/amazon/device/ads/StartUpWaiter;-><init>()V

    return-void
.end method


# virtual methods
.method protected startUpFailed()V
    .locals 1

    .prologue
    .line 510
    new-instance v0, Lcom/amazon/device/ads/AdLoader$3$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdLoader$3$1;-><init>(Lcom/amazon/device/ads/AdLoader$3;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 519
    return-void
.end method

.method protected startUpReady()V
    .locals 3

    .prologue
    .line 502
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/device/ads/IInternalAdRegistration;->register()V

    .line 503
    iget v0, p0, Lcom/amazon/device/ads/AdLoader$3;->val$timeout:I

    iget-object v1, p0, Lcom/amazon/device/ads/AdLoader$3;->val$requestOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    iget-object v2, p0, Lcom/amazon/device/ads/AdLoader$3;->val$requestAdSlots:Ljava/util/ArrayList;

    #calls: Lcom/amazon/device/ads/AdLoader;->beginFetchAds(ILcom/amazon/device/ads/AdTargetingOptions;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/AdLoader;->access$100(ILcom/amazon/device/ads/AdTargetingOptions;Ljava/util/List;)V

    .line 504
    return-void
.end method
