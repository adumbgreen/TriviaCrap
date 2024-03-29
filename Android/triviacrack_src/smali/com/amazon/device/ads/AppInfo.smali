.class Lcom/amazon/device/ads/AppInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private applicationLabel:Ljava/lang/String;

.field private packageInfoUrlJSON:Lorg/json/JSONObject;

.field private packageName:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->applicationLabel:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/amazon/device/ads/AppInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 42
    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->versionName:Ljava/lang/String;

    .line 43
    if-eqz v1, :cond_1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->versionCode:Ljava/lang/String;

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    .line 47
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    const-string v1, "lbl"

    iget-object v2, p0, Lcom/amazon/device/ads/AppInfo;->applicationLabel:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    const-string v1, "pn"

    iget-object v2, p0, Lcom/amazon/device/ads/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    const-string v1, "v"

    iget-object v2, p0, Lcom/amazon/device/ads/AppInfo;->versionCode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    const-string v1, "vn"

    iget-object v2, p0, Lcom/amazon/device/ads/AppInfo;->versionName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void

    .line 39
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 42
    :cond_0
    const-string v0, ""

    goto :goto_1

    .line 43
    :cond_1
    const-string v0, ""

    goto :goto_2
.end method


# virtual methods
.method public getPackageInfoJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPackageInfoJSONString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
