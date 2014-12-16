.class Lcom/amazon/device/ads/MraidAdSDKBridgeFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/AdSDKBridgeFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdSDKBridge(Lcom/amazon/device/ads/AdControlAccessor;)Lcom/amazon/device/ads/AdSDKBridge;
    .locals 1
    .parameter

    .prologue
    .line 14
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-direct {v0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;-><init>(Lcom/amazon/device/ads/AdControlAccessor;)V

    return-object v0
.end method
