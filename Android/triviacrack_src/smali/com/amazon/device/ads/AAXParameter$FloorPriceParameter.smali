.class Lcom/amazon/device/ads/AAXParameter$FloorPriceParameter;
.super Lcom/amazon/device/ads/AAXParameter$LongParameter;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 512
    const-string v0, "ec"

    const-string v1, "debug.ec"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$LongParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void
.end method


# virtual methods
.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Long;
    .locals 2
    .parameter

    .prologue
    .line 518
    #getter for: Lcom/amazon/device/ads/AAXParameter$ParameterData;->loiSlot:Lcom/amazon/device/ads/AdRequest$LOISlot;
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$300(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$LOISlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdRequest$LOISlot;->getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdTargetingOptions;->hasFloorPrice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    #getter for: Lcom/amazon/device/ads/AAXParameter$ParameterData;->loiSlot:Lcom/amazon/device/ads/AdRequest$LOISlot;
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$300(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$LOISlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdRequest$LOISlot;->getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdTargetingOptions;->getFloorPrice()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 522
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$FloorPriceParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
