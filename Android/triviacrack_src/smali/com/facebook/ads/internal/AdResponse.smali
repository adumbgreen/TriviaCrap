.class public Lcom/facebook/ads/internal/AdResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MIN_VIEWABILITY_PERCENTAGE:I = 0xa

.field private static final DEFAULT_REFRESH_INTERVAL_SECONDS:I = 0x0

.field private static final DEFAULT_REFRESH_THRESHOLD_SECONDS:I = 0x14


# instance fields
.field private final dataModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/AdDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private final error:Lcom/facebook/ads/AdError;

.field private final refreshIntervalMillis:I

.field private final refreshThresholdMillis:I

.field private final viewabilityThreshold:I


# direct methods
.method private constructor <init>(IIILjava/util/List;Lcom/facebook/ads/AdError;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/AdDataModel;",
            ">;",
            "Lcom/facebook/ads/AdError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/facebook/ads/internal/AdResponse;->refreshIntervalMillis:I

    .line 46
    iput p2, p0, Lcom/facebook/ads/internal/AdResponse;->refreshThresholdMillis:I

    .line 47
    iput p3, p0, Lcom/facebook/ads/internal/AdResponse;->viewabilityThreshold:I

    .line 48
    iput-object p4, p0, Lcom/facebook/ads/internal/AdResponse;->dataModels:Ljava/util/List;

    .line 49
    iput-object p5, p0, Lcom/facebook/ads/internal/AdResponse;->error:Lcom/facebook/ads/AdError;

    .line 50
    return-void
.end method

.method public static parseResponse(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/facebook/ads/internal/AdResponse;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 77
    const-string v0, "refresh"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v1, v0, 0x3e8

    .line 78
    const-string v0, "refresh_threshold"

    const/16 v2, 0x14

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v2, v0, 0x3e8

    .line 79
    const-string v0, "min_viewability_percentage"

    const/16 v3, 0xa

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 82
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 83
    if-eqz v4, :cond_6

    .line 84
    new-instance v0, Lcom/facebook/ads/AdError;

    const-string v7, "code"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "message"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v7, v4}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 87
    :goto_0
    const-string v4, "ad_type"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 88
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 89
    const-string v7, "ads"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 90
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 91
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 92
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 93
    if-nez v7, :cond_1

    .line 91
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 97
    :cond_1
    sget-object v10, Lcom/facebook/ads/internal/AdType;->HTML:Lcom/facebook/ads/internal/AdType;

    invoke-virtual {v10}, Lcom/facebook/ads/internal/AdType;->getValue()I

    move-result v10

    if-ne v8, v10, :cond_2

    .line 98
    const-string v10, "data"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 99
    invoke-static {v7}, Lcom/facebook/ads/internal/HtmlAdDataModel;->fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/HtmlAdDataModel;

    move-result-object v7

    .line 104
    :goto_3
    if-eqz v7, :cond_0

    invoke-static {p0, v7}, Lcom/facebook/ads/internal/AdInvalidationUtils;->shouldInvalidate(Landroid/content/Context;Lcom/facebook/ads/internal/AdDataModel;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 105
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 100
    :cond_2
    sget-object v10, Lcom/facebook/ads/internal/AdType;->NATIVE:Lcom/facebook/ads/internal/AdType;

    invoke-virtual {v10}, Lcom/facebook/ads/internal/AdType;->getValue()I

    move-result v10

    if-ne v8, v10, :cond_5

    .line 101
    const-string v10, "metadata"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 102
    invoke-static {v7}, Lcom/facebook/ads/internal/NativeAdDataModel;->fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/NativeAdDataModel;

    move-result-object v7

    goto :goto_3

    .line 108
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 110
    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    move-object v5, v0

    .line 114
    :goto_4
    new-instance v0, Lcom/facebook/ads/internal/AdResponse;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/AdResponse;-><init>(IIILjava/util/List;Lcom/facebook/ads/AdError;)V

    return-object v0

    :cond_4
    move-object v5, v0

    goto :goto_4

    :cond_5
    move-object v7, v5

    goto :goto_3

    :cond_6
    move-object v0, v5

    goto :goto_0
.end method


# virtual methods
.method public getDataModel()Lcom/facebook/ads/internal/AdDataModel;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/ads/internal/AdResponse;->dataModels:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/AdResponse;->dataModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/AdResponse;->dataModels:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/AdDataModel;

    goto :goto_0
.end method

.method public getError()Lcom/facebook/ads/AdError;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/ads/internal/AdResponse;->error:Lcom/facebook/ads/AdError;

    return-object v0
.end method

.method public getRefreshIntervalMillis()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/facebook/ads/internal/AdResponse;->refreshIntervalMillis:I

    return v0
.end method

.method public getRefreshThresholdMillis()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/facebook/ads/internal/AdResponse;->refreshThresholdMillis:I

    return v0
.end method

.method public getViewabilityThreshold()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/facebook/ads/internal/AdResponse;->viewabilityThreshold:I

    return v0
.end method
