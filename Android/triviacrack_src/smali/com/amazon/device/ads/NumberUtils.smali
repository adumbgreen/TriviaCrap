.class Lcom/amazon/device/ads/NumberUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertToMillisecondsFromNanoseconds(J)J
    .locals 2
    .parameter

    .prologue
    .line 33
    const-wide/32 v0, 0xf4240

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static final convertToNsFromS(J)J
    .locals 2
    .parameter

    .prologue
    .line 37
    const-wide/32 v0, 0x3b9aca00

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    .line 24
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 28
    :goto_0
    return p1

    .line 26
    :catch_0
    move-exception v0

    goto :goto_0
.end method
