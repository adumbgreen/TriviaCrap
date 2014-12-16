.class public Lcom/inmobi/androidsdk/carb/CarbInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PRODUCT_CARB:Ljava/lang/String; = "carb"

.field private static a:Landroid/content/Context;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/inmobi/androidsdk/carb/CarbConfigParams;

.field private static d:Lcom/inmobi/commons/cache/CacheController$Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/androidsdk/carb/CarbInitializer;->a:Landroid/content/Context;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/carb/CarbInitializer;->b:Ljava/util/Map;

    .line 22
    new-instance v0, Lcom/inmobi/androidsdk/carb/CarbConfigParams;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/carb/CarbConfigParams;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/carb/CarbInitializer;->c:Lcom/inmobi/androidsdk/carb/CarbConfigParams;

    .line 24
    new-instance v0, Lcom/inmobi/androidsdk/carb/a;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/carb/a;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/carb/CarbInitializer;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 45
    invoke-static {p0}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->b(Landroid/content/Context;)V

    .line 48
    :try_start_0
    const-string v0, "carb"

    sget-object v1, Lcom/inmobi/androidsdk/carb/CarbInitializer;->b:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/androidsdk/carb/CarbInitializer;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Ljava/util/Map;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 83
    const-string v0, "CARB"

    const-string v1, "Saving config to map"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/inmobi/androidsdk/carb/CarbInitializer;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->getUidMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/inmobi/androidsdk/carb/CarbInitializer;->b:Ljava/util/Map;

    .line 87
    :try_start_0
    const-string v0, "AND"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "common"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populateToNewMap(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/inmobi/androidsdk/carb/CarbConfigParams;

    invoke-direct {v1}, Lcom/inmobi/androidsdk/carb/CarbConfigParams;-><init>()V

    .line 89
    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->setFromMap(Ljava/util/Map;)V

    .line 90
    sput-object v1, Lcom/inmobi/androidsdk/carb/CarbInitializer;->c:Lcom/inmobi/androidsdk/carb/CarbConfigParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 94
    :goto_0
    return v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string v1, "[InMobi]-[RE]-4.3.0"

    const-string v2, "Config couldn\'t be parsed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    if-eqz p0, :cond_2

    sget-object v0, Lcom/inmobi/androidsdk/carb/CarbInitializer;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 57
    sget-object v0, Lcom/inmobi/androidsdk/carb/CarbInitializer;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/inmobi/androidsdk/carb/CarbInitializer;->a:Landroid/content/Context;

    .line 62
    invoke-static {p0}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->getUidMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/inmobi/androidsdk/carb/CarbInitializer;->b:Ljava/util/Map;

    .line 64
    :try_start_0
    const-string v0, "carb"

    sget-object v1, Lcom/inmobi/androidsdk/carb/CarbInitializer;->b:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/androidsdk/carb/CarbInitializer;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/cache/ProductConfig;->getData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "carb"

    sget-object v1, Lcom/inmobi/androidsdk/carb/CarbInitializer;->b:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/androidsdk/carb/CarbInitializer;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/cache/ProductConfig;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->a(Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0

    .line 73
    :cond_2
    sget-object v0, Lcom/inmobi/androidsdk/carb/CarbInitializer;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static getConfigParams()Lcom/inmobi/androidsdk/carb/CarbConfigParams;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->a(Landroid/content/Context;)V

    .line 41
    :cond_0
    sget-object v0, Lcom/inmobi/androidsdk/carb/CarbInitializer;->c:Lcom/inmobi/androidsdk/carb/CarbConfigParams;

    return-object v0
.end method

.method public static getUidMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    sget-object v0, Lcom/inmobi/androidsdk/carb/CarbInitializer;->c:Lcom/inmobi/androidsdk/carb/CarbConfigParams;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->getUID()Lcom/inmobi/commons/uid/UID;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/inmobi/commons/uid/UIDUtil;->getMap(Landroid/content/Context;Lcom/inmobi/commons/uid/UID;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static initialize()V
    .locals 0

    .prologue
    .line 33
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/androidsdk/carb/CarbConfigParams;

    .line 34
    return-void
.end method
