.class Lcom/amazon/device/ads/MetricsCollector$MetricHitStartTime;
.super Lcom/amazon/device/ads/MetricsCollector$MetricHit;
.source "SourceFile"


# instance fields
.field public final startTime:J


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MetricsCollector$MetricHit;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 222
    iput-wide p2, p0, Lcom/amazon/device/ads/MetricsCollector$MetricHitStartTime;->startTime:J

    .line 223
    return-void
.end method
