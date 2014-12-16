.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->run()V
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;

.field private triggered:Z


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;)V
    .locals 1
    .parameter

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8$1;->this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8$1;->triggered:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 1167
    iget-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8$1;->triggered:Z

    if-nez v0, :cond_0

    .line 1169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8$1;->triggered:Z

    .line 1170
    invoke-static {}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Expand ViewTreeObserver fired"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8$1;->this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;

    iget-object v0, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/AdEvent;

    sget-object v2, Lcom/amazon/device/ads/AdEvent$AdEventType;->EXPANDED:Lcom/amazon/device/ads/AdEvent$AdEventType;

    invoke-direct {v1, v2}, Lcom/amazon/device/ads/AdEvent;-><init>(Lcom/amazon/device/ads/AdEvent$AdEventType;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->fireAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    .line 1174
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8$1;->this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;

    iget-object v0, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    const-string v1, "mraidBridge.stateChange(\'expanded\');"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 1175
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8$1;->this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;

    iget-object v0, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->reportSizeChangeEvent()V

    .line 1176
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8$1;->this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;

    iget-object v0, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationPropertyChange()V

    .line 1178
    :cond_0
    return-void
.end method
