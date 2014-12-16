.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/PreloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expand(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

.field final synthetic val$expandProperties:Lcom/amazon/device/ads/ExpandProperties;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ExpandProperties;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 662
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;->val$expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreloadComplete(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 667
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    const-string v1, "mraidBridge.stateChange(\'expanded\');"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascriptPreload(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    const-string v1, "mraidBridge.ready();"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascriptPreload(Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;->val$expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandAd(Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)V

    .line 671
    return-void
.end method
