.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->run()V
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;

.field private triggered:Z


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;)V
    .locals 1
    .parameter

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6$1;->this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6$1;->triggered:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 1025
    iget-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6$1;->triggered:Z

    if-nez v0, :cond_0

    .line 1027
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6$1;->triggered:Z

    .line 1029
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6$1;->this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;

    iget-object v0, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    new-instance v1, Lcom/amazon/device/ads/AdEvent;

    sget-object v2, Lcom/amazon/device/ads/AdEvent$AdEventType;->CLOSED:Lcom/amazon/device/ads/AdEvent$AdEventType;

    invoke-direct {v1, v2}, Lcom/amazon/device/ads/AdEvent;-><init>(Lcom/amazon/device/ads/AdEvent$AdEventType;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->fireAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    .line 1031
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6$1;->this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;

    iget-object v0, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    const-string v1, "mraidBridge.stateChange(\'default\');"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6$1;->this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;

    iget-object v0, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->reportSizeChangeEvent()V

    .line 1034
    :cond_0
    return-void
.end method
