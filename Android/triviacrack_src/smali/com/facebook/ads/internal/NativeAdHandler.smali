.class public Lcom/facebook/ads/internal/NativeAdHandler;
.super Lcom/facebook/ads/internal/AdHandler;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;JLcom/facebook/ads/internal/NativeAdDataModel;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/facebook/ads/internal/AdHandler;-><init>(Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;JLandroid/content/Context;)V

    .line 14
    invoke-virtual {p0, p4}, Lcom/facebook/ads/internal/NativeAdHandler;->setAdDataModel(Lcom/facebook/ads/internal/AdDataModel;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected declared-synchronized sendImpression()V
    .locals 1

    .prologue
    .line 18
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdHandler;->adDataModel:Lcom/facebook/ads/internal/AdDataModel;

    check-cast v0, Lcom/facebook/ads/internal/NativeAdDataModel;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdDataModel;->logImpression()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
