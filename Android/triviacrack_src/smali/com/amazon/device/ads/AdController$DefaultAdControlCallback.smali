.class Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/AdControlCallback;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdController;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdController;)V
    .locals 0
    .parameter

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClosing()I
    .locals 2

    .prologue
    .line 1483
    const-string v0, "AdController"

    const-string v1, "DefaultAdControlCallback adClosing called"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    const/4 v0, 0x1

    return v0
.end method

.method public isAdReady(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 1446
    const-string v0, "AdController"

    const-string v1, "DefaultAdControlCallback isAdReady called"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->READY_TO_LOAD:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdEvent(Lcom/amazon/device/ads/AdEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 1477
    const-string v0, "AdController"

    const-string v1, "DefaultAdControlCallback onAdEvent called"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    return-void
.end method

.method public onAdFailed(Lcom/amazon/device/ads/AdError;)V
    .locals 2
    .parameter

    .prologue
    .line 1471
    const-string v0, "AdController"

    const-string v1, "DefaultAdControlCallback onAdFailed called"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/AdProperties;)V
    .locals 2
    .parameter

    .prologue
    .line 1453
    const-string v0, "AdController"

    const-string v1, "DefaultAdControlCallback onAdLoaded called"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    return-void
.end method

.method public onAdRendered()V
    .locals 2

    .prologue
    .line 1459
    const-string v0, "AdController"

    const-string v1, "DefaultAdControlCallback onAdRendered called"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    return-void
.end method

.method public postAdRendered()V
    .locals 2

    .prologue
    .line 1465
    const-string v0, "AdController"

    const-string v1, "DefaultAdControlCallback postAdRendered called"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    return-void
.end method
