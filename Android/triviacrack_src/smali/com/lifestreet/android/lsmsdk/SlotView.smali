.class public final Lcom/lifestreet/android/lsmsdk/SlotView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

.field private mSlotSize:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

.field private final mSlotViewPlaceholder:Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iput-object v3, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    .line 42
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;

    invoke-direct {v1, v0}, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotViewPlaceholder:Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotView;->setWillNotDraw(Z)V

    .line 54
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v0, Lcom/lifestreet/android/lsmsdk/SlotController;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotType;->NORMAL:Lcom/lifestreet/android/lsmsdk/SlotType;

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/SlotController;-><init>(Lcom/lifestreet/android/lsmsdk/SlotType;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    .line 47
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->setSlotView(Lcom/lifestreet/android/lsmsdk/SlotView;)V

    .line 48
    iput-object v3, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotViewPlaceholder:Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    iput-object v3, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    .line 42
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;

    invoke-direct {v1, v0}, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotViewPlaceholder:Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotView;->setWillNotDraw(Z)V

    .line 59
    :goto_0
    const-string v0, "slot_slotTag"

    invoke-interface {p2, v3, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v1, v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->setSlotTag(Ljava/lang/String;)V

    .line 64
    :cond_0
    const-string v0, "slot_autoRefreshEnabled"

    invoke-interface {p2, v3, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 66
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotView;->setAutoRefreshEnabled(Z)V

    .line 68
    :cond_1
    return-void

    .line 46
    :cond_2
    new-instance v0, Lcom/lifestreet/android/lsmsdk/SlotController;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotType;->NORMAL:Lcom/lifestreet/android/lsmsdk/SlotType;

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/SlotController;-><init>(Lcom/lifestreet/android/lsmsdk/SlotType;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    .line 47
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->setSlotView(Lcom/lifestreet/android/lsmsdk/SlotView;)V

    .line 48
    iput-object v3, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotViewPlaceholder:Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotView;->removeAllViews()V

    .line 310
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Destroy"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotView;->setAutoRefreshEnabled(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotView;->cleanup()V

    .line 101
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->destroy()V

    .line 104
    :cond_0
    return-void
.end method

.method public declared-synchronized fetchAd()V
    .locals 2

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->loadSlot(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHeightInDips()I
    .locals 2

    .prologue
    .line 214
    .line 216
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotSize:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotSize:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getHeight()I

    move-result v0

    .line 223
    :goto_0
    return v0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotView;->getHeight()I

    move-result v1

    invoke-static {v1, v0}, Lcom/lifestreet/android/lsmsdk/commons/Utils;->convertPixelsToDips(ILandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getListener()Lcom/lifestreet/android/lsmsdk/SlotListener;
    .locals 2

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 229
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;

    move-result-object v0

    .line 233
    :cond_0
    return-object v0
.end method

.method public getSlotTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotTag()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_0
    return-object v0
.end method

.method public getTargeting()Lcom/lifestreet/android/lsmsdk/SlotTargeting;
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 251
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getTargeting()Lcom/lifestreet/android/lsmsdk/SlotTargeting;

    move-result-object v0

    .line 255
    :cond_0
    return-object v0
.end method

.method public getWidthInDips()I
    .locals 2

    .prologue
    .line 198
    .line 200
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotSize:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotSize:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdSize;->getWidth()I

    move-result v0

    .line 207
    :goto_0
    return v0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 204
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotView;->getWidth()I

    move-result v1

    invoke-static {v1, v0}, Lcom/lifestreet/android/lsmsdk/commons/Utils;->convertPixelsToDips(ILandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public isAdReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 294
    .line 295
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->getLoadingState()Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    move-result-object v1

    sget-object v2, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->LOADED:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 299
    :cond_0
    return v0
.end method

.method public isAutoRefreshEnabled()Z
    .locals 2

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 271
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->isAutoRefreshEnabled()Z

    move-result v0

    .line 275
    :cond_0
    return v0
.end method

.method public declared-synchronized loadAd()V
    .locals 2

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->loadSlot(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotViewPlaceholder:Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotViewPlaceholder:Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;

    invoke-virtual {v0, p1}, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->draw(Landroid/graphics/Canvas;)V

    .line 80
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 86
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotViewPlaceholder:Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotViewPlaceholder:Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/SlotViewPlaceholder;->setSize(FF)V

    .line 89
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Pause"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->pauseSlot()V

    .line 137
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Resume"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->resumeSlot()V

    .line 150
    :cond_0
    return-void
.end method

.method public setAutoRefreshEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, p1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setAutoRefreshEnabled(Z)V

    .line 287
    :cond_0
    return-void
.end method

.method public setIntegrationType(Lcom/lifestreet/android/lsmsdk/IntegrationType;)V
    .locals 1
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, p1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setIntegrationType(Lcom/lifestreet/android/lsmsdk/IntegrationType;)V

    .line 324
    :cond_0
    return-void
.end method

.method public setListener(Lcom/lifestreet/android/lsmsdk/SlotListener;)V
    .locals 1
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, p1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setSlotListener(Lcom/lifestreet/android/lsmsdk/SlotListener;)V

    .line 246
    :cond_0
    return-void
.end method

.method public setShowCloseButton(Z)V
    .locals 1
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, p1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setShowCloseButton(Z)V

    .line 306
    :cond_0
    return-void
.end method

.method public setSlotSize(Lcom/lifestreet/android/lsmsdk/ads/AdSize;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotSize:Lcom/lifestreet/android/lsmsdk/ads/AdSize;

    .line 192
    return-void
.end method

.method public setSlotTag(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, p1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setSlotTag(Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public setTargeting(Lcom/lifestreet/android/lsmsdk/SlotTargeting;)V
    .locals 1
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, p1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setTargeting(Lcom/lifestreet/android/lsmsdk/SlotTargeting;)V

    .line 266
    :cond_0
    return-void
.end method

.method public showAd()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotView;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->showSlot()V

    .line 188
    :cond_0
    return-void
.end method

.method public transitionToView(Landroid/view/View;Lcom/lifestreet/android/lsmsdk/TransitionAnimation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotView;->cleanup()V

    .line 315
    if-eqz p1, :cond_0

    .line 316
    invoke-virtual {p0, p1}, Lcom/lifestreet/android/lsmsdk/SlotView;->addView(Landroid/view/View;)V

    .line 318
    :cond_0
    return-void
.end method
