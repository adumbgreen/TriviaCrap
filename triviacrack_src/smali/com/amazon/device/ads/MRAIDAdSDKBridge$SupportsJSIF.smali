.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/AdSDKBridge$AdSDKBridgeJavascriptInterface;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method private constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 0
    .parameter

    .prologue
    .line 1645
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1645
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getSupportedFeatures()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
