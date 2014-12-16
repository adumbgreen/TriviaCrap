.class Lcom/amazon/device/ads/AdData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/amazon/device/ads/AAXCreative;",
        ">;"
    }
.end annotation


# static fields
.field public static final CAN_EXPAND1:I = 0x3eb

.field public static final CAN_EXPAND2:I = 0x3ec

.field public static final CAN_PLAY_AUDIO1:I = 0x3e9

.field public static final CAN_PLAY_AUDIO2:I = 0x3ea

.field public static final CAN_PLAY_VIDEO:I = 0x3f6

.field public static final HTML:I = 0x3ef

.field public static final INTERSTITIAL:I = 0x3f0

.field public static final MRAID1:I = 0x3f8

.field public static final MRAID2:I = 0x3f9


# instance fields
.field private adHeight:I

.field private adWidth:I

.field private creative:Ljava/lang/String;

.field private creativeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/device/ads/AAXCreative;",
            ">;"
        }
    .end annotation
.end field

.field private expirationTimeMs:J

.field private fetched:Z

.field private impPixelUrl:Ljava/lang/String;

.field private instrPixelUrl:Ljava/lang/String;

.field private properties:Lcom/amazon/device/ads/AdProperties;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amazon/device/ads/AdData;->expirationTimeMs:J

    .line 39
    return-void
.end method


# virtual methods
.method protected getCreative()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/device/ads/AdData;->creative:Ljava/lang/String;

    return-object v0
.end method

.method protected getCreativeTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/device/ads/AAXCreative;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazon/device/ads/AdData;->creativeTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/amazon/device/ads/AdData;->adHeight:I

    return v0
.end method

.method protected getImpressionPixelUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazon/device/ads/AdData;->impPixelUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getInstrumentationPixelUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amazon/device/ads/AdData;->instrPixelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFetched()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdData;->fetched:Z

    return v0
.end method

.method protected getProperties()Lcom/amazon/device/ads/AdProperties;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amazon/device/ads/AdData;->properties:Lcom/amazon/device/ads/AdProperties;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/amazon/device/ads/AdData;->adWidth:I

    return v0
.end method

.method public isExpired()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-wide v1, p0, Lcom/amazon/device/ads/AdData;->expirationTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 183
    iget-wide v3, p0, Lcom/amazon/device/ads/AdData;->expirationTimeMs:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/amazon/device/ads/AAXCreative;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/amazon/device/ads/AdData;->creativeTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected setCreative(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/amazon/device/ads/AdData;->creative:Ljava/lang/String;

    .line 56
    return-void
.end method

.method protected setCreativeTypes(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/device/ads/AAXCreative;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/amazon/device/ads/AdData;->creativeTypes:Ljava/util/Set;

    .line 90
    return-void
.end method

.method protected setExpirationTimeMillis(J)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-wide p1, p0, Lcom/amazon/device/ads/AdData;->expirationTimeMs:J

    .line 171
    return-void
.end method

.method public setFetched(Z)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdData;->fetched:Z

    .line 143
    return-void
.end method

.method protected setHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput p1, p0, Lcom/amazon/device/ads/AdData;->adHeight:I

    .line 148
    return-void
.end method

.method protected setImpressionPixelUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/amazon/device/ads/AdData;->impPixelUrl:Ljava/lang/String;

    .line 126
    return-void
.end method

.method protected setInstrumentationPixelUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/amazon/device/ads/AdData;->instrPixelUrl:Ljava/lang/String;

    .line 108
    return-void
.end method

.method protected setProperties(Lcom/amazon/device/ads/AdProperties;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/amazon/device/ads/AdData;->properties:Lcom/amazon/device/ads/AdProperties;

    .line 73
    return-void
.end method

.method protected setWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput p1, p0, Lcom/amazon/device/ads/AdData;->adWidth:I

    .line 158
    return-void
.end method
