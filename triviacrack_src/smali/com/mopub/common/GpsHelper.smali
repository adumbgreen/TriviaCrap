.class public Lcom/mopub/common/GpsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADVERTISING_ID_KEY:Ljava/lang/String; = "advertisingId"

.field public static final GOOGLE_PLAY_SUCCESS_CODE:I = 0x0

.field public static final IS_LIMIT_AD_TRACKING_ENABLED_KEY:Ljava/lang/String; = "isLimitAdTrackingEnabled"

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "com.google.android.gms.common.GooglePlayServicesUtil"

    sput-object v0, Lcom/mopub/common/GpsHelper;->a:Ljava/lang/String;

    .line 19
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    sput-object v0, Lcom/mopub/common/GpsHelper;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/mopub/common/GpsHelper;->b:Ljava/lang/String;

    return-object v0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 147
    :try_start_0
    const-string v0, "getId"

    invoke-static {p0, v0}, Lcom/mopub/common/factories/MethodBuilderFactory;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    move-object v0, p1

    .line 149
    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    sget-object v0, Lcom/mopub/common/GpsHelper;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/common/util/Reflection;->classFound(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-interface {p1}, Lcom/mopub/common/GpsHelper$GpsHelperListener;->onFetchAdInfoCompleted()V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    :try_start_0
    new-instance v0, Lcom/mopub/common/g;

    invoke-direct {v0, p0, p1}, Lcom/mopub/common/g;-><init>(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string v1, "Error executing FetchAdvertisingInfoTask"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-interface {p1}, Lcom/mopub/common/GpsHelper$GpsHelperListener;->onFetchAdInfoCompleted()V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mopub/common/GpsHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/mopub/common/GpsHelper;->a(Ljava/lang/Object;Z)Z

    move-result v1

    .line 141
    invoke-static {p0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v2

    .line 142
    invoke-virtual {v2, v0, v1}, Lcom/mopub/common/ClientMetadata;->setAdvertisingInfo(Ljava/lang/String;Z)V

    .line 143
    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 27
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "isGooglePlayServicesAvailable"

    invoke-static {v0, v2}, Lcom/mopub/common/factories/MethodBuilderFactory;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    sget-object v2, Lcom/mopub/common/GpsHelper;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    const-class v2, Landroid/content/Context;

    invoke-virtual {v0, v2, p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    move v0, v1

    .line 35
    goto :goto_0
.end method

.method static a(Ljava/lang/Object;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    :try_start_0
    const-string v0, "isLimitAdTrackingEnabled"

    invoke-static {p0, v0}, Lcom/mopub/common/factories/MethodBuilderFactory;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 156
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 158
    :cond_0
    :goto_0
    return p1

    .line 157
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static b(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-static {p0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->isAdvertisingInfoSet()Z

    move-result v0

    return v0
.end method

.method public static fetchAdvertisingInfoAsync(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lcom/mopub/common/GpsHelper;->a(Landroid/content/Context;)Z

    move-result v0

    .line 58
    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/mopub/common/GpsHelper;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    invoke-static {p0, p1}, Lcom/mopub/common/GpsHelper;->a(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    if-eqz p1, :cond_2

    .line 62
    invoke-interface {p1}, Lcom/mopub/common/GpsHelper$GpsHelperListener;->onFetchAdInfoCompleted()V

    .line 64
    :cond_2
    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mopub/common/GpsHelper;->a(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V

    goto :goto_0
.end method

.method public static isLimitAdTrackingEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 40
    .line 41
    invoke-static {p0}, Lcom/mopub/common/GpsHelper;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {p0}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "isLimitAdTrackingEnabled"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 45
    :cond_0
    return v0
.end method

.method public static setClassNamesForTesting()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 167
    const-string v0, "java.lang.Class"

    .line 168
    sput-object v0, Lcom/mopub/common/GpsHelper;->a:Ljava/lang/String;

    .line 169
    sput-object v0, Lcom/mopub/common/GpsHelper;->b:Ljava/lang/String;

    .line 170
    return-void
.end method
