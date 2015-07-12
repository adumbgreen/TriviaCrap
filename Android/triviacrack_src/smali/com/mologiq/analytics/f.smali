.class public Lcom/mologiq/analytics/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/mologiq/analytics/f;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    :try_start_0
    const-string v2, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 68
    const-string v2, "com.google.android.gms.common.f"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 69
    const-string v2, "com.google.android.gms.common.g"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    if-eqz v1, :cond_0

    .line 80
    new-instance v0, Lcom/mologiq/analytics/i;

    invoke-direct {v0, p0, p1}, Lcom/mologiq/analytics/i;-><init>(Lcom/mologiq/analytics/f;Landroid/content/Context;)V

    .line 83
    invoke-static {v0}, Lcom/mologiq/analytics/i;->a(Lcom/mologiq/analytics/i;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mologiq/analytics/f;->b:Ljava/lang/String;

    .line 85
    invoke-virtual {v0}, Lcom/mologiq/analytics/i;->a()Z

    move-result v0

    .line 84
    iput-boolean v0, p0, Lcom/mologiq/analytics/f;->c:Z

    .line 107
    :goto_1
    return-void

    .line 72
    :catch_0
    move-exception v1

    move v1, v0

    .line 74
    goto :goto_0

    .line 91
    :cond_0
    const/4 v1, 0x0

    .line 95
    :try_start_1
    invoke-static {p1}, Lcom/mologiq/analytics/f;->b(Landroid/content/Context;)Lcom/mologiq/analytics/h;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/mologiq/analytics/h;->a()Ljava/lang/String;

    move-result-object v1

    .line 97
    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Lcom/mologiq/analytics/h;->a(ZLandroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 103
    :goto_2
    iput-object v1, p0, Lcom/mologiq/analytics/f;->b:Ljava/lang/String;

    .line 104
    iput-boolean v0, p0, Lcom/mologiq/analytics/f;->c:Z

    goto :goto_1

    .line 99
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)Lcom/mologiq/analytics/f;
    .locals 1
    .parameter

    .prologue
    .line 30
    sget-object v0, Lcom/mologiq/analytics/f;->a:Lcom/mologiq/analytics/f;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/mologiq/analytics/f;

    invoke-direct {v0, p0}, Lcom/mologiq/analytics/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mologiq/analytics/f;->a:Lcom/mologiq/analytics/f;

    .line 35
    :cond_0
    sget-object v0, Lcom/mologiq/analytics/f;->a:Lcom/mologiq/analytics/f;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Lcom/mologiq/analytics/h;
    .locals 3
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 175
    const-string v1, "Cannot be called from the main thread"

    .line 174
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 180
    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    new-instance v1, Lcom/mologiq/analytics/g;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/mologiq/analytics/g;-><init>(Lcom/mologiq/analytics/g;)V

    .line 188
    new-instance v0, Landroid/content/Intent;

    .line 189
    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    .line 188
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const/4 v2, 0x1

    .line 191
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 192
    if-eqz v0, :cond_1

    .line 196
    :try_start_1
    new-instance v0, Lcom/mologiq/analytics/h;

    .line 197
    invoke-virtual {v1}, Lcom/mologiq/analytics/g;->a()Landroid/os/IBinder;

    move-result-object v2

    .line 196
    invoke-direct {v0, v2}, Lcom/mologiq/analytics/h;-><init>(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 199
    return-object v0

    .line 182
    :catch_0
    move-exception v0

    .line 184
    throw v0

    .line 202
    :catch_1
    move-exception v0

    .line 204
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    :catchall_0
    move-exception v0

    .line 208
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 209
    throw v0

    .line 211
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Google Play connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    sput-object v0, Lcom/mologiq/analytics/f;->a:Lcom/mologiq/analytics/f;

    .line 309
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mologiq/analytics/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/mologiq/analytics/f;->c:Z

    return v0
.end method
