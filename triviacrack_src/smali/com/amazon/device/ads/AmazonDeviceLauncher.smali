.class Lcom/amazon/device/ads/AmazonDeviceLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static executor:Lcom/amazon/device/ads/AmazonDeviceLauncher$AmazonDeviceLauncherExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/amazon/device/ads/AmazonDeviceLauncher$AmazonDeviceLauncherExecutor;

    invoke-direct {v0}, Lcom/amazon/device/ads/AmazonDeviceLauncher$AmazonDeviceLauncherExecutor;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AmazonDeviceLauncher;->executor:Lcom/amazon/device/ads/AmazonDeviceLauncher$AmazonDeviceLauncherExecutor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static isWindowshopPresent(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    sget-object v0, Lcom/amazon/device/ads/AmazonDeviceLauncher;->executor:Lcom/amazon/device/ads/AmazonDeviceLauncher$AmazonDeviceLauncherExecutor;

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AmazonDeviceLauncher$AmazonDeviceLauncherExecutor;->isWindowshopPresent(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static launchWindowshopDetailPage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    sget-object v0, Lcom/amazon/device/ads/AmazonDeviceLauncher;->executor:Lcom/amazon/device/ads/AmazonDeviceLauncher$AmazonDeviceLauncherExecutor;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/device/ads/AmazonDeviceLauncher$AmazonDeviceLauncherExecutor;->launchWindowshopDetailPage(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method static launchWindowshopSearchPage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    sget-object v0, Lcom/amazon/device/ads/AmazonDeviceLauncher;->executor:Lcom/amazon/device/ads/AmazonDeviceLauncher$AmazonDeviceLauncherExecutor;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/device/ads/AmazonDeviceLauncher$AmazonDeviceLauncherExecutor;->launchWindowshopSearchPage(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method
