.class Lcom/amazon/device/ads/MetricsCollector$MetricHitIncrement;
.super Lcom/amazon/device/ads/MetricsCollector$MetricHit;
.source "SourceFile"


# instance fields
.field public final increment:I


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/Metrics$MetricType;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MetricsCollector$MetricHit;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 249
    iput p2, p0, Lcom/amazon/device/ads/MetricsCollector$MetricHitIncrement;->increment:I

    .line 250
    return-void
.end method
