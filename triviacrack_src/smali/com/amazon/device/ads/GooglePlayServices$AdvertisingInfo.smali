.class Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private advertisingIdentifier:Ljava/lang/String;

.field private gpsAvailable:Z

.field private limitAdTrackingEnabled:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->gpsAvailable:Z

    .line 84
    return-void
.end method

.method static createNotAvailable()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    invoke-direct {v0}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;-><init>()V

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->setGPSAvailable(Z)Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    move-result-object v0

    return-object v0
.end method

.method private setGPSAvailable(Z)Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->gpsAvailable:Z

    .line 97
    return-object p0
.end method


# virtual methods
.method getAdvertisingIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->advertisingIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method hasAdvertisingIdentifier()Z
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isGPSAvailable()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->gpsAvailable:Z

    return v0
.end method

.method isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->limitAdTrackingEnabled:Z

    return v0
.end method

.method setAdvertisingIdentifier(Ljava/lang/String;)Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->advertisingIdentifier:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method setLimitAdTrackingEnabled(Z)Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->limitAdTrackingEnabled:Z

    .line 121
    return-object p0
.end method
