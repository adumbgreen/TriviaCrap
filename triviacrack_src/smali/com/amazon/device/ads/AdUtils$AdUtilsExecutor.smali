.class Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hasRequiredActivities:Z

.field private final requiredActivities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->requiredActivities:Ljava/util/HashSet;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z

    .line 116
    iget-object v0, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->requiredActivities:Ljava/util/HashSet;

    const-string v1, "com.amazon.device.ads.AdActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method


# virtual methods
.method calculateScalingMultiplier(IIII)D
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 206
    int-to-double v0, p3

    int-to-double v2, p1

    div-double/2addr v0, v2

    .line 207
    int-to-double v2, p4

    int-to-double v4, p2

    div-double/2addr v2, v4

    .line 214
    cmpg-double v4, v2, v0

    if-ltz v4, :cond_0

    cmpl-double v4, v0, v6

    if-nez v4, :cond_1

    :cond_0
    cmpl-double v4, v2, v6

    if-eqz v4, :cond_1

    move-wide v0, v2

    .line 219
    :cond_1
    cmpl-double v2, v0, v6

    if-nez v2, :cond_2

    const-wide/high16 v0, 0x3ff0

    :cond_2
    return-wide v0
.end method

.method checkDefinedActivities(Landroid/content/Context;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 127
    iget-boolean v1, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z

    if-eqz v1, :cond_0

    .line 157
    :goto_0
    return v0

    .line 131
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 138
    const/16 v1, 0x8

    :try_start_0
    invoke-static {v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    invoke-static {p1}, Lcom/amazon/device/ads/AndroidTargetUtils;->getPackageCodePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 143
    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 144
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 146
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->requiredActivities:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z

    .line 149
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 156
    :cond_2
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z

    goto :goto_0
.end method

.method deviceIndependentPixelToPixel(I)I
    .locals 2
    .parameter

    .prologue
    .line 239
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->getScalingFactorAsFloat()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method getScalingFactorAsFloat()F
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/device/ads/IInternalAdRegistration;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getScalingFactorAsFloat()F

    move-result v0

    return v0
.end method

.method getViewportInitialScale(D)D
    .locals 1
    .parameter

    .prologue
    .line 191
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 p1, 0x3ff0

    :cond_0
    return-wide p1
.end method

.method pixelToDeviceIndependentPixel(I)I
    .locals 2
    .parameter

    .prologue
    .line 229
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->getScalingFactorAsFloat()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method setConnectionMetrics(Ljava/lang/String;Lcom/amazon/device/ads/MetricsCollector;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 165
    const-string v0, "Wifi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    sget-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->WIFI_PRESENT:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 174
    :goto_0
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/device/ads/IInternalAdRegistration;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getCarrier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->CARRIER_NAME:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/amazon/device/ads/MetricsCollector;->setMetricString(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void

    .line 171
    :cond_1
    sget-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->CONNECTION_TYPE:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p2, v0, p1}, Lcom/amazon/device/ads/MetricsCollector;->setMetricString(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V

    goto :goto_0
.end method
