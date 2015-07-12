.class public Lcom/mologiq/analytics/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mologiq/analytics/f;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/mologiq/analytics/f;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mologiq/analytics/i;->a:Lcom/mologiq/analytics/f;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/mologiq/analytics/i;->b:Landroid/content/Context;

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/mologiq/analytics/i;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/mologiq/analytics/i;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/mologiq/analytics/i;->b:Landroid/content/Context;

    .line 125
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 124
    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 143
    :cond_0
    :goto_0
    return-object v0

    .line 138
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/mologiq/analytics/i;->b:Landroid/content/Context;

    .line 152
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 151
    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 158
    :catch_0
    move-exception v1

    goto :goto_0
.end method
