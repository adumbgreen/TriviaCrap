.class Lcom/amazon/device/ads/DebugProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUG_AAX_AD_HOSTNAME:Ljava/lang/String; = "debug.aaxHostname"

.field public static final DEBUG_AAX_AD_PARAMS:Ljava/lang/String; = "debug.aaxAdParams"

.field public static final DEBUG_AAX_CONFIG_HOSTNAME:Ljava/lang/String; = "debug.aaxConfigHostname"

.field public static final DEBUG_AAX_CONFIG_PARAMS:Ljava/lang/String; = "debug.aaxConfigParams"

.field public static final DEBUG_AAX_CONFIG_USE_SECURE:Ljava/lang/String; = "debug.aaxConfigUseSecure"

.field public static final DEBUG_ADID:Ljava/lang/String; = "debug.adid"

.field public static final DEBUG_AD_PREF_URL:Ljava/lang/String; = "debug.adPrefURL"

.field public static final DEBUG_APPID:Ljava/lang/String; = "debug.appid"

.field public static final DEBUG_CHANNEL:Ljava/lang/String; = "debug.channel"

.field public static final DEBUG_CONFIG_FEATURE_USE_GPS_ADVERTISING_ID:Ljava/lang/String; = "debug.fUseGPSAID"

.field public static final DEBUG_DINFO:Ljava/lang/String; = "debug.dinfo"

.field public static final DEBUG_ECPM:Ljava/lang/String; = "debug.ec"

.field public static final DEBUG_GEOLOC:Ljava/lang/String; = "debug.geoloc"

.field public static final DEBUG_IDFA:Ljava/lang/String; = "debug.idfa"

.field public static final DEBUG_LOGGING:Ljava/lang/String; = "debug.logging"

.field public static final DEBUG_MADS_HOSTNAME:Ljava/lang/String; = "debug.madsHostname"

.field public static final DEBUG_MADS_USE_SECURE:Ljava/lang/String; = "debug.madsUseSecure"

.field public static final DEBUG_MD5UDID:Ljava/lang/String; = "debug.md5udid"

.field public static final DEBUG_MXSZ:Ljava/lang/String; = "debug.mxsz"

.field public static final DEBUG_NORETRYTTL:Ljava/lang/String; = "debug.noRetryTTL"

.field public static final DEBUG_NORETRYTTL_MAX:Ljava/lang/String; = "debug.noRetryTTLMax"

.field public static final DEBUG_ON:Ljava/lang/String; = "debug.mode"

.field public static final DEBUG_OPT_OUT:Ljava/lang/String; = "debug.optOut"

.field public static final DEBUG_PA:Ljava/lang/String; = "debug.pa"

.field public static final DEBUG_PK:Ljava/lang/String; = "debug.pk"

.field public static final DEBUG_PKG:Ljava/lang/String; = "debug.pkg"

.field public static final DEBUG_PT:Ljava/lang/String; = "debug.pt"

.field public static final DEBUG_SEND_GEO:Ljava/lang/String; = "debug.sendGeo"

.field public static final DEBUG_SHA1UDID:Ljava/lang/String; = "debug.sha1udid"

.field public static final DEBUG_SHOULD_FETCH_CONFIG:Ljava/lang/String; = "debug.shouldFetchConfig"

.field public static final DEBUG_SHOULD_IDENTIFY_USER:Ljava/lang/String; = "debug.shouldIdentifyUser"

.field public static final DEBUG_SHOULD_REGISTER_SIS:Ljava/lang/String; = "debug.shouldRegisterSIS"

.field public static final DEBUG_SIS_DOMAIN:Ljava/lang/String; = "debug.sisDomain"

.field public static final DEBUG_SIS_URL:Ljava/lang/String; = "debug.sisURL"

.field public static final DEBUG_SIZE:Ljava/lang/String; = "debug.size"

.field public static final DEBUG_SLOT:Ljava/lang/String; = "debug.slot"

.field public static final DEBUG_SLOTS:Ljava/lang/String; = "debug.slots"

.field public static final DEBUG_SLOT_ID:Ljava/lang/String; = "debug.slotId"

.field public static final DEBUG_SP:Ljava/lang/String; = "debug.sp"

.field public static final DEBUG_TEST:Ljava/lang/String; = "debug.test"

.field public static final DEBUG_TLS_ENABLED:Ljava/lang/String; = "debug.tlsEnabled"

.field public static final DEBUG_UA:Ljava/lang/String; = "debug.ua"

.field public static final DEBUG_VER:Ljava/lang/String; = "debug.ver"

.field public static final DEBUG_WEBVIEWS:Ljava/lang/String; = "debug.webViews"

.field private static final FILE_PREFIX:Ljava/lang/String; = "/com.amazon.device.ads.debug"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static debugModeOn:Z

.field private static final debugProperties:Ljava/util/Properties;

.field private static final privExponent:Ljava/math/BigInteger;

.field private static final privModulus:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-class v0, Lcom/amazon/device/ads/DebugProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/DebugProperties;->LOG_TAG:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "22425945969293236512819607281747202268852113345956851069545419503178249900977203670147638322801582881051882957295768557918356441519366172126884608406316888515239296504501830280664879549133570276792155151832332847188532369002492210234019359186842709493620665119919750832332220777141369255943445578381285984064028865613478676828533273460580467686485184132743895959747097454385452868408957601246667523882372216446056029831689133478714597838700864119273209955182548633182248700235085802575904827859971001196599005060045450779595767759943984991630413046800554347791145167910883355627096118148593841261053098773337592734097"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/DebugProperties;->privModulus:Ljava/math/BigInteger;

    .line 79
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "5599215006722084151841970702827860151139465197978118529242591197804380779249736540498127864809226859371835159226553869008622098243456195347852554241917744888762998133926842072150379542281041403163862165638226686887497980590930009552760406707269286898150890998325325890252103828011111664174475487114957696526157790937869377570600085450453371238028811033168218737171144699577236108423054506552958366535341910569552237227686862748056351625445281035713423043506793107235726047151346608576583081807969458368853010104969843563629579750936551771756389538574062221915919980316992216032119182896925094308799622409361028579777"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/DebugProperties;->privExponent:Ljava/math/BigInteger;

    .line 81
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsDebugProperty(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 224
    sget-boolean v0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x0

    .line 230
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected static decrypt([B)[B
    .locals 5
    .parameter

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 243
    :try_start_0
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    sget-object v2, Lcom/amazon/device/ads/DebugProperties;->privModulus:Ljava/math/BigInteger;

    sget-object v3, Lcom/amazon/device/ads/DebugProperties;->privExponent:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 244
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 245
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 247
    const-string v2, "RSA"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 248
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 249
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    .line 251
    :catch_0
    move-exception v1

    .line 253
    sget-object v2, Lcom/amazon/device/ads/DebugProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " trying to decrypt debug file"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static disableDebugging()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    .line 272
    return-void
.end method

.method static enableDebugging()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    .line 267
    return-void
.end method

.method public static getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 174
    sget-boolean v0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    if-nez v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-object p1

    .line 178
    :cond_1
    sget-object v0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 189
    sget-object v1, Lcom/amazon/device/ads/DebugProperties;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unable to parse boolean debug property - property: %s, value: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getDebugPropertyAsBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getDebugPropertyAsInteger(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getDebugPropertyAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 147
    sget-boolean v0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    if-nez v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-object p1

    .line 151
    :cond_1
    sget-object v0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 162
    sget-object v1, Lcom/amazon/device/ads/DebugProperties;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unable to parse integer debug property - property: %s, value: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getDebugPropertyAsLong(Ljava/lang/String;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDebugPropertyAsLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 201
    sget-boolean v0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    if-nez v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-object p1

    .line 205
    :cond_1
    sget-object v0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 212
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 216
    sget-object v1, Lcom/amazon/device/ads/DebugProperties;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unable to parse long debug property - property: %s, value: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 136
    sget-boolean v0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-object p1

    :cond_0
    sget-object v0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static isDebugModeOn()Z
    .locals 1

    .prologue
    .line 235
    sget-boolean v0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z

    return v0
.end method

.method public static readDebugProperties()V
    .locals 6

    .prologue
    .line 86
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/com.amazon.device.ads.debug"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const/4 v2, 0x0

    .line 100
    const/4 v0, 0x0

    .line 101
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    .line 103
    :cond_2
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 105
    array-length v3, v2

    sub-int/2addr v3, v0

    .line 106
    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 107
    if-lez v3, :cond_2

    .line 108
    add-int/2addr v0, v3

    goto :goto_1

    .line 111
    :cond_3
    invoke-static {v2}, Lcom/amazon/device/ads/DebugProperties;->decrypt([B)[B

    move-result-object v0

    .line 112
    if-eqz v0, :cond_4

    .line 114
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 117
    sget-object v0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 118
    sget-object v0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 119
    sget-object v0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    const-string v2, "debug.mode"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amazon/device/ads/DebugProperties;->debugModeOn:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    :cond_4
    if-eqz v1, :cond_0

    .line 127
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 127
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method static setDebugProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 261
    sget-object v0, Lcom/amazon/device/ads/DebugProperties;->debugProperties:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-void
.end method
