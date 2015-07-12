.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->run()V
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;

.field private triggered:Z


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;)V
    .locals 1
    .parameter

    .prologue
    .line 1264
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9$1;->this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9$1;->triggered:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1272
    iget-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9$1;->triggered:Z

    if-nez v0, :cond_0

    .line 1274
    iput-boolean v6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9$1;->triggered:Z

    .line 1275
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1276
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9$1;->this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;

    iget-object v1, v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3100(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1277
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    iget-object v5, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9$1;->this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;

    iget-object v5, v5, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3100(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v0, v0, v6

    iget-object v5, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9$1;->this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;

    iget-object v5, v5, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3100(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1282
    new-instance v0, Lcom/amazon/device/ads/AdEvent;

    sget-object v2, Lcom/amazon/device/ads/AdEvent$AdEventType;->RESIZED:Lcom/amazon/device/ads/AdEvent$AdEventType;

    invoke-direct {v0, v2}, Lcom/amazon/device/ads/AdEvent;-><init>(Lcom/amazon/device/ads/AdEvent$AdEventType;)V

    .line 1283
    const-string v2, "positionOnScreen"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/AdEvent;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/device/ads/AdEvent;

    .line 1284
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9$1;->this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;

    iget-object v1, v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;
    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->fireAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    .line 1286
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9$1;->this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;

    iget-object v0, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    const-string v1, "mraidBridge.stateChange(\'resized\');"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9$1;->this$1:Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;

    iget-object v0, v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->reportSizeChangeEvent()V

    .line 1289
    :cond_0
    return-void
.end method
