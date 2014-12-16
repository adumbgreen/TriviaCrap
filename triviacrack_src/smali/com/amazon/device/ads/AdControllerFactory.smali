.class Lcom/amazon/device/ads/AdControllerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cachedAdController:Lcom/amazon/device/ads/AdController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdController:Lcom/amazon/device/ads/AdController;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAdController(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)Lcom/amazon/device/ads/AdController;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    .line 19
    :try_start_0
    new-instance v0, Lcom/amazon/device/ads/AdController;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AdController;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 23
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cacheAdController(Lcom/amazon/device/ads/AdController;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    sput-object p0, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdController:Lcom/amazon/device/ads/AdController;

    .line 31
    return-void
.end method

.method public static getCachedAdController()Lcom/amazon/device/ads/AdController;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdController:Lcom/amazon/device/ads/AdController;

    return-object v0
.end method

.method public static removeCachedAdController()Lcom/amazon/device/ads/AdController;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdController:Lcom/amazon/device/ads/AdController;

    .line 41
    const/4 v1, 0x0

    sput-object v1, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdController:Lcom/amazon/device/ads/AdController;

    .line 42
    return-object v0
.end method
