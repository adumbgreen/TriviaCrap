.class public Lcom/mologiq/analytics/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays",
        "NewApi"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mologiq/analytics/t;->a:Ljava/lang/ref/WeakReference;

    .line 39
    return-void
.end method

.method private a(Lcom/mologiq/analytics/ad;Landroid/content/Context;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 45
    :try_start_0
    invoke-static {p2}, Lcom/mologiq/analytics/ac;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ac;

    move-result-object v6

    .line 47
    invoke-virtual {v6}, Lcom/mologiq/analytics/ac;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 54
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 56
    invoke-virtual {p1, p2}, Lcom/mologiq/analytics/ad;->e(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    .line 57
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v3

    move-object v2, v3

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    .line 95
    invoke-virtual {p1, v2}, Lcom/mologiq/analytics/ad;->a(Ljava/util/List;)V

    .line 96
    invoke-virtual {p1, v5}, Lcom/mologiq/analytics/ad;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 103
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 104
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 106
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 107
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 108
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {p1, v1}, Lcom/mologiq/analytics/ad;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    :cond_2
    :goto_1
    :try_start_2
    invoke-static {p2}, Lcom/mologiq/analytics/f;->a(Landroid/content/Context;)Lcom/mologiq/analytics/f;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/mologiq/analytics/f;->a()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v1}, Lcom/mologiq/analytics/f;->b()Z

    move-result v1

    .line 127
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_f

    .line 130
    invoke-virtual {p1, v2}, Lcom/mologiq/analytics/ad;->i(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1, v1}, Lcom/mologiq/analytics/ad;->a(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 148
    :goto_2
    :try_start_3
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/mologiq/analytics/ad;->c(Ljava/lang/String;)V

    .line 149
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/mologiq/analytics/ad;->d(Ljava/lang/String;)V

    .line 150
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/mologiq/analytics/ad;->e(Ljava/lang/String;)V

    .line 151
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/mologiq/analytics/ad;->k(Ljava/lang/String;)V

    .line 152
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/mologiq/analytics/ad;->g(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 156
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 157
    if-eqz v2, :cond_3

    .line 159
    invoke-virtual {p1, v2}, Lcom/mologiq/analytics/ad;->l(Ljava/lang/String;)V

    .line 161
    :cond_3
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_4

    .line 164
    invoke-virtual {p1, v1}, Lcom/mologiq/analytics/ad;->m(Ljava/lang/String;)V

    .line 167
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mologiq/analytics/ad;->n(Ljava/lang/String;)V

    .line 169
    instance-of v1, p2, Landroid/app/Activity;

    if-eqz v1, :cond_5

    .line 171
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_5

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "*"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 175
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {p1, v1}, Lcom/mologiq/analytics/ad;->o(Ljava/lang/String;)V

    .line 178
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mologiq/analytics/ad;->h(Ljava/lang/String;)V

    .line 181
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 180
    invoke-static {p2, v1}, Lcom/mologiq/analytics/ag;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 181
    if-eqz v1, :cond_8

    .line 184
    invoke-virtual {v6}, Lcom/mologiq/analytics/ac;->j()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 186
    new-instance v4, Lcom/mologiq/analytics/af;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, p1}, Lcom/mologiq/analytics/af;-><init>(Lcom/mologiq/analytics/ad;)V

    .line 189
    const-string v1, "wifi"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 188
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 190
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 191
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 193
    if-eqz v2, :cond_7

    .line 196
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 207
    invoke-virtual {v4, v5}, Lcom/mologiq/analytics/af;->a(Ljava/util/List;)V

    .line 209
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 210
    new-instance v2, Lcom/mologiq/analytics/aj;

    invoke-direct {v2}, Lcom/mologiq/analytics/aj;-><init>()V

    .line 211
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mologiq/analytics/aj;->a(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v4, v2}, Lcom/mologiq/analytics/af;->a(Lcom/mologiq/analytics/aj;)V

    .line 213
    invoke-virtual {p1, v4}, Lcom/mologiq/analytics/ad;->a(Lcom/mologiq/analytics/af;)V

    .line 218
    :cond_7
    const-string v1, "phone"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 217
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 220
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {p1, v1}, Lcom/mologiq/analytics/ad;->p(Ljava/lang/String;)V

    .line 226
    :cond_8
    invoke-static {}, Lcom/mologiq/analytics/ai;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mologiq/analytics/ad;->f(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v6}, Lcom/mologiq/analytics/ac;->h()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 233
    const-string v1, "location"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 232
    check-cast v1, Landroid/location/LocationManager;

    .line 238
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 237
    invoke-static {p2, v2}, Lcom/mologiq/analytics/ag;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 238
    if-eqz v2, :cond_15

    .line 241
    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 244
    :goto_4
    if-eqz v2, :cond_11

    .line 246
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 247
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    invoke-virtual {v6}, Lcom/mologiq/analytics/ac;->o()I

    move-result v5

    int-to-double v9, v5

    mul-double/2addr v9, v3

    double-to-int v5, v9

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 251
    invoke-virtual {v6}, Lcom/mologiq/analytics/ac;->o()I

    move-result v5

    int-to-double v9, v5

    mul-double/2addr v9, v7

    double-to-int v5, v9

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    invoke-virtual {p1}, Lcom/mologiq/analytics/ad;->l()D

    move-result-wide v9

    .line 254
    invoke-virtual {v6}, Lcom/mologiq/analytics/ac;->o()I

    move-result v11

    int-to-double v11, v11

    .line 253
    mul-double/2addr v9, v11

    double-to-int v9, v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 255
    invoke-virtual {p1}, Lcom/mologiq/analytics/ad;->m()D

    move-result-wide v9

    .line 256
    invoke-virtual {v6}, Lcom/mologiq/analytics/ac;->o()I

    move-result v6

    int-to-double v11, v6

    .line 255
    mul-double/2addr v9, v11

    double-to-int v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 252
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 258
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 260
    invoke-virtual {p1, v3, v4}, Lcom/mologiq/analytics/ad;->a(D)V

    .line 261
    invoke-virtual {p1, v7, v8}, Lcom/mologiq/analytics/ad;->b(D)V

    .line 265
    :cond_9
    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v3, v1

    invoke-virtual {p1, v3, v4}, Lcom/mologiq/analytics/ad;->d(D)V

    .line 266
    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/mologiq/analytics/ad;->c(D)V

    .line 267
    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v3, v1

    invoke-virtual {p1, v3, v4}, Lcom/mologiq/analytics/ad;->e(D)V

    .line 268
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/mologiq/analytics/ad;->a(J)V

    .line 322
    :cond_a
    :goto_5
    return-void

    .line 57
    :cond_b
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 60
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    if-nez v2, :cond_16

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v2

    .line 68
    :goto_6
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mologiq/analytics/j;

    move-object v2, v0

    .line 70
    invoke-virtual {v2}, Lcom/mologiq/analytics/j;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v2}, Lcom/mologiq/analytics/j;->a()I

    move-result v1

    if-lez v1, :cond_e

    .line 73
    if-nez v5, :cond_c

    .line 75
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 78
    :cond_c
    invoke-virtual {v2}, Lcom/mologiq/analytics/j;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 77
    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 78
    if-eqz v1, :cond_d

    .line 81
    invoke-virtual {v2}, Lcom/mologiq/analytics/j;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 80
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 83
    invoke-virtual {v2}, Lcom/mologiq/analytics/j;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 82
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v4

    .line 84
    goto/16 :goto_0

    .line 88
    :cond_d
    invoke-virtual {v2}, Lcom/mologiq/analytics/j;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 87
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    move-object v2, v4

    goto/16 :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 113
    const-string v1, "Application name not found"

    invoke-static {v1}, Lcom/mologiq/analytics/ag;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 318
    :catch_1
    move-exception v1

    .line 320
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mologiq/analytics/ag;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 137
    :cond_f
    :try_start_4
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-virtual {p1, v1}, Lcom/mologiq/analytics/ad;->j(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 143
    :catch_2
    move-exception v1

    goto/16 :goto_2

    .line 196
    :cond_10
    :try_start_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 198
    if-eqz v2, :cond_6

    iget-object v8, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 200
    new-instance v8, Lcom/mologiq/analytics/aj;

    invoke-direct {v8}, Lcom/mologiq/analytics/aj;-><init>()V

    .line 201
    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lcom/mologiq/analytics/aj;->a(Ljava/lang/String;)V

    .line 202
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 277
    :cond_11
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 276
    invoke-static {p2, v2}, Lcom/mologiq/analytics/ag;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 277
    if-nez v2, :cond_12

    .line 280
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 278
    invoke-static {p2, v2}, Lcom/mologiq/analytics/ag;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 280
    if-eqz v2, :cond_14

    .line 283
    :cond_12
    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 286
    :goto_7
    if-eqz v1, :cond_a

    .line 288
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 289
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    invoke-virtual {v6}, Lcom/mologiq/analytics/ac;->o()I

    move-result v8

    int-to-double v8, v8

    .line 292
    mul-double/2addr v8, v2

    double-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 295
    invoke-virtual {v6}, Lcom/mologiq/analytics/ac;->o()I

    move-result v8

    int-to-double v8, v8

    .line 294
    mul-double/2addr v8, v4

    double-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 291
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 296
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    invoke-virtual {p1}, Lcom/mologiq/analytics/ad;->l()D

    move-result-wide v9

    .line 298
    invoke-virtual {v6}, Lcom/mologiq/analytics/ac;->o()I

    move-result v11

    int-to-double v11, v11

    .line 297
    mul-double/2addr v9, v11

    double-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 299
    invoke-virtual {p1}, Lcom/mologiq/analytics/ad;->m()D

    move-result-wide v9

    .line 300
    invoke-virtual {v6}, Lcom/mologiq/analytics/ac;->o()I

    move-result v6

    int-to-double v11, v6

    .line 299
    mul-double/2addr v9, v11

    double-to-int v6, v9

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 296
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 302
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 304
    invoke-virtual {p1, v2, v3}, Lcom/mologiq/analytics/ad;->a(D)V

    .line 305
    invoke-virtual {p1, v4, v5}, Lcom/mologiq/analytics/ad;->b(D)V

    .line 309
    :cond_13
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/mologiq/analytics/ad;->d(D)V

    .line 310
    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/mologiq/analytics/ad;->c(D)V

    .line 311
    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/mologiq/analytics/ad;->e(D)V

    .line 312
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/mologiq/analytics/ad;->a(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_5

    :cond_14
    move-object v1, v3

    goto :goto_7

    :cond_15
    move-object v2, v3

    goto/16 :goto_4

    :cond_16
    move-object v4, v2

    goto/16 :goto_6
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 332
    const/4 v3, 0x0

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/mologiq/analytics/t;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/mologiq/analytics/t;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v3, v0

    .line 338
    :cond_0
    if-nez v3, :cond_2

    .line 419
    :cond_1
    :goto_0
    return-void

    .line 341
    :cond_2
    invoke-static {v3}, Lcom/mologiq/analytics/ac;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ac;

    move-result-object v7

    .line 343
    invoke-virtual {v7}, Lcom/mologiq/analytics/ac;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    invoke-static {}, Lcom/mologiq/analytics/ad;->c()Lcom/mologiq/analytics/ad;

    move-result-object v8

    .line 349
    invoke-virtual {v8, v3}, Lcom/mologiq/analytics/ad;->a(Landroid/content/Context;)V

    .line 351
    invoke-direct {p0, v8, v3}, Lcom/mologiq/analytics/t;->a(Lcom/mologiq/analytics/ad;Landroid/content/Context;)V

    .line 355
    invoke-virtual {v8, v3}, Lcom/mologiq/analytics/ad;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 357
    invoke-virtual {v7}, Lcom/mologiq/analytics/ac;->n()J

    move-result-wide v4

    .line 356
    sub-long/2addr v0, v4

    .line 358
    invoke-virtual {v7}, Lcom/mologiq/analytics/ac;->m()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 360
    :cond_3
    new-instance v0, Lcom/mologiq/analytics/ag;

    invoke-direct {v0, v3}, Lcom/mologiq/analytics/ag;-><init>(Landroid/content/Context;)V

    .line 364
    invoke-virtual {v7}, Lcom/mologiq/analytics/ac;->t()I

    move-result v1

    if-nez v1, :cond_4

    .line 367
    invoke-virtual {v7}, Lcom/mologiq/analytics/ac;->c()Ljava/lang/String;

    move-result-object v1

    .line 370
    const-string v2, ""

    const/16 v4, 0x1f4

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    .line 369
    invoke-virtual/range {v0 .. v6}, Lcom/mologiq/analytics/ag;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 375
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/mologiq/analytics/ac;->a(I)V

    .line 376
    invoke-virtual {v7, v3}, Lcom/mologiq/analytics/ac;->b(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 417
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mologiq/analytics/ag;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_4
    :try_start_1
    invoke-virtual {v7}, Lcom/mologiq/analytics/ac;->f()Ljava/lang/String;

    move-result-object v1

    .line 384
    new-instance v4, Lcom/mologiq/analytics/n;

    invoke-direct {v4}, Lcom/mologiq/analytics/n;-><init>()V

    .line 386
    const-string v2, "1.2.9"

    invoke-virtual {v4, v2}, Lcom/mologiq/analytics/n;->a(Ljava/lang/String;)V

    .line 387
    const-string v2, "2014-07-08"

    invoke-virtual {v4, v2}, Lcom/mologiq/analytics/n;->b(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, ""

    :goto_1
    invoke-virtual {v4, v2}, Lcom/mologiq/analytics/n;->c(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v4, v8}, Lcom/mologiq/analytics/n;->a(Lcom/mologiq/analytics/ad;)V

    .line 396
    invoke-virtual {v4, v3}, Lcom/mologiq/analytics/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 397
    const/16 v4, 0x1f4

    const/16 v5, 0x3e8

    const/4 v6, 0x1

    .line 395
    invoke-virtual/range {v0 .. v6}, Lcom/mologiq/analytics/ag;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 401
    invoke-virtual {v7, v0}, Lcom/mologiq/analytics/ac;->b(Ljava/lang/String;)V

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 402
    invoke-virtual {v7, v0, v1}, Lcom/mologiq/analytics/ac;->a(J)V

    .line 404
    invoke-virtual {v7, v3}, Lcom/mologiq/analytics/ac;->b(Landroid/content/Context;)Z

    .line 407
    :cond_5
    invoke-direct {p0, v8, v3}, Lcom/mologiq/analytics/t;->a(Lcom/mologiq/analytics/ad;Landroid/content/Context;)V

    .line 408
    invoke-virtual {v8, v3}, Lcom/mologiq/analytics/ad;->b(Landroid/content/Context;)Z

    goto/16 :goto_0

    .line 391
    :cond_6
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1
.end method
