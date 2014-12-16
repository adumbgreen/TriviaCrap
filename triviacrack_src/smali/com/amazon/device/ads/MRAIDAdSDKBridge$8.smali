.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandAd(Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

.field final synthetic val$expandProperties:Lcom/amazon/device/ads/ExpandProperties;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;Lcom/amazon/device/ads/ExpandProperties;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->val$expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 1127
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #setter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isResized:Z
    invoke-static {v2, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2602(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Z)Z

    .line 1128
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->val$url:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1131
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;
    invoke-static {v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdControlAccessor;->stashView()V

    .line 1132
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #setter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandedWithUrl:Z
    invoke-static {v2, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2702(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Z)Z

    .line 1139
    :goto_0
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->val$expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->val$url:Ljava/lang/String;

    #calls: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->computeExpandedSizeInPixels(Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)Lcom/amazon/device/ads/SizeProperty;
    invoke-static {v2, v3, v4}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3200(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)Lcom/amazon/device/ads/SizeProperty;

    move-result-object v2

    .line 1141
    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #calls: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->createExpandedView()V
    invoke-static {v3}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3300(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    .line 1143
    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;
    invoke-static {v3}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adContainerView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3400(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5, v0}, Lcom/amazon/device/ads/AdControlAccessor;->moveViewToViewGroup(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 1147
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Lcom/amazon/device/ads/SizeProperty;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/amazon/device/ads/SizeProperty;->getHeight()I

    move-result v2

    invoke-direct {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1148
    const/16 v2, 0xd

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1149
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adContainerView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3400(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1151
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2500(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1154
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;
    invoke-static {v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->val$expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v3}, Lcom/amazon/device/ads/ExpandProperties;->getUseCustomClose()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/amazon/device/ads/AdControlAccessor;->enableCloseButton(Z)V

    .line 1157
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2500(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1158
    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8$1;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1180
    return-void

    .line 1136
    :cond_0
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #setter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandedWithUrl:Z
    invoke-static {v2, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2702(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Z)Z

    goto/16 :goto_0

    :cond_1
    move v0, v1

    .line 1154
    goto :goto_1
.end method
