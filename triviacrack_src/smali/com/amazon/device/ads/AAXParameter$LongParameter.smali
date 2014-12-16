.class Lcom/amazon/device/ads/AAXParameter$LongParameter;
.super Lcom/amazon/device/ads/AAXParameter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/device/ads/AAXParameter",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/AAXParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method


# virtual methods
.method protected getFromDebugProperties()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/amazon/device/ads/AAXParameter$LongParameter;->getDebugName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getFromDebugProperties()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/amazon/device/ads/AAXParameter$LongParameter;->getFromDebugProperties()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected parseFromString(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .parameter

    .prologue
    .line 210
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parseFromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$LongParameter;->parseFromString(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
