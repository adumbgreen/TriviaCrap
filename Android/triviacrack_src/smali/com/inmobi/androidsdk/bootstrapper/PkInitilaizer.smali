.class public Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PRODUCT_CARB:Ljava/lang/String; = "pk"

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

.field private static c:Lcom/inmobi/androidsdk/bootstrapper/PkParams;

.field private static d:Lcom/inmobi/commons/cache/CacheController$Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->a:Landroid/content/Context;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->b:Ljava/util/Map;

    .line 22
    new-instance v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->c:Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    .line 24
    new-instance v0, Lcom/inmobi/androidsdk/bootstrapper/b;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/bootstrapper/b;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

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
    invoke-static {p0}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->b(Landroid/content/Context;)V

    .line 48
    :try_start_0
    const-string v0, "pk"

    sget-object v1, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->b:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

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
    .locals 3
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
    .line 83
    const-string v0, "SK"

    const-string v1, "Saving config to map"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->getUidMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->b:Ljava/util/Map;

    .line 87
    :try_start_0
    new-instance v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;-><init>()V

    .line 88
    invoke-virtual {v0, p0}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->setFromMap(Ljava/util/Map;)V

    .line 89
    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->c:Lcom/inmobi/androidsdk/bootstrapper/PkParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "[InMobi]-[RE]-4.3.0"

    const-string v2, "Config couldn\'t be parsed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    if-eqz p0, :cond_2

    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 57
    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->a:Landroid/content/Context;

    .line 62
    invoke-static {p0}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->getUidMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->b:Ljava/util/Map;

    .line 64
    :try_start_0
    const-string v0, "pk"

    sget-object v1, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->b:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/cache/ProductConfig;->getData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "pk"

    sget-object v1, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->b:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/cache/ProductConfig;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->a(Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0

    .line 73
    :cond_2
    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/PkParams;
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

    invoke-static {v0}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->a(Landroid/content/Context;)V

    .line 41
    :cond_0
    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->c:Lcom/inmobi/androidsdk/bootstrapper/PkParams;

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
    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->c:Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->getUID()Lcom/inmobi/commons/uid/UID;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/inmobi/commons/uid/UIDUtil;->getMap(Landroid/content/Context;Lcom/inmobi/commons/uid/UID;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static initialize()V
    .locals 0

    .prologue
    .line 33
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    .line 34
    return-void
.end method
