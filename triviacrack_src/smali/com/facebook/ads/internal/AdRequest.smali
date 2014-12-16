.class public Lcom/facebook/ads/internal/AdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ADS_ENDPOINT:Ljava/lang/String; = "network_ads"

.field private static final AD_REQUEST_TIMEOUT_MS:I = 0x7530

.field private static final AD_TYPE_PARAM:Ljava/lang/String; = "ad_type"

.field private static final APP_BUILD_PARAM:Ljava/lang/String; = "app_build"

.field private static final APP_VERSION_PARAM:Ljava/lang/String; = "app_version"

.field private static final ATTRIBUTION_ID_PARAM:Ljava/lang/String; = "attribution_id"

.field private static final CHILD_DIRECTED_PARAM:Ljava/lang/String; = "child_directed"

.field private static final CLIENT_EVENTS_PARAM:Ljava/lang/String; = "events"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "utf-8"

.field private static final DEVICE_ID_PARAM:Ljava/lang/String; = "device_id"

.field private static final DEVICE_ID_TRACKING_ENABLED_PARAM:Ljava/lang/String; = "tracking_enabled"

.field private static final GRAPH_URL_BASE:Ljava/lang/String; = "https://graph.facebook.com"

.field private static final GRAPH_URL_BASE_PREFIX_FORMAT:Ljava/lang/String; = "http://graph.%s.facebook.com"

.field private static final HEIGHT_PARAM:Ljava/lang/String; = "height"

.field private static final LOCALE_PARAM:Ljava/lang/String; = "locale"

.field private static final NATIVE_ADS_ENDPOINT:Ljava/lang/String; = "network_ads_native"

.field private static final OS:Ljava/lang/String; = "Android"

.field private static final OS_PARAM:Ljava/lang/String; = "os"

.field private static final OS_VERSION_PARAM:Ljava/lang/String; = "os_version"

.field private static final PACKAGE_NAME_PARAM:Ljava/lang/String; = "package_name"

.field private static final PLACEMENT_ID_PARAM:Ljava/lang/String; = "placement_id"

.field private static final SCREEN_HEIGHT_PARAM:Ljava/lang/String; = "screen_height"

.field private static final SCREEN_WIDTH_PARAM:Ljava/lang/String; = "screen_width"

.field private static final SDK_CAPABILITIES_PARAM:Ljava/lang/String; = "sdk_capabilities"

.field private static final SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TEST_MODE_PARAM:Ljava/lang/String; = "test_mode"

.field private static final WIDTH_PARAM:Ljava/lang/String; = "width"


# instance fields
.field private final adSize:Lcom/facebook/ads/AdSize;

.field private final adType:Lcom/facebook/ads/internal/AdType;

.field private final callback:Lcom/facebook/ads/internal/AdRequest$Callback;

.field private final context:Landroid/content/Context;

.field private final placementId:Ljava/lang/String;

.field private final testMode:Z

.field private final userAgentString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/facebook/ads/internal/AdRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/AdRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/AdType;ZLcom/facebook/ads/internal/AdRequest$Callback;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "placementId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    if-nez p3, :cond_2

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adSize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_2
    if-nez p6, :cond_3

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_3
    iput-object p1, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/facebook/ads/internal/AdRequest;->placementId:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lcom/facebook/ads/internal/AdRequest;->adSize:Lcom/facebook/ads/AdSize;

    .line 117
    invoke-static {p1, p4}, Lcom/facebook/ads/internal/AdWebViewUtils;->getUserAgentString(Landroid/content/Context;Lcom/facebook/ads/internal/AdType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/AdRequest;->userAgentString:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Lcom/facebook/ads/internal/AdRequest;->adType:Lcom/facebook/ads/internal/AdType;

    .line 119
    iput-boolean p5, p0, Lcom/facebook/ads/internal/AdRequest;->testMode:Z

    .line 120
    iput-object p6, p0, Lcom/facebook/ads/internal/AdRequest;->callback:Lcom/facebook/ads/internal/AdRequest$Callback;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/ads/internal/AdRequest;)Lcom/facebook/ads/internal/AdRequest$Callback;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest;->callback:Lcom/facebook/ads/internal/AdRequest$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/ads/internal/AdRequest;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    return-object v0
.end method

.method private addAdvertisingInfoParams(Ljava/util/Map;Lcom/facebook/ads/internal/AdUtilities$Fb4aData;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/facebook/ads/internal/AdUtilities$Fb4aData;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 205
    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/facebook/ads/internal/AdvertisingIdInfo;->getAdvertisingIdInfo(Landroid/content/Context;Lcom/facebook/ads/internal/AdUtilities$Fb4aData;)Lcom/facebook/ads/internal/AdvertisingIdInfo;

    move-result-object v1

    .line 206
    if-nez v1, :cond_1

    .line 207
    const-string v1, "tracking_enabled"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const-string v2, "tracking_enabled"

    invoke-virtual {v1}, Lcom/facebook/ads/internal/AdvertisingIdInfo;->isLimitAdTrackingEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {v1}, Lcom/facebook/ads/internal/AdvertisingIdInfo;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const-string v0, "device_id"

    invoke-virtual {v1}, Lcom/facebook/ads/internal/AdvertisingIdInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 211
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private addAppInfoParams(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    const-string v0, "package_name"

    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method

.method private addDeviceInfoParams(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 180
    const-string v0, "os"

    const-string v1, "Android"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "os_version"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 184
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 185
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v0

    float-to-int v0, v0

    .line 186
    const-string v2, "screen_width"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "screen_height"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 191
    const-string v1, "app_build"

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "app_version"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 198
    if-nez v0, :cond_0

    .line 199
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 201
    :cond_0
    const-string v1, "locale"

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v0, "app_version"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private createResponsesFromStream(Ljava/io/InputStream;)Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;
    .locals 7
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 310
    new-instance v2, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;

    invoke-direct {v2, v1}, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;-><init>(Lcom/facebook/ads/internal/AdRequest$1;)V

    .line 313
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/internal/AdUtilities;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 314
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 316
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 317
    check-cast v0, Lorg/json/JSONObject;

    .line 318
    const-string v3, "error"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    const-string v3, "error"

    invoke-static {v0, v3}, Lcom/facebook/ads/internal/AdUtilities;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 320
    const-string v3, "code"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 321
    const-string v4, "message"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    new-instance v4, Lcom/facebook/ads/AdError;

    invoke-direct {v4, v3, v0}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    iput-object v4, v2, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_0
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->body:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    iget-object v0, v2, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;

    if-nez v0, :cond_2

    move-object v0, v1

    .line 335
    :goto_1
    return-object v0

    .line 324
    :cond_1
    :try_start_1
    iput-object v0, v2, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->body:Lorg/json/JSONObject;

    .line 325
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    new-instance v3, Lcom/facebook/ads/AdError;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v6, v0}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    iput-object v3, v2, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 335
    goto :goto_1
.end method

.method private getAdsEndpoint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/facebook/ads/internal/AdRequest$2;->$SwitchMap$com$facebook$ads$internal$AdType:[I

    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequest;->adType:Lcom/facebook/ads/internal/AdType;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/AdType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 129
    const-string v0, "network_ads"

    :goto_0
    return-object v0

    .line 126
    :pswitch_0
    const-string v0, "network_ads_native"

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getQueryString(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x200

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 235
    const/4 v0, 0x1

    .line 237
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 239
    if-eqz v1, :cond_0

    .line 240
    const/4 v2, 0x0

    .line 245
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "utf-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 248
    goto :goto_0

    .line 242
    :cond_0
    const-string v2, "&"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_1

    .line 250
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRequestParameters()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/AdUtilities;->getFb4aData(Landroid/content/ContentResolver;)Lcom/facebook/ads/internal/AdUtilities$Fb4aData;

    move-result-object v1

    .line 160
    const-string v2, "ad_type"

    iget-object v3, p0, Lcom/facebook/ads/internal/AdRequest;->adType:Lcom/facebook/ads/internal/AdType;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/AdType;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v2, "sdk_capabilities"

    invoke-static {}, Lcom/facebook/ads/internal/AdSdkCapability;->getSupportedCapabilitiesAsJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v2, "sdk_version"

    const-string v3, "3.19.1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v2, "placement_id"

    iget-object v3, p0, Lcom/facebook/ads/internal/AdRequest;->placementId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v2, "attribution_id"

    iget-object v3, v1, Lcom/facebook/ads/internal/AdUtilities$Fb4aData;->attributionId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v2, "width"

    iget-object v3, p0, Lcom/facebook/ads/internal/AdRequest;->adSize:Lcom/facebook/ads/AdSize;

    invoke-virtual {v3}, Lcom/facebook/ads/AdSize;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v2, "height"

    iget-object v3, p0, Lcom/facebook/ads/internal/AdRequest;->adSize:Lcom/facebook/ads/AdSize;

    invoke-virtual {v3}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v2, "test_mode"

    iget-boolean v3, p0, Lcom/facebook/ads/internal/AdRequest;->testMode:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v2, "child_directed"

    invoke-static {}, Lcom/facebook/ads/AdSettings;->isChildDirected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v2, "events"

    invoke-static {}, Lcom/facebook/ads/internal/AdClientEventManager;->dumpClientEventToJson()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/AdRequest;->addDeviceInfoParams(Ljava/util/Map;)V

    .line 172
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/AdRequest;->addAppInfoParams(Ljava/util/Map;)V

    .line 174
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/internal/AdRequest;->addAdvertisingInfoParams(Ljava/util/Map;Lcom/facebook/ads/internal/AdUtilities$Fb4aData;)V

    .line 176
    return-object v0
.end method

.method private getUrlForRequest()Ljava/net/URL;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 223
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v0}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string v0, "https://graph.facebook.com"

    .line 229
    :goto_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-direct {p0}, Lcom/facebook/ads/internal/AdRequest;->getAdsEndpoint()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 227
    :cond_0
    const-string v1, "http://graph.%s.facebook.com"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private makeRequest()Ljava/net/HttpURLConnection;
    .locals 6

    .prologue
    const/16 v3, 0x7530

    .line 254
    invoke-direct {p0}, Lcom/facebook/ads/internal/AdRequest;->getUrlForRequest()Ljava/net/URL;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 256
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/facebook/ads/internal/AdRequest;->userAgentString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 259
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 260
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 261
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 263
    invoke-direct {p0}, Lcom/facebook/ads/internal/AdRequest;->getRequestParameters()Ljava/util/Map;

    move-result-object v1

    .line 264
    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/AdRequest;->getQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 266
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 267
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "utf-8"

    invoke-direct {v4, v2, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 268
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 270
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 271
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 273
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 274
    return-object v0
.end method


# virtual methods
.method public executeAsync()Landroid/os/AsyncTask;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/ads/internal/AdRequest;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/AdAnalogData;->startUpdate(Landroid/content/Context;)V

    .line 135
    new-instance v0, Lcom/facebook/ads/internal/AdRequest$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/AdRequest$1;-><init>(Lcom/facebook/ads/internal/AdRequest;)V

    .line 153
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public executeConnectionAndWait()Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 278
    .line 281
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/internal/AdRequest;->makeRequest()Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 282
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0x190

    if-lt v0, v3, :cond_1

    .line 283
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 287
    :goto_0
    :try_start_2
    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/AdRequest;->createResponsesFromStream(Ljava/io/InputStream;)Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 302
    invoke-static {v2}, Lcom/facebook/ads/internal/AdUtilities;->closeQuietly(Ljava/io/Closeable;)V

    .line 303
    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    :goto_1
    return-object v0

    .line 285
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    .line 289
    :goto_2
    :try_start_4
    new-instance v0, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;-><init>(Lcom/facebook/ads/internal/AdRequest$1;)V

    .line 290
    new-instance v4, Lcom/facebook/ads/AdError;

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    iput-object v4, v0, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 302
    invoke-static {v3}, Lcom/facebook/ads/internal/AdUtilities;->closeQuietly(Ljava/io/Closeable;)V

    .line 303
    if-eqz v2, :cond_0

    .line 304
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 292
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    .line 293
    :goto_3
    :try_start_5
    new-instance v0, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;-><init>(Lcom/facebook/ads/internal/AdRequest$1;)V

    .line 294
    new-instance v4, Lcom/facebook/ads/AdError;

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    iput-object v4, v0, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 302
    invoke-static {v3}, Lcom/facebook/ads/internal/AdUtilities;->closeQuietly(Ljava/io/Closeable;)V

    .line 303
    if-eqz v2, :cond_0

    .line 304
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 296
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 297
    :goto_4
    :try_start_6
    sget-object v3, Lcom/facebook/ads/internal/AdRequest;->TAG:Ljava/lang/String;

    const-string v4, "Unexpected error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    new-instance v0, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;-><init>(Lcom/facebook/ads/internal/AdRequest$1;)V

    .line 299
    sget-object v3, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    iput-object v3, v0, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 302
    invoke-static {v2}, Lcom/facebook/ads/internal/AdUtilities;->closeQuietly(Ljava/io/Closeable;)V

    .line 303
    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 302
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_5
    invoke-static {v3}, Lcom/facebook/ads/internal/AdUtilities;->closeQuietly(Ljava/io/Closeable;)V

    .line 303
    if-eqz v2, :cond_2

    .line 304
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v0

    .line 302
    :catchall_1
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 296
    :catch_3
    move-exception v0

    goto :goto_4

    .line 292
    :catch_4
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    .line 288
    :catch_6
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    :catch_7
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2
.end method
