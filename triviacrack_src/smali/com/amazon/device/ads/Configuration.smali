.class Lcom/amazon/device/ads/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AAX_MSDK_CONFIG_ENDPOINT:Ljava/lang/String; = "/e/msdk/cfg"

.field private static final AAX_PROD_US_HOSTNAME:Ljava/lang/String; = "aax-us-east.amazon-adsystem.com"

.field protected static final CONFIG_APP_DEFINED_MARKETPLACE:Ljava/lang/String; = "config-appDefinedMarketplace"

.field protected static final CONFIG_LASTFETCHTIME:Ljava/lang/String; = "config-lastFetchTime"

.field protected static final CONFIG_TTL:Ljava/lang/String; = "config-ttl"

.field protected static final CONFIG_VERSION_NAME:Ljava/lang/String; = "configVersion"

.field protected static final CURRENT_CONFIG_VERSION:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = null

.field protected static final MAX_CONFIG_TTL:I = 0x2a300

.field protected static final MAX_NO_RETRY_TTL:I = 0x493e0

.field private static instance:Lcom/amazon/device/ads/Configuration;


# instance fields
.field private appDefinedMarketplace:Ljava/lang/String;

.field private isAppDefinedMarketplaceSet:Z

.field private isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isFirstParty:Z

.field private lastTestModeValue:Ljava/lang/Boolean;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/ads/Configuration$ConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/amazon/device/ads/Configuration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/Configuration;->LOG_TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/amazon/device/ads/Configuration;

    invoke-direct {v0}, Lcom/amazon/device/ads/Configuration;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/Configuration;->instance:Lcom/amazon/device/ads/Configuration;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    .line 42
    iput-boolean v2, p0, Lcom/amazon/device/ads/Configuration;->isAppDefinedMarketplaceSet:Z

    .line 43
    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    .line 44
    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->lastTestModeValue:Ljava/lang/Boolean;

    .line 46
    iput-boolean v2, p0, Lcom/amazon/device/ads/Configuration;->isFirstParty:Z

    .line 47
    new-instance v0, Lcom/amazon/device/ads/PreferredMarketplaceRetriever$NullPreferredMarketplaceRetriever;

    invoke-direct {v0}, Lcom/amazon/device/ads/PreferredMarketplaceRetriever$NullPreferredMarketplaceRetriever;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    return-void
.end method

.method public static final getInstance()Lcom/amazon/device/ads/Configuration;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/amazon/device/ads/Configuration;->instance:Lcom/amazon/device/ads/Configuration;

    return-object v0
.end method

.method public static getMaxNoRetryTtl()I
    .locals 2

    .prologue
    .line 228
    const-string v0, "debug.noRetryTTLMax"

    const v1, 0x493e0

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPreferredMarketplace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    invoke-interface {v0}, Lcom/amazon/device/ads/PreferredMarketplaceRetriever;->retrievePreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasAppDefinedMarketplaceChanged()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 278
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v2

    .line 279
    const-string v3, "config-appDefinedMarketplace"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 282
    iget-boolean v4, p0, Lcom/amazon/device/ads/Configuration;->isAppDefinedMarketplaceSet:Z

    if-eqz v4, :cond_1

    .line 284
    iput-boolean v1, p0, Lcom/amazon/device/ads/Configuration;->isAppDefinedMarketplaceSet:Z

    .line 286
    iget-object v4, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 288
    const-string v1, "config-lastFetchTime"

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/amazon/device/ads/Settings;->putLongWithNoFlush(Ljava/lang/String;J)V

    .line 289
    const-string v1, "config-appDefinedMarketplace"

    iget-object v3, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/amazon/device/ads/Settings;->putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v2}, Lcom/amazon/device/ads/Settings;->flush()V

    .line 293
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/device/ads/IInternalAdRegistration;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/RegistrationInfo;->requestNewSISDeviceIdentifier()V

    .line 294
    sget-object v1, Lcom/amazon/device/ads/Configuration;->LOG_TAG:Ljava/lang/String;

    const-string v2, "New application-defined marketplace set. A new configuration will be retrieved."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_0
    return v0

    .line 297
    :cond_0
    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 299
    const-string v1, "config-appDefinedMarketplace"

    invoke-virtual {v2, v1}, Lcom/amazon/device/ads/Settings;->remove(Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/device/ads/IInternalAdRegistration;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/RegistrationInfo;->requestNewSISDeviceIdentifier()V

    .line 303
    sget-object v1, Lcom/amazon/device/ads/Configuration;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Application-defined marketplace removed. A new configuration will be retrieved."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private writeSettingFromConfigOption(Lcom/amazon/device/ads/Configuration$ConfigOption;Lorg/json/JSONObject;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 523
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDataType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getAllowEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The configuration value must not be empty or contain only white spaces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getSettingsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/Settings;->putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :goto_0
    return-void

    .line 532
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDataType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 534
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 535
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getSettingsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/Settings;->putBooleanWithNoFlush(Ljava/lang/String;Z)V

    goto :goto_0

    .line 541
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Undefined configuration option type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected beginFetch()V
    .locals 1

    .prologue
    .line 372
    new-instance v0, Lcom/amazon/device/ads/Configuration$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/Configuration$1;-><init>(Lcom/amazon/device/ads/Configuration;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->executeRunnable(Ljava/lang/Runnable;)V

    .line 379
    return-void
.end method

.method createAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 582
    new-instance v1, Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-direct {v1}, Lcom/amazon/device/ads/AdvertisingIdentifier;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v2

    const-string v3, "configVersion"

    invoke-virtual {v2, v3, v0}, Lcom/amazon/device/ads/Settings;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->setShouldSetCurrentAdvertisingIdentifier(Z)Lcom/amazon/device/ads/AdvertisingIdentifier;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    return-object v0
.end method

.method protected createWebRequest(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)Lcom/amazon/device/ads/WebRequest;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 551
    invoke-static {}, Lcom/amazon/device/ads/WebRequest;->createJSONGetWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    .line 552
    sget-object v1, Lcom/amazon/device/ads/Configuration;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setExternalLogTag(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0, v3}, Lcom/amazon/device/ads/WebRequest;->enableLog(Z)V

    .line 554
    const-string v1, "debug.aaxConfigHostname"

    const-string v2, "aax-us-east.amazon-adsystem.com"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setHost(Ljava/lang/String;)V

    .line 555
    const-string v1, "/e/msdk/cfg"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setPath(Ljava/lang/String;)V

    .line 556
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setMetricsCollector(Lcom/amazon/device/ads/MetricsCollector;)V

    .line 557
    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AAX_CONFIG_DOWNLOAD_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setServiceCallLatencyMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 559
    const-string v1, "debug.aaxConfigUseSecure"

    invoke-static {v1, v3}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setUseSecure(Z)V

    .line 561
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/device/ads/IInternalAdRegistration;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v1

    .line 562
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/device/ads/IInternalAdRegistration;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v2

    .line 563
    const-string v3, "appId"

    invoke-virtual {v1}, Lcom/amazon/device/ads/RegistrationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 564
    const-string v1, "dinfo"

    invoke-virtual {v2}, Lcom/amazon/device/ads/DeviceInfo;->getDInfoProperty()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 565
    const-string v1, "adId"

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getSISDeviceIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 566
    const-string v1, "sdkVer"

    invoke-static {}, Lcom/amazon/device/ads/Version;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 567
    const-string v1, "fp"

    iget-boolean v2, p0, Lcom/amazon/device/ads/Configuration;->isFirstParty:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 568
    const-string v1, "mkt"

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v2

    const-string v3, "config-appDefinedMarketplace"

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 569
    const-string v1, "pfm"

    invoke-direct {p0}, Lcom/amazon/device/ads/Configuration;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 570
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v1

    const-string v2, "testingEnabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 571
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/Configuration;->setLastTestModeValue(Z)V

    .line 572
    if-eqz v1, :cond_0

    .line 574
    const-string v1, "testMode"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 576
    :cond_0
    const-string v1, "debug.aaxConfigParams"

    invoke-static {v1, v4}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setAdditionalQueryParamsString(Ljava/lang/String;)V

    .line 577
    return-object v0
.end method

.method protected fetchConfigurationOnBackgroundThread()V
    .locals 10

    .prologue
    const v0, 0x2a300

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 430
    sget-object v1, Lcom/amazon/device/ads/Configuration;->LOG_TAG:Ljava/lang/String;

    const-string v3, "In configuration fetcher background thread."

    invoke-static {v1, v3}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/device/ads/IInternalAdRegistration;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/device/ads/PermissionChecker;->hasInternetPermission(Landroid/content/Context;)Z

    move-result v1

    .line 433
    if-nez v1, :cond_0

    .line 435
    sget-object v0, Lcom/amazon/device/ads/Configuration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Network task cannot commence because the INTERNET permission is missing from the app\'s manifest."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    .line 518
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->createAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v1

    .line 441
    invoke-virtual {v1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->canDo()Z

    move-result v3

    if-nez v3, :cond_1

    .line 443
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    goto :goto_0

    .line 447
    :cond_1
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/Configuration;->createWebRequest(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)Lcom/amazon/device/ads/WebRequest;

    move-result-object v1

    .line 452
    :try_start_0
    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 460
    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getResponseReader()Lcom/amazon/device/ads/ResponseReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/ResponseReader;->readAsJSON()Lorg/json/JSONObject;

    move-result-object v3

    .line 461
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v4

    .line 473
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->getConfigOptions()[Lcom/amazon/device/ads/Configuration$ConfigOption;

    move-result-object v5

    array-length v6, v5

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_4

    aget-object v7, v5, v1

    .line 475
    invoke-virtual {v7}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 477
    invoke-virtual {v7}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getAllowEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 479
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "The configuration value must be present and not null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 497
    :catch_0
    move-exception v0

    .line 499
    sget-object v1, Lcom/amazon/device/ads/Configuration;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Unable to parse JSON response: %s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    goto :goto_0

    .line 454
    :catch_1
    move-exception v0

    .line 456
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    goto :goto_0

    .line 483
    :cond_2
    :try_start_2
    invoke-virtual {v7}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getSettingsName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/amazon/device/ads/Settings;->removeWithNoFlush(Ljava/lang/String;)V

    .line 473
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 488
    :cond_3
    invoke-direct {p0, v7, v3}, Lcom/amazon/device/ads/Configuration;->writeSettingFromConfigOption(Lcom/amazon/device/ads/Configuration$ConfigOption;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 503
    :catch_2
    move-exception v0

    .line 505
    sget-object v1, Lcom/amazon/device/ads/Configuration;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Unexpected error during parsing: %s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    goto :goto_0

    .line 491
    :cond_4
    :try_start_3
    const-string v1, "ttl"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 493
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "The configuration value must be present and not null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_5
    const-string v1, "ttl"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v1

    .line 510
    if-le v1, v0, :cond_6

    .line 511
    :goto_3
    const-string v1, "config-ttl"

    invoke-virtual {v4, v1, v0}, Lcom/amazon/device/ads/Settings;->putIntWithNoFlush(Ljava/lang/String;I)V

    .line 512
    const-string v0, "config-lastFetchTime"

    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v4, v0, v1, v2}, Lcom/amazon/device/ads/Settings;->putLongWithNoFlush(Ljava/lang/String;J)V

    .line 513
    const-string v0, "configVersion"

    invoke-virtual {v4, v0, v9}, Lcom/amazon/device/ads/Settings;->putIntWithNoFlush(Ljava/lang/String;I)V

    .line 514
    invoke-virtual {v4}, Lcom/amazon/device/ads/Settings;->flush()V

    .line 516
    sget-object v0, Lcom/amazon/device/ads/Configuration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Configuration fetched and saved."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->onFetchSuccess()V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 510
    goto :goto_3
.end method

.method protected declared-synchronized getAndClearListeners()[Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    .locals 2

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    .line 413
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    .line 414
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-object v0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAppDefinedMarketplace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    return-object v0
.end method

.method public getBoolean(Lcom/amazon/device/ads/Configuration$ConfigOption;)Z
    .locals 1
    .parameter

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/Configuration;->getBooleanWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;Z)Z

    move-result v0

    return v0
.end method

.method public getBooleanWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;Z)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDebugProperty()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DebugProperties;->containsDebugProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDebugProperty()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 218
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getSettingsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected getConfigOptions()[Lcom/amazon/device/ads/Configuration$ConfigOption;
    .locals 1

    .prologue
    .line 420
    sget-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->configOptions:[Lcom/amazon/device/ads/Configuration$ConfigOption;

    return-object v0
.end method

.method getPreferredMarketplaceRetriever()Lcom/amazon/device/ads/PreferredMarketplaceRetriever;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    return-object v0
.end method

.method public getString(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDebugProperty()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    if-nez v0, :cond_0

    .line 191
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getSettingsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_0
    return-object v0
.end method

.method protected isFetching()Z
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method isFirstParty()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/amazon/device/ads/Configuration;->isFirstParty:Z

    return v0
.end method

.method protected nanoTime()J
    .locals 2

    .prologue
    .line 317
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method protected declared-synchronized onFetchFailure()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 398
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->AAX_CONFIG_DOWNLOAD_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 399
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/Configuration;->setIsFetching(Z)V

    .line 400
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->getAndClearListeners()[Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    move-result-object v1

    .line 401
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 403
    invoke-interface {v3}, Lcom/amazon/device/ads/Configuration$ConfigurationListener;->onConfigurationFailure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_0
    monitor-exit p0

    return-void

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onFetchSuccess()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 386
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/Configuration;->setIsFetching(Z)V

    .line 387
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->getAndClearListeners()[Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    move-result-object v1

    .line 388
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 390
    invoke-interface {v3}, Lcom/amazon/device/ads/Configuration$ConfigurationListener;->onConfigurationReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_0
    monitor-exit p0

    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queueConfigurationListener(Lcom/amazon/device/ads/Configuration$ConfigurationListener;)V
    .locals 1
    .parameter

    .prologue
    .line 337
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/Configuration;->queueConfigurationListener(Lcom/amazon/device/ads/Configuration$ConfigurationListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queueConfigurationListener(Lcom/amazon/device/ads/Configuration$ConfigurationListener;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 353
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->shouldFetch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    if-eqz p2, :cond_0

    .line 360
    sget-object v0, Lcom/amazon/device/ads/Configuration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Starting configuration fetching..."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/Configuration;->setIsFetching(Z)V

    .line 362
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->beginFetch()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 367
    :cond_2
    :try_start_2
    invoke-interface {p1}, Lcom/amazon/device/ads/Configuration$ConfigurationListener;->onConfigurationReady()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setAppDefinedMarketplace(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/Configuration;->isAppDefinedMarketplaceSet:Z

    .line 165
    return-void
.end method

.method protected setIsFetching(Z)V
    .locals 1
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 327
    return-void
.end method

.method public setIsFirstParty(Z)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/amazon/device/ads/Configuration;->isFirstParty:Z

    .line 174
    return-void
.end method

.method protected setLastTestModeValue(Z)V
    .locals 1
    .parameter

    .prologue
    .line 425
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->lastTestModeValue:Ljava/lang/Boolean;

    .line 426
    return-void
.end method

.method public setPreferredMarketplaceRetriever(Lcom/amazon/device/ads/PreferredMarketplaceRetriever;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/amazon/device/ads/Configuration;->pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    .line 593
    return-void
.end method

.method protected shouldFetch()Z
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 237
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v2

    .line 238
    invoke-direct {p0}, Lcom/amazon/device/ads/Configuration;->hasAppDefinedMarketplaceChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v3

    const-string v4, "configVersion"

    invoke-virtual {v3, v4, v1}, Lcom/amazon/device/ads/Settings;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->nanoTime()J

    move-result-wide v3

    .line 249
    const-string v5, "config-lastFetchTime"

    invoke-virtual {v2, v5, v9, v10}, Lcom/amazon/device/ads/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 250
    const-string v7, "config-ttl"

    const v8, 0x2a300

    invoke-virtual {v2, v7, v8}, Lcom/amazon/device/ads/Settings;->getInt(Ljava/lang/String;I)I

    move-result v7

    int-to-long v7, v7

    .line 252
    cmp-long v9, v5, v9

    if-nez v9, :cond_2

    .line 254
    sget-object v1, Lcom/amazon/device/ads/Configuration;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No configuration found. A new configuration will be retrieved."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_2
    sub-long/2addr v3, v5

    invoke-static {v7, v8}, Lcom/amazon/device/ads/NumberUtils;->convertToNsFromS(J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 259
    sget-object v1, Lcom/amazon/device/ads/Configuration;->LOG_TAG:Ljava/lang/String;

    const-string v2, "The configuration has expired. A new configuration will be retrieved."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_3
    iget-object v3, p0, Lcom/amazon/device/ads/Configuration;->lastTestModeValue:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/amazon/device/ads/Configuration;->lastTestModeValue:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "testingEnabled"

    invoke-virtual {v2, v4, v1}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v3, v2, :cond_4

    .line 265
    sget-object v1, Lcom/amazon/device/ads/Configuration;->LOG_TAG:Ljava/lang/String;

    const-string v2, "The testing mode has changed. A new configuration will be retrieved."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_4
    const-string v2, "debug.shouldFetchConfig"

    invoke-static {v2, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 273
    goto :goto_0
.end method
