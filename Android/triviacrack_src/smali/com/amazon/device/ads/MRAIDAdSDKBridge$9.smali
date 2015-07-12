.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeAd(Lcom/amazon/device/ads/ResizeProperties;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

.field final synthetic val$resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

.field final synthetic val$resizeSize:Lcom/amazon/device/ads/SizeProperty;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/SizeProperty;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    iput-object p3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeSize:Lcom/amazon/device/ads/SizeProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1194
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #calls: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->createResizedView()V
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3500(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    .line 1196
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/CurrentPosition;
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3600(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/CurrentPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/CurrentPosition;->getX()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v1}, Lcom/amazon/device/ads/ResizeProperties;->getOffsetX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/amazon/device/ads/AdUtils;->deviceIndependentPixelToPixel(I)I

    move-result v3

    .line 1197
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/CurrentPosition;
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3600(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/CurrentPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/CurrentPosition;->getY()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v1}, Lcom/amazon/device/ads/ResizeProperties;->getOffsetY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/amazon/device/ads/AdUtils;->deviceIndependentPixelToPixel(I)I

    move-result v2

    .line 1198
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ResizeProperties;->getCustomClosePosition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/RelativePosition;->fromString(Ljava/lang/String;)Lcom/amazon/device/ads/RelativePosition;

    move-result-object v1

    .line 1200
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/amazon/device/ads/AdControlAccessor;->getMaxSize(Z)Lcom/amazon/device/ads/AdControlAccessor$SizeDimensions;

    move-result-object v0

    .line 1201
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor$SizeDimensions;->getWidth()I

    move-result v4

    invoke-static {v4}, Lcom/amazon/device/ads/AdUtils;->deviceIndependentPixelToPixel(I)I

    move-result v5

    .line 1202
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor$SizeDimensions;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/device/ads/AdUtils;->deviceIndependentPixelToPixel(I)I

    move-result v6

    .line 1203
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ResizeProperties;->getAllowOffscreen()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1205
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeSize:Lcom/amazon/device/ads/SizeProperty;

    invoke-virtual {v0}, Lcom/amazon/device/ads/SizeProperty;->getWidth()I

    move-result v0

    if-le v0, v5, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeSize:Lcom/amazon/device/ads/SizeProperty;

    invoke-virtual {v0, v5}, Lcom/amazon/device/ads/SizeProperty;->setWidth(I)V

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeSize:Lcom/amazon/device/ads/SizeProperty;

    invoke-virtual {v0}, Lcom/amazon/device/ads/SizeProperty;->getHeight()I

    move-result v0

    if-le v0, v6, :cond_1

    .line 1211
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeSize:Lcom/amazon/device/ads/SizeProperty;

    invoke-virtual {v0, v6}, Lcom/amazon/device/ads/SizeProperty;->setHeight(I)V

    .line 1213
    :cond_1
    if-gez v3, :cond_4

    move v3, v7

    .line 1221
    :cond_2
    :goto_0
    if-gez v2, :cond_5

    move v2, v7

    .line 1240
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    const/4 v4, 0x1

    #setter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isResized:Z
    invoke-static {v0, v4}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2602(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Z)Z

    .line 1241
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeSize:Lcom/amazon/device/ads/SizeProperty;

    invoke-virtual {v4}, Lcom/amazon/device/ads/SizeProperty;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeSize:Lcom/amazon/device/ads/SizeProperty;

    invoke-virtual {v5}, Lcom/amazon/device/ads/SizeProperty;->getHeight()I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1242
    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;
    invoke-static {v4}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3100(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v7}, Lcom/amazon/device/ads/AdControlAccessor;->moveViewToViewGroup(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 1244
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeSize:Lcom/amazon/device/ads/SizeProperty;

    invoke-virtual {v4}, Lcom/amazon/device/ads/SizeProperty;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeSize:Lcom/amazon/device/ads/SizeProperty;

    invoke-virtual {v5}, Lcom/amazon/device/ads/SizeProperty;->getHeight()I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1247
    const/16 v4, 0x30

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1248
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1249
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1250
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2500(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3100(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1252
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3100(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1259
    :goto_2
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Lcom/amazon/device/ads/AdControlAccessor;->enableCloseButton(ZLcom/amazon/device/ads/RelativePosition;)V

    .line 1262
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2500(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1263
    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9$1;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1291
    :goto_3
    return-void

    .line 1217
    :cond_4
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeSize:Lcom/amazon/device/ads/SizeProperty;

    invoke-virtual {v0}, Lcom/amazon/device/ads/SizeProperty;->getWidth()I

    move-result v0

    add-int/2addr v0, v3

    if-le v0, v5, :cond_2

    .line 1219
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeSize:Lcom/amazon/device/ads/SizeProperty;

    invoke-virtual {v0}, Lcom/amazon/device/ads/SizeProperty;->getWidth()I

    move-result v0

    sub-int v3, v5, v0

    goto/16 :goto_0

    .line 1225
    :cond_5
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeSize:Lcom/amazon/device/ads/SizeProperty;

    invoke-virtual {v0}, Lcom/amazon/device/ads/SizeProperty;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    if-le v0, v6, :cond_3

    .line 1227
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeSize:Lcom/amazon/device/ads/SizeProperty;

    invoke-virtual {v0}, Lcom/amazon/device/ads/SizeProperty;->getHeight()I

    move-result v0

    sub-int v2, v6, v0

    goto/16 :goto_1

    .line 1233
    :cond_6
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeSize:Lcom/amazon/device/ads/SizeProperty;

    #calls: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isValidClosePosition(Lcom/amazon/device/ads/RelativePosition;IILcom/amazon/device/ads/SizeProperty;II)Z
    invoke-static/range {v0 .. v6}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3700(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/RelativePosition;IILcom/amazon/device/ads/SizeProperty;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1235
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    const-string v1, "Resize failed because close event area must be entirely on screen."

    const-string v2, "resize"

    #calls: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2400(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1256
    :cond_7
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$2500(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    #getter for: Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$3100(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method
