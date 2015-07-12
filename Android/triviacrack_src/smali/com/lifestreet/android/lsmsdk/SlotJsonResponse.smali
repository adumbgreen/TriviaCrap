.class public final Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;
.super Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;
.source "SourceFile"


# instance fields
.field private final mResponseBody:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;-><init>(Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    .line 30
    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->mResponseBody:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private JSONObjectToMap(Lorg/json/JSONObject;Z)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 154
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 155
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    if-eqz p2, :cond_0

    .line 158
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 164
    :cond_1
    return-object v1
.end method

.method private advertisementIsNotAvailable(Lorg/json/JSONObject;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 68
    const-string v1, "advertisementAvailable"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createNetworkInstance(Lorg/json/JSONObject;)Lcom/lifestreet/android/lsmsdk/AdNetwork;
    .locals 4
    .parameter

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/InvalidNetworkParameterException;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ErrorCode;->EMPTY_NETWORKS_ARRAY:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v2, "Empty network array"

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->getSlotContext()Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/exceptions/InvalidNetworkParameterException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v0

    .line 143
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->JSONObjectToMap(Lorg/json/JSONObject;Z)Ljava/util/Map;

    move-result-object v0

    .line 145
    invoke-direct {p0, p1}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->getNetworkType(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-direct {p0, p1}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->getNetworkParameters(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 148
    invoke-virtual {p0, v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->createNetworkInstanceFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Lcom/lifestreet/android/lsmsdk/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkParameters(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    .line 180
    const-string v0, "Parameters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 181
    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 187
    :goto_0
    return-object v0

    .line 184
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->JSONObjectToMap(Lorg/json/JSONObject;Z)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private getNetworkType(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 168
    const-string v0, "NetworkType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 170
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/InvalidNetworkParameterException;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ErrorCode;->MISSING_NETWORK_TYPE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v2, "NetworkType is missing"

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->getSlotContext()Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/exceptions/InvalidNetworkParameterException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v0

    .line 174
    :cond_0
    return-object v0
.end method

.method private makeNobidObject(Lorg/json/JSONObject;)V
    .locals 4
    .parameter

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string v0, "advertisementAvailable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "HTML"

    const-string v2, "nobid"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 77
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "NetworkType"

    const-string v3, "LSM"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Parameters"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 79
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    .line 80
    const-string v1, "networks"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->getSlotContext()Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;-><init>(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v1
.end method

.method private parseAdsParams(Lorg/json/JSONObject;)Lcom/lifestreet/android/lsmsdk/AdsParams;
    .locals 3
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 126
    if-eqz p1, :cond_0

    .line 127
    const-string v1, "requestId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 129
    new-instance v0, Lcom/lifestreet/android/lsmsdk/AdsParams;

    invoke-direct {v0, v1}, Lcom/lifestreet/android/lsmsdk/AdsParams;-><init>(Ljava/lang/String;)V

    .line 133
    :cond_0
    return-object v0
.end method

.method private parseNetworks(Lorg/json/JSONObject;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lifestreet/android/lsmsdk/AdNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    if-nez p2, :cond_0

    .line 95
    invoke-direct {p0, p1}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->createNetworkInstance(Lorg/json/JSONObject;)Lcom/lifestreet/android/lsmsdk/AdNetwork;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 120
    :goto_0
    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ErrorCode;->EMPTY_NETWORKS_ARRAY:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v2, "Empty networks array"

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->getSlotContext()Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v0

    .line 104
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 107
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->createNetworkInstance(Lorg/json/JSONObject;)Lcom/lifestreet/android/lsmsdk/AdNetwork;
    :try_end_0
    .catch Lcom/lifestreet/android/lsmsdk/exceptions/InvalidNetworkParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 117
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :catch_0
    move-exception v2

    .line 111
    sget-object v3, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid network parameter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/lifestreet/android/lsmsdk/exceptions/InvalidNetworkParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    .line 113
    :catch_1
    move-exception v0

    .line 114
    new-instance v1, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->getSlotContext()Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;-><init>(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v1

    :cond_2
    move-object v0, v1

    .line 120
    goto :goto_0
.end method


# virtual methods
.method public parse()V
    .locals 4

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->mResponseBody:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 38
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_3

    .line 39
    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;

    const-string v1, "Invalid JSON response"

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->getSlotContext()Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;-><init>(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->getSlotContext()Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;-><init>(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v1

    .line 50
    :cond_0
    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->advertisementIsNotAvailable(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->makeNobidObject(Lorg/json/JSONObject;)V

    .line 54
    :cond_1
    const-string v1, "networks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 55
    const-string v2, "adsParams"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 57
    invoke-direct {p0, v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->parseNetworks(Lorg/json/JSONObject;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 59
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ErrorCode;->EMPTY_NETWORKS_ARRAY:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v2, "Empty/Invalid networks array"

    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->getSlotContext()Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v0

    .line 63
    :cond_2
    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->setNetworks(Ljava/util/List;)V

    .line 64
    invoke-direct {p0, v2}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->parseAdsParams(Lorg/json/JSONObject;)Lcom/lifestreet/android/lsmsdk/AdsParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;->setAdsParams(Lcom/lifestreet/android/lsmsdk/AdsParams;)V

    .line 65
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
