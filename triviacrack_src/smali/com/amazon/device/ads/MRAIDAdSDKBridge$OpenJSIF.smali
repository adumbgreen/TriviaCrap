.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;
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
    .line 1637
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1637
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->open(Ljava/lang/String;)V

    .line 1643
    return-void
.end method
