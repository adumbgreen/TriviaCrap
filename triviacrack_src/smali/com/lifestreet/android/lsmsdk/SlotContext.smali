.class public final Lcom/lifestreet/android/lsmsdk/SlotContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeightInDips:I

.field private final mIntegrationType:Lcom/lifestreet/android/lsmsdk/IntegrationType;

.field private final mShowBannerCloseButton:Z

.field private final mShowInterstitialCloseButton:Z

.field private final mSlotQueryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlotTag:Ljava/lang/String;

.field private final mSlotType:Lcom/lifestreet/android/lsmsdk/SlotType;

.field private final mSlotUrl:Ljava/lang/String;

.field private final mTargeting:Lcom/lifestreet/android/lsmsdk/SlotTargeting;

.field private final mWidthInDips:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lifestreet/android/lsmsdk/SlotType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/lifestreet/android/lsmsdk/SlotTargeting;ZZIILcom/lifestreet/android/lsmsdk/IntegrationType;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/lifestreet/android/lsmsdk/SlotType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lifestreet/android/lsmsdk/SlotTargeting;",
            "ZZII",
            "Lcom/lifestreet/android/lsmsdk/IntegrationType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p9, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mWidthInDips:I

    .line 33
    iput p10, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mHeightInDips:I

    .line 35
    iput-object p3, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mSlotUrl:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mSlotTag:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mSlotType:Lcom/lifestreet/android/lsmsdk/SlotType;

    .line 38
    iput-object p6, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mTargeting:Lcom/lifestreet/android/lsmsdk/SlotTargeting;

    .line 39
    iput-object p5, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mSlotQueryParams:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 42
    iput-boolean p7, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mShowBannerCloseButton:Z

    .line 43
    iput-boolean p8, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mShowInterstitialCloseButton:Z

    .line 44
    iput-object p11, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mIntegrationType:Lcom/lifestreet/android/lsmsdk/IntegrationType;

    .line 45
    return-void
.end method

.method public static newInstance(Lcom/lifestreet/android/lsmsdk/SlotController;)Lcom/lifestreet/android/lsmsdk/SlotContext;
    .locals 12
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 48
    .line 59
    const/4 v8, 0x1

    .line 62
    if-eqz p0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 64
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotUrl()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotTag()Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotType()Lcom/lifestreet/android/lsmsdk/SlotType;

    move-result-object v2

    .line 67
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getTargeting()Lcom/lifestreet/android/lsmsdk/SlotTargeting;

    move-result-object v6

    .line 68
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotQueryParams()Ljava/util/Map;

    move-result-object v5

    .line 70
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->isShowBannerCloseButton()Z

    move-result v7

    .line 71
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->isShowInterstitialCloseButton()Z

    move-result v8

    .line 72
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getIntegrationType()Lcom/lifestreet/android/lsmsdk/IntegrationType;

    move-result-object v11

    .line 74
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotView()Lcom/lifestreet/android/lsmsdk/SlotView;

    move-result-object v10

    .line 75
    if-eqz v10, :cond_0

    .line 76
    invoke-virtual {v10}, Lcom/lifestreet/android/lsmsdk/SlotView;->getWidthInDips()I

    move-result v9

    .line 77
    invoke-virtual {v10}, Lcom/lifestreet/android/lsmsdk/SlotView;->getHeightInDips()I

    move-result v0

    move v10, v0

    .line 81
    :goto_0
    new-instance v0, Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-direct/range {v0 .. v11}, Lcom/lifestreet/android/lsmsdk/SlotContext;-><init>(Landroid/content/Context;Lcom/lifestreet/android/lsmsdk/SlotType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/lifestreet/android/lsmsdk/SlotTargeting;ZZIILcom/lifestreet/android/lsmsdk/IntegrationType;)V

    return-object v0

    :cond_0
    move v10, v0

    move v9, v0

    goto :goto_0

    :cond_1
    move v7, v0

    move v10, v0

    move v9, v0

    move-object v5, v11

    move-object v6, v11

    move-object v2, v11

    move-object v4, v11

    move-object v3, v11

    move-object v1, v11

    goto :goto_0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeightInDips()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mHeightInDips:I

    return v0
.end method

.method public getIntegrationType()Lcom/lifestreet/android/lsmsdk/IntegrationType;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mIntegrationType:Lcom/lifestreet/android/lsmsdk/IntegrationType;

    return-object v0
.end method

.method public getSlotQueryParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mSlotQueryParams:Ljava/util/Map;

    return-object v0
.end method

.method public getSlotTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mSlotTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotType()Lcom/lifestreet/android/lsmsdk/SlotType;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mSlotType:Lcom/lifestreet/android/lsmsdk/SlotType;

    return-object v0
.end method

.method public getSlotUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mSlotUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTargeting()Lcom/lifestreet/android/lsmsdk/SlotTargeting;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mTargeting:Lcom/lifestreet/android/lsmsdk/SlotTargeting;

    return-object v0
.end method

.method public getWidthInDips()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mWidthInDips:I

    return v0
.end method

.method public isShowBannerCloseButton()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mShowBannerCloseButton:Z

    return v0
.end method

.method public isShowInterstitialCloseButton()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/SlotContext;->mShowInterstitialCloseButton:Z

    return v0
.end method
