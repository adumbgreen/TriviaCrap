.class public Lcom/facebook/ads/internal/AdvertisingIdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONNECTION_RESULT_SUCCESS:I


# instance fields
.field private final id:Ljava/lang/String;

.field private final limitAdTrackingEnabled:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/ads/internal/AdvertisingIdInfo;->id:Ljava/lang/String;

    .line 39
    iput-boolean p2, p0, Lcom/facebook/ads/internal/AdvertisingIdInfo;->limitAdTrackingEnabled:Z

    .line 40
    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;Lcom/facebook/ads/internal/AdUtilities$Fb4aData;)Lcom/facebook/ads/internal/AdvertisingIdInfo;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 58
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get advertising info on main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/facebook/ads/internal/AdUtilities$Fb4aData;->advertisingId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Lcom/facebook/ads/internal/AdvertisingIdInfo;

    iget-object v1, p1, Lcom/facebook/ads/internal/AdUtilities$Fb4aData;->advertisingId:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/facebook/ads/internal/AdUtilities$Fb4aData;->limitTrackingEnabled:Z

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/AdvertisingIdInfo;-><init>(Ljava/lang/String;Z)V

    .line 100
    :goto_0
    return-object v0

    .line 66
    :cond_1
    const-string v0, "com.google.android.gms.common.GooglePlayServicesUtil"

    const-string v2, "isGooglePlayServicesAvailable"

    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/facebook/ads/internal/AdUtilities;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 71
    if-nez v0, :cond_2

    move-object v0, v1

    .line 72
    goto :goto_0

    .line 74
    :cond_2
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/AdUtilities;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move-object v0, v1

    .line 76
    goto :goto_0

    .line 79
    :cond_4
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string v2, "getAdvertisingIdInfo"

    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/facebook/ads/internal/AdUtilities;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 84
    if-nez v0, :cond_5

    move-object v0, v1

    .line 85
    goto :goto_0

    .line 87
    :cond_5
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/AdUtilities;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 88
    if-nez v2, :cond_6

    move-object v0, v1

    .line 89
    goto :goto_0

    .line 92
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getId"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/internal/AdUtilities;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isLimitAdTrackingEnabled"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/facebook/ads/internal/AdUtilities;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 94
    if-eqz v0, :cond_7

    if-nez v3, :cond_8

    :cond_7
    move-object v0, v1

    .line 95
    goto :goto_0

    .line 98
    :cond_8
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/internal/AdUtilities;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/facebook/ads/internal/AdUtilities;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 100
    new-instance v2, Lcom/facebook/ads/internal/AdvertisingIdInfo;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v2, v0, v1}, Lcom/facebook/ads/internal/AdvertisingIdInfo;-><init>(Ljava/lang/String;Z)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/ads/internal/AdvertisingIdInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdvertisingIdInfo;->limitAdTrackingEnabled:Z

    return v0
.end method
