.class Lcom/amazon/device/ads/AdLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdLocation"

.field private static final MAX_DISTANCE_IN_KILOMETERS:F = 3.0f


# instance fields
.field private arcminutePrecision:I

.field private locationAwareness:Lcom/amazon/device/ads/AdLocation$LocationAwareness;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    iput-object v0, p0, Lcom/amazon/device/ads/AdLocation;->locationAwareness:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    .line 25
    const/4 v0, 0x6

    iput v0, p0, Lcom/amazon/device/ads/AdLocation;->arcminutePrecision:I

    .line 26
    return-void
.end method

.method private static roundToArcminutes(D)D
    .locals 4
    .parameter

    .prologue
    const-wide/high16 v2, 0x404e

    .line 42
    mul-double v0, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 9

    .prologue
    const v3, 0x7f7fffff

    const/4 v2, 0x0

    const-wide/high16 v7, 0x4024

    .line 52
    .line 53
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/device/ads/IInternalAdRegistration;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/amazon/device/ads/AdLocation;->locationAwareness:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    sget-object v4, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->LOCATION_AWARENESS_DISABLED:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    if-ne v1, v4, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-object v2

    .line 57
    :cond_1
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 61
    :try_start_0
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 75
    :goto_1
    :try_start_1
    const-string v4, "network"

    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    .line 86
    :goto_2
    if-nez v1, :cond_2

    if-eqz v4, :cond_0

    .line 88
    :cond_2
    if-eqz v1, :cond_9

    if-eqz v4, :cond_9

    .line 99
    invoke-virtual {v1, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 100
    const/high16 v2, 0x447a

    div-float/2addr v0, v2

    .line 102
    const/high16 v2, 0x4040

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_7

    .line 108
    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    .line 110
    :goto_3
    invoke-virtual {v4}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    .line 114
    :cond_3
    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    .line 116
    const-string v0, "AdLocation"

    const-string v2, "Setting lat/long using GPS determined by distance"

    invoke-static {v0, v2}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_4
    iget-object v0, p0, Lcom/amazon/device/ads/AdLocation;->locationAwareness:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    sget-object v2, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    if-ne v0, v2, :cond_4

    .line 152
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amazon/device/ads/AdLocation;->roundToArcminutes(D)D

    move-result-wide v2

    .line 153
    iget v0, p0, Lcom/amazon/device/ads/AdLocation;->arcminutePrecision:I

    int-to-double v4, v0

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    iget v0, p0, Lcom/amazon/device/ads/AdLocation;->arcminutePrecision:I

    int-to-double v4, v0

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 155
    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 157
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amazon/device/ads/AdLocation;->roundToArcminutes(D)D

    move-result-wide v2

    .line 158
    iget v0, p0, Lcom/amazon/device/ads/AdLocation;->arcminutePrecision:I

    int-to-double v4, v0

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    iget v0, p0, Lcom/amazon/device/ads/AdLocation;->arcminutePrecision:I

    int-to-double v4, v0

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 160
    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    :cond_4
    move-object v2, v1

    .line 163
    goto/16 :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 65
    const-string v1, "AdLocation"

    const-string v4, "Failed to retrieve GPS location: No permissions to access GPS"

    invoke-static {v1, v4}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 70
    goto/16 :goto_1

    .line 67
    :catch_1
    move-exception v1

    .line 69
    const-string v1, "AdLocation"

    const-string v4, "Failed to retrieve GPS location: No GPS found"

    invoke-static {v1, v4}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_1

    .line 77
    :catch_2
    move-exception v0

    .line 79
    const-string v0, "AdLocation"

    const-string v4, "Failed to retrieve network location: No permissions to access network location"

    invoke-static {v0, v4}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    .line 84
    goto/16 :goto_2

    .line 81
    :catch_3
    move-exception v0

    .line 83
    const-string v0, "AdLocation"

    const-string v4, "Failed to retrieve network location: No network provider found"

    invoke-static {v0, v4}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    goto/16 :goto_2

    :cond_5
    move v0, v3

    .line 108
    goto/16 :goto_3

    .line 121
    :cond_6
    const-string v0, "AdLocation"

    const-string v1, "Setting lat/long using network determined by distance"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 122
    goto :goto_4

    .line 127
    :cond_7
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    cmp-long v0, v2, v5

    if-lez v0, :cond_8

    .line 129
    const-string v0, "AdLocation"

    const-string v2, "Setting lat/long using GPS"

    invoke-static {v0, v2}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 134
    :cond_8
    const-string v0, "AdLocation"

    const-string v1, "Setting lat/long using network"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 135
    goto/16 :goto_4

    .line 139
    :cond_9
    if-eqz v1, :cond_a

    .line 141
    const-string v0, "AdLocation"

    const-string v2, "Setting lat/long using GPS, not network"

    invoke-static {v0, v2}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 146
    :cond_a
    const-string v0, "AdLocation"

    const-string v1, "Setting lat/long using network location, not GPS"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 147
    goto/16 :goto_4
.end method
