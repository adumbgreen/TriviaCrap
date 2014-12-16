.class Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private advertisingIdentifier:Ljava/lang/String;

.field private canDo:Z

.field private limitAdTrackingEnabled:Z

.field private sisDeviceIdentifier:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->canDo:Z

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->setCanDo(Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Ljava/lang/String;)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->setAdvertisingIdentifier(Ljava/lang/String;)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->setLimitAdTrackingEnabled(Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Ljava/lang/String;)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->setSISDeviceIdentifier(Ljava/lang/String;)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    return-object v0
.end method

.method private setAdvertisingIdentifier(Ljava/lang/String;)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->advertisingIdentifier:Ljava/lang/String;

    .line 237
    return-object p0
.end method

.method private setCanDo(Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->canDo:Z

    .line 216
    return-object p0
.end method

.method private setLimitAdTrackingEnabled(Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->limitAdTrackingEnabled:Z

    .line 266
    return-object p0
.end method

.method private setSISDeviceIdentifier(Ljava/lang/String;)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->sisDeviceIdentifier:Ljava/lang/String;

    .line 291
    return-object p0
.end method


# virtual methods
.method canDo()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->canDo:Z

    return v0
.end method

.method getAdvertisingIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    const-string v0, "debug.idfa"

    iget-object v1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->advertisingIdentifier:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSISDeviceIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    const-string v0, "debug.adid"

    iget-object v1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->sisDeviceIdentifier:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasAdvertisingIdentifier()Z
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasSISDeviceIdentifier()Z
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getSISDeviceIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLimitAdTrackingEnabled()Z
    .locals 2

    .prologue
    .line 254
    const-string v0, "debug.optOut"

    iget-boolean v1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->limitAdTrackingEnabled:Z

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
