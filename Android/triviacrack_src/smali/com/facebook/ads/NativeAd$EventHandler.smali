.class Lcom/facebook/ads/NativeAd$EventHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private adPositionX:F

.field private adPositionY:F

.field private height:I

.field final synthetic this$0:Lcom/facebook/ads/NativeAd;

.field private touchDataInitialized:Z

.field private visibleHeight:I

.field private visibleWidth:I

.field private width:I

.field private xCoord:I

.field private yCoord:I


# direct methods
.method private constructor <init>(Lcom/facebook/ads/NativeAd;)V
    .locals 0
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/facebook/ads/NativeAd$EventHandler;->this$0:Lcom/facebook/ads/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAd$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lcom/facebook/ads/NativeAd$EventHandler;-><init>(Lcom/facebook/ads/NativeAd;)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 580
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 581
    const-string v1, "clickX"

    iget v2, p0, Lcom/facebook/ads/NativeAd$EventHandler;->xCoord:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string v1, "clickY"

    iget v2, p0, Lcom/facebook/ads/NativeAd$EventHandler;->yCoord:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v1, "width"

    iget v2, p0, Lcom/facebook/ads/NativeAd$EventHandler;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string v1, "height"

    iget v2, p0, Lcom/facebook/ads/NativeAd$EventHandler;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v1, "adPositionX"

    iget v2, p0, Lcom/facebook/ads/NativeAd$EventHandler;->adPositionX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string v1, "adPositionY"

    iget v2, p0, Lcom/facebook/ads/NativeAd$EventHandler;->adPositionY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string v1, "visibleWidth"

    iget v2, p0, Lcom/facebook/ads/NativeAd$EventHandler;->visibleWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string v1, "visibleHeight"

    iget v2, p0, Lcom/facebook/ads/NativeAd$EventHandler;->visibleHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 545
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$EventHandler;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$000(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$EventHandler;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$000(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$EventHandler;->this$0:Lcom/facebook/ads/NativeAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/AdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 548
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd$EventHandler;->touchDataInitialized:Z

    if-nez v0, :cond_1

    .line 549
    const-string v0, "FBAudienceNetworkLog"

    const-string v1, "No touch data recorded, please ensure touch events reach the ad View by returning false if you intercept the event."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$EventHandler;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$100(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/NativeAdDataModel;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$EventHandler;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/facebook/ads/NativeAd;->access$700(Lcom/facebook/ads/NativeAd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd$EventHandler;->getData()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/NativeAdDataModel;->handleClick(Landroid/content/Context;Ljava/util/Map;)V

    .line 552
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 556
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd$EventHandler;->touchDataInitialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$EventHandler;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$800(Lcom/facebook/ads/NativeAd;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$EventHandler;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$800(Lcom/facebook/ads/NativeAd;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/NativeAd$EventHandler;->width:I

    .line 558
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$EventHandler;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->access$800(Lcom/facebook/ads/NativeAd;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/NativeAd$EventHandler;->height:I

    .line 560
    new-array v0, v3, [I

    .line 561
    iget-object v1, p0, Lcom/facebook/ads/NativeAd$EventHandler;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;
    invoke-static {v1}, Lcom/facebook/ads/NativeAd;->access$800(Lcom/facebook/ads/NativeAd;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 562
    aget v1, v0, v4

    int-to-float v1, v1

    iput v1, p0, Lcom/facebook/ads/NativeAd$EventHandler;->adPositionX:F

    .line 563
    aget v1, v0, v5

    int-to-float v1, v1

    iput v1, p0, Lcom/facebook/ads/NativeAd$EventHandler;->adPositionY:F

    .line 565
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 566
    iget-object v2, p0, Lcom/facebook/ads/NativeAd$EventHandler;->this$0:Lcom/facebook/ads/NativeAd;

    #getter for: Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;
    invoke-static {v2}, Lcom/facebook/ads/NativeAd;->access$800(Lcom/facebook/ads/NativeAd;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 567
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/facebook/ads/NativeAd$EventHandler;->visibleWidth:I

    .line 568
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/facebook/ads/NativeAd$EventHandler;->visibleHeight:I

    .line 570
    new-array v1, v3, [I

    .line 571
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 572
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    aget v3, v1, v4

    add-int/2addr v2, v3

    aget v3, v0, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/facebook/ads/NativeAd$EventHandler;->xCoord:I

    .line 573
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    aget v1, v1, v5

    add-int/2addr v1, v2

    aget v0, v0, v5

    sub-int v0, v1, v0

    iput v0, p0, Lcom/facebook/ads/NativeAd$EventHandler;->yCoord:I

    .line 574
    iput-boolean v5, p0, Lcom/facebook/ads/NativeAd$EventHandler;->touchDataInitialized:Z

    .line 576
    :cond_0
    return v4
.end method
