.class Lcom/amazon/device/ads/MetricsCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adTypeMetricTag:Ljava/lang/String;

.field protected metricHits:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/amazon/device/ads/MetricsCollector$MetricHit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    .line 28
    return-void
.end method


# virtual methods
.method public getAdTypeMetricTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->adTypeMetricTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricHits()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/amazon/device/ads/MetricsCollector$MetricHit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    return-object v0
.end method

.method public incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    const-string v0, "MetricsCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "METRIC Increment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Metrics$MetricType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    new-instance v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitIncrement;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/amazon/device/ads/MetricsCollector$MetricHitIncrement;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public isMetricsCollectorEmpty()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public publishMetricInMilliseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 62
    const-string v0, "MetricsCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "METRIC Publish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Metrics$MetricType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    new-instance v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitTotalTime;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/device/ads/MetricsCollector$MetricHitTotalTime;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public publishMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-static {p2, p3}, Lcom/amazon/device/ads/NumberUtils;->convertToMillisecondsFromNanoseconds(J)J

    move-result-wide v0

    .line 68
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->publishMetricInMilliseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 69
    return-void
.end method

.method public setAdType(Lcom/amazon/device/ads/AdProperties$AdType;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdProperties$AdType;->getAdTypeMetricTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->adTypeMetricTag:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setMetricString(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 51
    const-string v0, "MetricsCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "METRIC Set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Metrics$MetricType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    new-instance v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitString;

    invoke-direct {v1, p1, p2}, Lcom/amazon/device/ads/MetricsCollector$MetricHitString;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 80
    return-void
.end method

.method public startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 73
    const-string v0, "MetricsCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "METRIC Start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Metrics$MetricType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {p2, p3}, Lcom/amazon/device/ads/NumberUtils;->convertToMillisecondsFromNanoseconds(J)J

    move-result-wide v0

    .line 75
    iget-object v2, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    new-instance v3, Lcom/amazon/device/ads/MetricsCollector$MetricHitStartTime;

    invoke-direct {v3, p1, v0, v1}, Lcom/amazon/device/ads/MetricsCollector$MetricHitStartTime;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 90
    return-void
.end method

.method public stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 83
    const-string v0, "MetricsCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "METRIC Stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Metrics$MetricType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {p2, p3}, Lcom/amazon/device/ads/NumberUtils;->convertToMillisecondsFromNanoseconds(J)J

    move-result-wide v0

    .line 85
    iget-object v2, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    new-instance v3, Lcom/amazon/device/ads/MetricsCollector$MetricHitStopTime;

    invoke-direct {v3, p1, v0, v1}, Lcom/amazon/device/ads/MetricsCollector$MetricHitStopTime;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method
