.class Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;
.super Lcom/amazon/device/ads/AAXParameter$StringParameter;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 319
    const-string v0, "geoloc"

    const-string v1, "debug.geoloc"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$StringParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 325
    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->SEND_GEO:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/Configuration;->getBoolean(Lcom/amazon/device/ads/Configuration$ConfigOption;)Z

    move-result v1

    .line 326
    if-eqz v1, :cond_0

    #getter for: Lcom/amazon/device/ads/AAXParameter$ParameterData;->adRequest:Lcom/amazon/device/ads/AdRequest;
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$200(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdRequest;->getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdTargetingOptions;->isGeoLocationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    new-instance v1, Lcom/amazon/device/ads/AdLocation;

    invoke-direct {v1}, Lcom/amazon/device/ads/AdLocation;-><init>()V

    .line 329
    invoke-virtual {v1}, Lcom/amazon/device/ads/AdLocation;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 330
    if-nez v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-object v0

    .line 330
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
