.class Lcom/amazon/device/ads/MetricsCollector$MetricHitTotalTime;
.super Lcom/amazon/device/ads/MetricsCollector$MetricHit;
.source "SourceFile"


# instance fields
.field public final totalTime:J


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MetricsCollector$MetricHit;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 240
    iput-wide p2, p0, Lcom/amazon/device/ads/MetricsCollector$MetricHitTotalTime;->totalTime:J

    .line 241
    return-void
.end method
