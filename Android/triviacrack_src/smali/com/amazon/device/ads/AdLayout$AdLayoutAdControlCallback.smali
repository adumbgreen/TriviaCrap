.class Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/AdControlCallback;


# instance fields
.field private properties:Lcom/amazon/device/ads/AdProperties;

.field final synthetic this$0:Lcom/amazon/device/ads/AdLayout;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClosing()I
    .locals 2

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    #calls: Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;
    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->access$100(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    const/4 v0, 0x0

    .line 1247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method handleAdEvent(Lcom/amazon/device/ads/AdEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1217
    sget-object v0, Lcom/amazon/device/ads/AdLayout$4;->$SwitchMap$com$amazon$device$ads$AdEvent$AdEventType:[I

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdEvent;->getAdEventType()Lcom/amazon/device/ads/AdEvent$AdEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdEvent$AdEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1236
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1220
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    #getter for: Lcom/amazon/device/ads/AdLayout;->adListener:Lcom/amazon/device/ads/AdListener;
    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->access$500(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/AdListener;->onAdExpanded(Lcom/amazon/device/ads/Ad;)V

    move v0, v2

    .line 1221
    goto :goto_0

    .line 1224
    :pswitch_1
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    #getter for: Lcom/amazon/device/ads/AdLayout;->adListener:Lcom/amazon/device/ads/AdListener;
    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->access$500(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/AdListener;->onAdCollapsed(Lcom/amazon/device/ads/Ad;)V

    move v0, v2

    .line 1225
    goto :goto_0

    .line 1227
    :pswitch_2
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    #getter for: Lcom/amazon/device/ads/AdLayout;->adListener:Lcom/amazon/device/ads/AdListener;
    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->access$500(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdListener;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/device/ads/ExtendedAdListener;

    if-eqz v0, :cond_0

    .line 1229
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdEvent;->getParameters()Lcom/amazon/device/ads/ParameterMap;

    move-result-object v0

    const-string v1, "positionOnScreen"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/ParameterMap;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1230
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    #getter for: Lcom/amazon/device/ads/AdLayout;->adListener:Lcom/amazon/device/ads/AdListener;
    invoke-static {v1}, Lcom/amazon/device/ads/AdLayout;->access$500(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdListener;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/ads/ExtendedAdListener;

    invoke-interface {v1, v0}, Lcom/amazon/device/ads/ExtendedAdListener;->onAdResized(Landroid/graphics/Rect;)V

    :cond_0
    move v0, v2

    .line 1232
    goto :goto_0

    .line 1217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isAdReady(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdLayout;->prepareAd(Z)Z

    move-result v0

    return v0
.end method

.method notifyAdShowing(Lcom/amazon/device/ads/AdProperties;)V
    .locals 2
    .parameter

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->adShown()V

    .line 1195
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    #getter for: Lcom/amazon/device/ads/AdLayout;->adListener:Lcom/amazon/device/ads/AdListener;
    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->access$500(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-interface {v0, v1, p1}, Lcom/amazon/device/ads/AdListener;->onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V

    .line 1196
    return-void
.end method

.method public onAdEvent(Lcom/amazon/device/ads/AdEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 1212
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->handleAdEvent(Lcom/amazon/device/ads/AdEvent;)Z

    .line 1213
    return-void
.end method

.method public onAdFailed(Lcom/amazon/device/ads/AdError;)V
    .locals 2
    .parameter

    .prologue
    .line 1201
    sget-object v0, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_TIMEOUT:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdError$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    const/4 v1, 0x0

    #setter for: Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;
    invoke-static {v0, v1}, Lcom/amazon/device/ads/AdLayout;->access$602(Lcom/amazon/device/ads/AdLayout;Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/AdController;

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    #getter for: Lcom/amazon/device/ads/AdLayout;->adListener:Lcom/amazon/device/ads/AdListener;
    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->access$500(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-interface {v0, v1, p1}, Lcom/amazon/device/ads/AdListener;->onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V

    .line 1207
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/AdProperties;)V
    .locals 1
    .parameter

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->properties:Lcom/amazon/device/ads/AdProperties;

    .line 1165
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    #calls: Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;
    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->access$100(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->render()V

    .line 1166
    return-void
.end method

.method public onAdRendered()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1171
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    #calls: Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;
    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->access$100(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_SHOW_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 1172
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    #getter for: Lcom/amazon/device/ads/AdLayout;->currentView:Lcom/amazon/device/ads/AdContainer;
    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->access$400(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    #getter for: Lcom/amazon/device/ads/AdLayout;->currentView:Lcom/amazon/device/ads/AdContainer;
    invoke-static {v1}, Lcom/amazon/device/ads/AdLayout;->access$400(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdLayout;->removeView(Landroid/view/View;)V

    .line 1175
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    #getter for: Lcom/amazon/device/ads/AdLayout;->currentView:Lcom/amazon/device/ads/AdContainer;
    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->access$400(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdContainer;->destroy()V

    .line 1177
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    #calls: Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;
    invoke-static {v1}, Lcom/amazon/device/ads/AdLayout;->access$100(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getView()Lcom/amazon/device/ads/AdContainer;

    move-result-object v1

    #setter for: Lcom/amazon/device/ads/AdLayout;->currentView:Lcom/amazon/device/ads/AdContainer;
    invoke-static {v0, v1}, Lcom/amazon/device/ads/AdLayout;->access$402(Lcom/amazon/device/ads/AdLayout;Lcom/amazon/device/ads/AdContainer;)Lcom/amazon/device/ads/AdContainer;

    .line 1178
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1182
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    #getter for: Lcom/amazon/device/ads/AdLayout;->currentView:Lcom/amazon/device/ads/AdContainer;
    invoke-static {v2}, Lcom/amazon/device/ads/AdLayout;->access$400(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdContainer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/AdLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1184
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->properties:Lcom/amazon/device/ads/AdProperties;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->notifyAdShowing(Lcom/amazon/device/ads/AdProperties;)V

    .line 1185
    return-void
.end method

.method public postAdRendered()V
    .locals 0

    .prologue
    .line 1254
    return-void
.end method
