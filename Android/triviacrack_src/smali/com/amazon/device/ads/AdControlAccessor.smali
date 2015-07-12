.class Lcom/amazon/device/ads/AdControlAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final adController:Lcom/amazon/device/ads/AdController;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AdController;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    .line 25
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;ZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/AdController;->addJavascriptInterface(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 330
    return-void
.end method

.method public addSDKEventListener(Lcom/amazon/device/ads/SDKEventListener;)V
    .locals 1
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->addSDKEventListener(Lcom/amazon/device/ads/SDKEventListener;)V

    .line 319
    return-void
.end method

.method public closeAd()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->closeAd()Z

    move-result v0

    return v0
.end method

.method public enableCloseButton(Z)V
    .locals 1
    .parameter

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->enableCloseButton(ZLcom/amazon/device/ads/RelativePosition;)V

    .line 132
    return-void
.end method

.method public enableCloseButton(ZLcom/amazon/device/ads/RelativePosition;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdController;->enableNativeCloseButton(ZLcom/amazon/device/ads/RelativePosition;)V

    .line 143
    return-void
.end method

.method public fireAdEvent(Lcom/amazon/device/ads/AdEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->fireAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    .line 50
    return-void
.end method

.method public getAdState()Lcom/amazon/device/ads/AdState;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()Lcom/amazon/device/ads/AdControlAccessor$Coordinates;
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdPosition()Lcom/amazon/device/ads/AdController$AdPosition;

    move-result-object v0

    .line 266
    new-instance v1, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;-><init>(Lcom/amazon/device/ads/AdControlAccessor;)V

    .line 267
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController$AdPosition;->getSize()Lcom/amazon/device/ads/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;->width:I

    .line 268
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController$AdPosition;->getSize()Lcom/amazon/device/ads/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;->height:I

    .line 269
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController$AdPosition;->getX()I

    move-result v2

    iput v2, v1, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;->x:I

    .line 270
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController$AdPosition;->getY()I

    move-result v0

    iput v0, v1, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;->y:I

    .line 271
    return-object v1
.end method

.method public getMaxSize(Z)Lcom/amazon/device/ads/AdControlAccessor$SizeDimensions;
    .locals 3
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->getMaxExpandableSize(Z)Lcom/amazon/device/ads/Size;

    move-result-object v0

    .line 301
    new-instance v1, Lcom/amazon/device/ads/AdControlAccessor$SizeDimensions;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/AdControlAccessor$SizeDimensions;-><init>(Lcom/amazon/device/ads/AdControlAccessor;)V

    .line 302
    invoke-virtual {v0}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/amazon/device/ads/AdControlAccessor$SizeDimensions;->width:I

    .line 303
    invoke-virtual {v0}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v0

    iput v0, v1, Lcom/amazon/device/ads/AdControlAccessor$SizeDimensions;->height:I

    .line 304
    return-object v1
.end method

.method public getOriginalOrientation()I
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getOriginalOrientation()I

    move-result v0

    return v0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getViewHeight()I

    move-result v0

    return v0
.end method

.method public getViewParentIfExpanded()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getViewParentIfExpanded()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getViewWidth()I

    move-result v0

    return v0
.end method

.method public hideCloseButtonImage()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->hideNativeCloseButtonImage()V

    .line 123
    return-void
.end method

.method public injectJavascript(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amazon/device/ads/AdController;->injectJavascript(Ljava/lang/String;Z)V

    .line 59
    return-void
.end method

.method public injectJavascriptPreload(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/device/ads/AdController;->injectJavascript(Ljava/lang/String;Z)V

    .line 68
    return-void
.end method

.method public isInterstitial()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->isInterstitial()Z

    move-result v0

    return v0
.end method

.method public loadHtml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdController;->loadHtml(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->loadUrl(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public moveViewBackToParent(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->moveViewBackToParent(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    return-void
.end method

.method public moveViewToViewGroup(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/AdController;->moveViewToViewGroup(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 188
    return-void
.end method

.method public popView()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->popView()Z

    move-result v0

    return v0
.end method

.method public preloadHtml(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/AdController;->preloadHtml(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V

    .line 78
    return-void
.end method

.method public preloadUrl(Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdController;->preloadUrl(Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V

    .line 97
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->reload()V

    .line 338
    return-void
.end method

.method public removeCloseButton()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->removeNativeCloseButton()V

    .line 152
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->setExpanded(Z)V

    .line 217
    return-void
.end method

.method public setOriginalOrientation(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->setOriginalOrientation(Landroid/app/Activity;)V

    .line 343
    return-void
.end method

.method public stashView()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->stashView()V

    .line 33
    return-void
.end method
