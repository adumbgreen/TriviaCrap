.class Lcom/amazon/device/ads/AAXParameter$IntegerParameter;
.super Lcom/amazon/device/ads/AAXParameter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/device/ads/AAXParameter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/AAXParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method


# virtual methods
.method protected getFromDebugProperties()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/amazon/device/ads/AAXParameter$IntegerParameter;->getDebugName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getFromDebugProperties()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/amazon/device/ads/AAXParameter$IntegerParameter;->getFromDebugProperties()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected parseFromString(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parseFromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$IntegerParameter;->parseFromString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
