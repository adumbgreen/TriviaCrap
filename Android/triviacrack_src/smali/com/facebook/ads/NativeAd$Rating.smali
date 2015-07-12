.class public Lcom/facebook/ads/NativeAd$Rating;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final scale:D

.field private final value:D


# direct methods
.method private constructor <init>(DD)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-wide p1, p0, Lcom/facebook/ads/NativeAd$Rating;->value:D

    .line 129
    iput-wide p3, p0, Lcom/facebook/ads/NativeAd$Rating;->scale:D

    .line 130
    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/NativeAd$Rating;
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    .line 154
    if-nez p0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-object v0

    .line 158
    :cond_1
    const-string v1, "value"

    invoke-virtual {p0, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 159
    const-string v3, "scale"

    invoke-virtual {p0, v3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    .line 160
    cmpl-double v5, v1, v6

    if-eqz v5, :cond_0

    cmpl-double v5, v3, v6

    if-eqz v5, :cond_0

    .line 163
    new-instance v0, Lcom/facebook/ads/NativeAd$Rating;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/NativeAd$Rating;-><init>(DD)V

    goto :goto_0
.end method


# virtual methods
.method public getScale()D
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/facebook/ads/NativeAd$Rating;->scale:D

    return-wide v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/facebook/ads/NativeAd$Rating;->value:D

    return-wide v0
.end method
