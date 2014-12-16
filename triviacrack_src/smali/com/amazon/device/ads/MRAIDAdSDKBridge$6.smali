.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->collapseExpandedAd(Lcom/amazon/device/ads/AdControlAccessor;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

.field final synthetic val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 978
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 984
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #calls: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2300(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    #setter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;
    invoke-static {v1, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2502(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 986
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    const/4 v1, 0x0

    #setter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isResized:Z
    invoke-static {v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2602(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Z)Z

    .line 987
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandedWithUrl:Z
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2700(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 989
    invoke-static {}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Expanded With URL"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->popView()Z

    .line 996
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #calls: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->lookupExpansionView()V
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2900(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    .line 998
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1002
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->moveViewBackToParent(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1003
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->removeCloseButton()V

    .line 1005
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2500(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3100(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2500(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3100(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1015
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2500(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1016
    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6$1;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1036
    return-void

    .line 994
    :cond_2
    invoke-static {}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not Expanded with URL"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
