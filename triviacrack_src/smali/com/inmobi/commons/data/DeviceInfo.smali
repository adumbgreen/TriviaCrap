.class public Lcom/inmobi/commons/data/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:I

.field private static j:Lcom/inmobi/commons/data/DeviceInfo;


# instance fields
.field private i:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/inmobi/commons/data/DeviceInfo;->d:Ljava/lang/String;

    .line 24
    sput-object v0, Lcom/inmobi/commons/data/DeviceInfo;->e:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/inmobi/commons/data/DeviceInfo;

    invoke-direct {v0}, Lcom/inmobi/commons/data/DeviceInfo;-><init>()V

    sput-object v0, Lcom/inmobi/commons/data/DeviceInfo;->j:Lcom/inmobi/commons/data/DeviceInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/inmobi/commons/data/DeviceInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static a(I)V
    .locals 0
    .parameter

    .prologue
    .line 154
    sput p0, Lcom/inmobi/commons/data/DeviceInfo;->h:I

    .line 155
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 61
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/data/DeviceInfo;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 62
    const-string v0, "inmobisdkaid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    const-string v1, "A_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/data/DeviceInfo;->f:Ljava/lang/String;

    .line 68
    :cond_0
    sget-object v0, Lcom/inmobi/commons/data/DeviceInfo;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 69
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/data/DeviceInfo;->f:Ljava/lang/String;

    .line 70
    const-string v0, "inmobisdkaid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    const-string v1, "A_ID"

    sget-object v2, Lcom/inmobi/commons/data/DeviceInfo;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    sput-object p0, Lcom/inmobi/commons/data/DeviceInfo;->a:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    sput-object p0, Lcom/inmobi/commons/data/DeviceInfo;->b:Ljava/lang/String;

    .line 101
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    sput-object p0, Lcom/inmobi/commons/data/DeviceInfo;->c:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public static getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/inmobi/commons/data/DeviceInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/inmobi/commons/data/DeviceInfo;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/inmobi/commons/data/DeviceInfo;->j:Lcom/inmobi/commons/data/DeviceInfo;

    return-object v0
.end method

.method public static getLocalization()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/inmobi/commons/data/DeviceInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/inmobi/commons/data/DeviceInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getOrientation()I
    .locals 1

    .prologue
    .line 146
    sget v0, Lcom/inmobi/commons/data/DeviceInfo;->h:I

    return v0
.end method

.method public static getPhoneDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/inmobi/commons/data/DeviceInfo;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 120
    const-string v0, ""

    .line 122
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/inmobi/commons/data/DeviceInfo;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getScreenDensity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/inmobi/commons/data/DeviceInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static getScreenSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/inmobi/commons/data/DeviceInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static setPhoneDefaultUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    sput-object p0, Lcom/inmobi/commons/data/DeviceInfo;->g:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public static setScreenDensity(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    sput-object p0, Lcom/inmobi/commons/data/DeviceInfo;->e:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public static setScreenSize(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    sput-object p0, Lcom/inmobi/commons/data/DeviceInfo;->d:Ljava/lang/String;

    .line 132
    return-void
.end method


# virtual methods
.method public fillDeviceInfo()V
    .locals 4

    .prologue
    .line 158
    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 160
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/data/DeviceInfo;->c(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 195
    if-eqz v2, :cond_3

    .line 196
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 198
    if-eqz v1, :cond_0

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/inmobi/commons/data/DeviceInfo;->b(Ljava/lang/String;)V

    .line 221
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 222
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/data/DeviceInfo;->a(Landroid/content/Context;)V

    .line 226
    :cond_2
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getConnectivityType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/data/DeviceInfo;->a(Ljava/lang/String;)V

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/data/DeviceInfo;->i:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getCurrentOrientationInFixedValues(Landroid/app/Activity;)I

    move-result v0

    .line 231
    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    .line 232
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/inmobi/commons/data/DeviceInfo;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_1
    return-void

    .line 203
    :cond_3
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "user.language"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v3, "user.region"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 207
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_2
    if-nez v0, :cond_0

    .line 211
    const-string v0, "en"

    goto :goto_0

    .line 233
    :cond_4
    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 234
    const/4 v0, 0x4

    :try_start_1
    invoke-static {v0}, Lcom/inmobi/commons/data/DeviceInfo;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string v1, "[InMobi]-4.3.0"

    const-string v2, "Error getting the orientation info "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 235
    :cond_5
    if-nez v0, :cond_6

    .line 236
    const/4 v0, 0x3

    :try_start_2
    invoke-static {v0}, Lcom/inmobi/commons/data/DeviceInfo;->a(I)V

    goto :goto_1

    .line 238
    :cond_6
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/inmobi/commons/data/DeviceInfo;->a(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_7
    move-object v0, v2

    goto :goto_2
.end method

.method public init(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/inmobi/commons/data/DeviceInfo;->i:Landroid/app/Activity;

    .line 36
    return-void
.end method
