.class Lcom/amazon/device/ads/GooglePlayServices;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GPS_AVAILABLE_SETTING:Ljava/lang/String; = "gps-available"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/amazon/device/ads/GooglePlayServices;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/GooglePlayServices;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method private isGPSAvailable()Z
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "gps-available"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isGPSAvailableSet()Z
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "gps-available"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Settings;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setGooglePlayServicesAvailable(Z)V
    .locals 2
    .parameter

    .prologue
    .line 65
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "gps-available"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/Settings;->putTransientBoolean(Ljava/lang/String;Z)V

    .line 66
    return-void
.end method


# virtual methods
.method protected createGooglePlayServicesAdapter()Lcom/amazon/device/ads/GooglePlayServicesAdapter;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/amazon/device/ads/GooglePlayServicesAdapter;

    invoke-direct {v0}, Lcom/amazon/device/ads/GooglePlayServicesAdapter;-><init>()V

    return-object v0
.end method

.method public getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/amazon/device/ads/GooglePlayServices;->isGPSAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    sget-object v0, Lcom/amazon/device/ads/GooglePlayServices;->LOG_TAG:Ljava/lang/String;

    const-string v1, "The Google Play Services Advertising Identifier feature is not available."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->createNotAvailable()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/GooglePlayServices;->isGPSAvailableSet()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Lcom/amazon/device/ads/ReflectionUtils;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    sget-object v0, Lcom/amazon/device/ads/GooglePlayServices;->LOG_TAG:Ljava/lang/String;

    const-string v1, "The Google Play Services Advertising Identifier feature is not available."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/GooglePlayServices;->setGooglePlayServicesAvailable(Z)V

    .line 34
    invoke-static {}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->createNotAvailable()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/GooglePlayServices;->createGooglePlayServicesAdapter()Lcom/amazon/device/ads/GooglePlayServicesAdapter;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/amazon/device/ads/GooglePlayServicesAdapter;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->isGPSAvailable()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/amazon/device/ads/GooglePlayServices;->setGooglePlayServicesAvailable(Z)V

    goto :goto_0
.end method
