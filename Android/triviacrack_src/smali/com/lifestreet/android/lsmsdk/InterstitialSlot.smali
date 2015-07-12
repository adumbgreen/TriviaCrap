.class public final Lcom/lifestreet/android/lsmsdk/InterstitialSlot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/lifestreet/android/lsmsdk/SlotController;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotType;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/SlotType;

    invoke-direct {v0, v1, p1}, Lcom/lifestreet/android/lsmsdk/SlotController;-><init>(Lcom/lifestreet/android/lsmsdk/SlotType;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    .line 23
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Destroy"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->setAutoRefreshEnabled(Z)V

    .line 34
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->destroy()V

    .line 37
    :cond_0
    return-void
.end method

.method public declared-synchronized fetchAd()V
    .locals 2

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->loadSlot(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getListener()Lcom/lifestreet/android/lsmsdk/SlotListener;
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotListener()Lcom/lifestreet/android/lsmsdk/SlotListener;

    move-result-object v0

    .line 129
    :cond_0
    return-object v0
.end method

.method public getSlotTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotTag()Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_0
    return-object v0
.end method

.method public getTargeting()Lcom/lifestreet/android/lsmsdk/SlotTargeting;
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 147
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getTargeting()Lcom/lifestreet/android/lsmsdk/SlotTargeting;

    move-result-object v0

    .line 151
    :cond_0
    return-object v0
.end method

.method public isAdReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 190
    .line 191
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->getLoadingState()Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    move-result-object v1

    sget-object v2, Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;->LOADED:Lcom/lifestreet/android/lsmsdk/SlotController$LoadingState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 195
    :cond_0
    return v0
.end method

.method public isAutoRefreshEnabled()Z
    .locals 2

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 167
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->isAutoRefreshEnabled()Z

    move-result v0

    .line 171
    :cond_0
    return v0
.end method

.method public declared-synchronized loadAd()V
    .locals 2

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotController;->loadSlot(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Pause"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->pauseSlot()V

    .line 70
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Resume"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->resumeSlot()V

    .line 83
    :cond_0
    return-void
.end method

.method public setAutoRefreshEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, p1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setAutoRefreshEnabled(Z)V

    .line 183
    :cond_0
    return-void
.end method

.method public setIntegrationType(Lcom/lifestreet/android/lsmsdk/IntegrationType;)V
    .locals 1
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, p1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setIntegrationType(Lcom/lifestreet/android/lsmsdk/IntegrationType;)V

    .line 208
    :cond_0
    return-void
.end method

.method public setListener(Lcom/lifestreet/android/lsmsdk/SlotListener;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, p1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setSlotListener(Lcom/lifestreet/android/lsmsdk/SlotListener;)V

    .line 142
    :cond_0
    return-void
.end method

.method public setShowCloseButton(Z)V
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, p1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setShowCloseButton(Z)V

    .line 202
    :cond_0
    return-void
.end method

.method public setSlotTag(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, p1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setSlotTag(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public setTargeting(Lcom/lifestreet/android/lsmsdk/SlotTargeting;)V
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0, p1}, Lcom/lifestreet/android/lsmsdk/SlotController;->setTargeting(Lcom/lifestreet/android/lsmsdk/SlotTargeting;)V

    .line 162
    :cond_0
    return-void
.end method

.method public showAd()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/InterstitialSlot;->mSlotController:Lcom/lifestreet/android/lsmsdk/SlotController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotController;->showSlot()V

    .line 120
    :cond_0
    return-void
.end method
