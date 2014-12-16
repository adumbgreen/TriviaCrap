.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;
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
    .line 1589
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1589
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    return-void
.end method


# virtual methods
.method public execute(IIIILjava/lang/String;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->setResizeProperties(IIIILjava/lang/String;Z)V

    .line 1595
    return-void
.end method
