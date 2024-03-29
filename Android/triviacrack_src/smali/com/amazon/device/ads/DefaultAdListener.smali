.class public Lcom/amazon/device/ads/DefaultAdListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/ExtendedAdListener;


# instance fields
.field final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/amazon/device/ads/DefaultAdListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DefaultAdListener;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/device/ads/DefaultAdListener;->LOG_TAG:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Default ad listener called - Ad Collapsed."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Default ad listener called - Ad Dismissed."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Default ad listener called - Ad Will Expand."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Default ad listener called - Ad Failed to Load. Error code: %s, Error Message: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Default ad listener called - AdLoaded."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onAdResized(Landroid/graphics/Rect;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Default ad listener called - Ad Resized."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method
