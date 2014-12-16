.class Lcom/amazon/device/ads/AdMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AdMetrics"


# instance fields
.field private final adController:Lcom/amazon/device/ads/AdController;

.field private globalMetrics:Lcom/amazon/device/ads/MetricsCollector;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AdController;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/device/ads/AdMetrics;->adController:Lcom/amazon/device/ads/AdController;

    .line 35
    return-void
.end method

.method protected static addMetricsToJSON(Lorg/json/JSONObject;Lcom/amazon/device/ads/MetricsCollector;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 121
    if-nez p1, :cond_1

    .line 204
    :cond_0
    return-void

    .line 137
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 138
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 141
    invoke-virtual {p1}, Lcom/amazon/device/ads/MetricsCollector;->getAdTypeMetricTag()Ljava/lang/String;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_b

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 150
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/device/ads/MetricsCollector;->getMetricHits()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/device/ads/MetricsCollector;->getMetricHits()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/amazon/device/ads/MetricsCollector$MetricHit;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/MetricsCollector$MetricHit;

    .line 153
    array-length v8, v0

    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v8, :cond_8

    aget-object v2, v0, v5

    .line 155
    iget-object v1, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHit;->metric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1}, Lcom/amazon/device/ads/Metrics$MetricType;->getAaxName()Ljava/lang/String;

    move-result-object v1

    .line 156
    if-eqz v4, :cond_a

    iget-object v3, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHit;->metric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v3}, Lcom/amazon/device/ads/Metrics$MetricType;->isAdTypeSpecific()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 160
    :goto_2
    instance-of v1, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHitStartTime;

    if-eqz v1, :cond_3

    move-object v1, v2

    .line 162
    check-cast v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitStartTime;

    .line 163
    iget-object v2, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHit;->metric:Lcom/amazon/device/ads/Metrics$MetricType;

    iget-wide v9, v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitStartTime;->startTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_2
    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 165
    :cond_3
    instance-of v1, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHitStopTime;

    if-eqz v1, :cond_4

    move-object v1, v2

    .line 167
    check-cast v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitStopTime;

    .line 168
    iget-object v2, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHit;->metric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 169
    if-eqz v2, :cond_2

    .line 171
    iget-wide v9, v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitStopTime;->stopTime:J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, v9, v1

    .line 172
    invoke-static {p0, v3, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;J)V

    goto :goto_3

    .line 175
    :cond_4
    instance-of v1, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHitTotalTime;

    if-eqz v1, :cond_5

    .line 177
    check-cast v2, Lcom/amazon/device/ads/MetricsCollector$MetricHitTotalTime;

    .line 178
    iget-wide v1, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHitTotalTime;->totalTime:J

    invoke-static {p0, v3, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;J)V

    goto :goto_3

    .line 180
    :cond_5
    instance-of v1, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHitIncrement;

    if-eqz v1, :cond_7

    move-object v1, v2

    .line 182
    check-cast v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitIncrement;

    .line 183
    iget-object v3, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHit;->metric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 184
    if-nez v3, :cond_6

    iget v1, v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitIncrement;->increment:I

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 185
    iget-object v2, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHit;->metric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 184
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v1, v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitIncrement;->increment:I

    add-int/2addr v1, v3

    goto :goto_4

    .line 187
    :cond_7
    instance-of v1, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHitString;

    if-eqz v1, :cond_2

    .line 189
    check-cast v2, Lcom/amazon/device/ads/MetricsCollector$MetricHitString;

    .line 190
    iget-object v1, v2, Lcom/amazon/device/ads/MetricsCollector$MetricHitString;->text:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 195
    :cond_8
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 197
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Metrics$MetricType;->getAaxName()Ljava/lang/String;

    move-result-object v2

    .line 198
    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Metrics$MetricType;->isAdTypeSpecific()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 202
    :cond_9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v2, v0}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    goto :goto_5

    :cond_a
    move-object v3, v1

    goto/16 :goto_2

    :cond_b
    move-object v4, v0

    goto/16 :goto_0
.end method

.method private getAaxUrlAndResetAdMetrics()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdMetrics;->getAaxJson()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/device/ads/AdMetrics;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdData;->getInstrumentationPixelUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/amazon/device/ads/AdMetrics;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->resetMetricsCollector()V

    .line 53
    return-object v0
.end method


# virtual methods
.method public addGlobalMetrics(Lcom/amazon/device/ads/MetricsCollector;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/amazon/device/ads/AdMetrics;->globalMetrics:Lcom/amazon/device/ads/MetricsCollector;

    .line 96
    return-void
.end method

.method public canSubmit()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/amazon/device/ads/AdMetrics;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v1

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/ads/AdMetrics;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdData;->getInstrumentationPixelUrl()Ljava/lang/String;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/device/ads/IInternalAdRegistration;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/RegistrationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_2

    const-string v2, "123"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    :cond_2
    const-string v1, "AdMetrics"

    const-string v2, "Not submitting metrics because the AppKey is either not set or set to a test key."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getAaxJson()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    const-string v1, "c"

    const-string v2, "msdk"

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "v"

    invoke-static {}, Lcom/amazon/device/ads/Version;->getRawSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/amazon/device/ads/AdMetrics;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AdMetrics;->addMetricsToJSON(Lorg/json/JSONObject;Lcom/amazon/device/ads/MetricsCollector;)V

    .line 112
    iget-object v1, p0, Lcom/amazon/device/ads/AdMetrics;->globalMetrics:Lcom/amazon/device/ads/MetricsCollector;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AdMetrics;->addMetricsToJSON(Lorg/json/JSONObject;Lcom/amazon/device/ads/MetricsCollector;)V

    .line 114
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 116
    return-object v0
.end method

.method public getAaxWebRequestAndResetAdMetrics()Lcom/amazon/device/ads/WebRequest;
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/amazon/device/ads/WebRequest;->createNewWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    .line 64
    invoke-direct {p0}, Lcom/amazon/device/ads/AdMetrics;->getAaxUrlAndResetAdMetrics()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setUrlString(Ljava/lang/String;)V

    .line 65
    return-object v0
.end method
