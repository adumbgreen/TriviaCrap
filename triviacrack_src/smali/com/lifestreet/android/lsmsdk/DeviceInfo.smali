.class public final Lcom/lifestreet/android/lsmsdk/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANDROID_ID_MAP_KEY:Ljava/lang/String; = "_androidid"

.field public static final ANDROID_ID_MD5_MAP_KEY:Ljava/lang/String; = "_androididmd5"

.field public static final ANDROID_ID_SHA1_MAP_KEY:Ljava/lang/String; = "_androididsha1"

.field public static final CONNECTION_TYPE_MAP_KEY:Ljava/lang/String; = "contype"

.field public static final COUNTRY_MAP_KEY:Ljava/lang/String; = "country"

.field public static final DEVICE_ID_MAP_KEY:Ljava/lang/String; = "_did"

.field public static final DEVICE_ID_MD5_MAP_KEY:Ljava/lang/String; = "_didmd5"

.field public static final DEVICE_ID_SHA1_MAP_KEY:Ljava/lang/String; = "_didsha1"

.field public static final DEVICE_MAP_KEY:Ljava/lang/String; = "device"

.field public static final DEVICE_MODEL_MAP_KEY:Ljava/lang/String; = "dmodel"

.field public static final DEVICE_PLATFORM_MAP_KEY:Ljava/lang/String; = "_device_platform"

.field public static final DEVICE_TYPE_MAP_KEY:Ljava/lang/String; = "dtype"

.field public static final DSP_HEIGHT_MAP_KEY:Ljava/lang/String; = "dspHeight"

.field public static final DSP_WIDTH_MAP_KEY:Ljava/lang/String; = "dspWidth"

.field public static final LANGUAGE_MAP_KEY:Ljava/lang/String; = "lang"

.field public static final LOCALE_MAP_KEY:Ljava/lang/String; = "locale"

.field public static final OPEN_UDID_MAP_KEY:Ljava/lang/String; = "openudid"

.field public static final OS_API_MAP_KEY:Ljava/lang/String; = "osapi"

.field public static final OS_BUILD_MAP_KEY:Ljava/lang/String; = "osbuild"

.field public static final OS_VERSION_MAP_KEY:Ljava/lang/String; = "osver"

.field public static final PACKAGE_MAP_KEY:Ljava/lang/String; = "package"

.field public static final SERIAL_NUMBER_MAP_KEY:Ljava/lang/String; = "_android_serial"

.field private static final sCountry:Ljava/lang/String;

.field private static final sDevice:Ljava/lang/String;

.field private static final sDeviceModel:Ljava/lang/String;

.field private static sDspHeight:Ljava/lang/String;

.field private static sDspWidth:Ljava/lang/String;

.field private static final sLanguage:Ljava/lang/String;

.field private static final sLocale:Ljava/lang/String;

.field private static final sOsApi:Ljava/lang/String;

.field private static final sOsBuild:Ljava/lang/String;

.field private static final sOsVersion:Ljava/lang/String;

.field private static sRawAndroidId:Ljava/lang/String;

.field private static sRawDeviceId:Ljava/lang/String;

.field private static final sSerialNumber:Ljava/lang/String;


# instance fields
.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sDevice:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sDeviceModel:Ljava/lang/String;

    .line 55
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sput-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sOsBuild:Ljava/lang/String;

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sOsApi:Ljava/lang/String;

    .line 57
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sOsVersion:Ljava/lang/String;

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sLocale:Ljava/lang/String;

    .line 59
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sCountry:Ljava/lang/String;

    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sLanguage:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->_getSerialNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sSerialNumber:Ljava/lang/String;

    .line 65
    sput-object v2, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sRawDeviceId:Ljava/lang/String;

    .line 66
    sput-object v2, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sRawAndroidId:Ljava/lang/String;

    .line 68
    sput-object v2, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sDspWidth:Ljava/lang/String;

    .line 69
    sput-object v2, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sDspHeight:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 76
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sRawDeviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->getRawDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sRawDeviceId:Ljava/lang/String;

    .line 80
    :cond_0
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sRawAndroidId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->getRawAndroidId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sRawAndroidId:Ljava/lang/String;

    .line 84
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    sget-object v1, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sDspWidth:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 87
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sDspWidth:Ljava/lang/String;

    .line 89
    :cond_2
    sget-object v1, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sDspHeight:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 90
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sDspHeight:Ljava/lang/String;

    .line 93
    :cond_3
    return-void
.end method

.method private static _getSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 238
    const-string v1, "unknown"

    .line 241
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string v2, "SERIAL"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    .line 243
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-object v0

    .line 245
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRawAndroidId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 270
    const-string v0, "unknown"

    .line 272
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 273
    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    if-eqz v1, :cond_0

    .line 277
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_0
    return-object v0
.end method

.method private getRawDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 252
    const-string v1, "unknown"

    .line 254
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 255
    const/4 v2, 0x0

    .line 257
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 258
    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 259
    const-string v0, "phone"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 261
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sRawAndroidId:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidIdMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sRawAndroidId:Ljava/lang/String;

    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAndroidIdSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sRawAndroidId:Ljava/lang/String;

    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_2

    .line 186
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 188
    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 194
    :goto_0
    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "wifi"

    .line 201
    :goto_1
    return-object v0

    .line 195
    :cond_0
    const-string v0, "carrier"

    goto :goto_1

    .line 198
    :cond_1
    const-string v0, "unknown"

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sRawDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->base64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sRawDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdSha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sRawDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sDeviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "InApp"

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "Android"

    return-object v0
.end method

.method public getDspHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sDspHeight:Ljava/lang/String;

    return-object v0
.end method

.method public getDspWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sDspWidth:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenUDID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lorg/OpenUDID/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sOsApi:Ljava/lang/String;

    return-object v0
.end method

.method public getOsBuild()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sOsBuild:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 207
    const-string v1, "_device_platform"

    const-string v2, "InApp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "device"

    sget-object v2, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sDevice:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "dtype"

    const-string v2, "Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "dmodel"

    sget-object v2, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sDeviceModel:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "osbuild"

    sget-object v2, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sOsBuild:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, "osapi"

    sget-object v2, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sOsApi:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v1, "osver"

    sget-object v2, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sOsVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "locale"

    sget-object v2, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sLocale:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "country"

    sget-object v2, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sCountry:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "lang"

    sget-object v2, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sLanguage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v1, "_android_serial"

    sget-object v2, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sSerialNumber:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v1, "package"

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "_did"

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v1, "_didmd5"

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->getDeviceIdMd5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v1, "_didsha1"

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->getDeviceIdSha1()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v1, "_androidid"

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v1, "_androididmd5"

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->getAndroidIdMd5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v1, "_androididsha1"

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->getAndroidIdSha1()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v1, "contype"

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->getConnectionType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v1, "openudid"

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->getOpenUDID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v1, "dspWidth"

    sget-object v2, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sDspWidth:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "dspHeight"

    sget-object v2, Lcom/lifestreet/android/lsmsdk/DeviceInfo;->sDspHeight:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-object v0
.end method
