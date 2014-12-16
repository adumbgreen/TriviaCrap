.class public Lcom/amazon/device/ads/AdTargetingOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private advanced:Ljava/util/Map;
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

.field private enableGeoTargeting:Z

.field private floorPrice:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdTargetingOptions;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->floorPrice:J

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->enableGeoTargeting:Z

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->advanced:Ljava/util/Map;

    .line 33
    return-void
.end method


# virtual methods
.method public containsAdvancedOption(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->advanced:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public enableGeoLocation(Z)Lcom/amazon/device/ads/AdTargetingOptions;
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdTargetingOptions;->enableGeoTargeting:Z

    .line 131
    return-object p0
.end method

.method public getAdvancedOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->advanced:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lcom/amazon/device/ads/AdTargetingOptions;->LOGTAG:Ljava/lang/String;

    const-string v1, "getAge API has been deprecated."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/high16 v0, -0x8000

    return v0
.end method

.method getCopyOfAdvancedOptions()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amazon/device/ads/AdTargetingOptions;->advanced:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 112
    return-object v0
.end method

.method public getFloorPrice()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->floorPrice:J

    return-wide v0
.end method

.method hasFloorPrice()Z
    .locals 4

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->floorPrice:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGeoLocationEnabled()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->enableGeoTargeting:Z

    return v0
.end method

.method public setAdvancedOption(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/AdTargetingOptions;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Option Key must not be null or empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    if-eqz p2, :cond_1

    .line 80
    iget-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->advanced:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :goto_0
    return-object p0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->advanced:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAge(I)Lcom/amazon/device/ads/AdTargetingOptions;
    .locals 2
    .parameter

    .prologue
    .line 149
    sget-object v0, Lcom/amazon/device/ads/AdTargetingOptions;->LOGTAG:Ljava/lang/String;

    const-string v1, "setAge API has been deprecated."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-object p0
.end method

.method public setFloorPrice(J)Lcom/amazon/device/ads/AdTargetingOptions;
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/amazon/device/ads/AdTargetingOptions;->floorPrice:J

    .line 46
    return-object p0
.end method
