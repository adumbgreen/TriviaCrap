.class Lcom/amazon/device/ads/RegistrationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ADID_ORIGIN_PREF_NAME:Ljava/lang/String; = "amzn-ad-id-origin"

.field private static final ADID_PREF_NAME:Ljava/lang/String; = "amzn-ad-id"

.field private static final NEW_SIS_DID_REQUESTED_SETTING:Ljava/lang/String; = "newSISDIDRequested"

.field private static final NON_ADVERTISING_IDENTIFIER_ORIGIN:Ljava/lang/String; = "non-advertising-identifier"

.field private static final THIRD_PARTY_APP_NAME:Ljava/lang/String; = "app"


# instance fields
.field private appKey:Ljava/lang/String;

.field private appName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "app"

    iput-object v0, p0, Lcom/amazon/device/ads/RegistrationInfo;->appName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static isAdIdCurrent(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)Z
    .locals 3
    .parameter

    .prologue
    .line 49
    invoke-static {}, Lcom/amazon/device/ads/RegistrationInfo;->isAdIdOriginatedFromNonAdvertisingIdentifier()Z

    move-result v0

    .line 50
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->hasAdvertisingIdentifier()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x0

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "amzn-ad-id-origin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isAdIdOriginatedFromNonAdvertisingIdentifier()Z
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "amzn-ad-id-origin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    const-string v1, "non-advertising-identifier"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static setOrigin(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->hasAdvertisingIdentifier()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "amzn-ad-id-origin"

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "amzn-ad-id-origin"

    const-string v2, "non-advertising-identifier"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAdId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    const-string v0, "debug.adid"

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v1

    const-string v2, "amzn-ad-id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    const-string v0, "debug.appid"

    iget-object v1, p0, Lcom/amazon/device/ads/RegistrationInfo;->appKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amazon/device/ads/RegistrationInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public hasAdId()Z
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/amazon/device/ads/RegistrationInfo;->getAdId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRegisteredWithSIS()Z
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/amazon/device/ads/RegistrationInfo;->getAdId()Ljava/lang/String;

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

.method public putAdId(Ljava/lang/String;Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    .line 74
    const-string v1, "amzn-ad-id"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/Settings;->putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p2}, Lcom/amazon/device/ads/RegistrationInfo;->setOrigin(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)V

    .line 76
    const-string v1, "newSISDIDRequested"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->putBooleanWithNoFlush(Ljava/lang/String;Z)V

    .line 77
    invoke-virtual {v0}, Lcom/amazon/device/ads/Settings;->flush()V

    .line 78
    return-void
.end method

.method public putAppKey(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Application Key must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    invoke-static {p1}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/RegistrationInfo;->appKey:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public putAppName(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-static {p1}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/RegistrationInfo;->appName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public requestNewSISDeviceIdentifier()V
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "newSISDIDRequested"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    return-void
.end method

.method public shouldGetNewSISDeviceIdentifer()Z
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "newSISDIDRequested"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldGetNewSISRegistration()Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/amazon/device/ads/RegistrationInfo;->isRegisteredWithSIS()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
