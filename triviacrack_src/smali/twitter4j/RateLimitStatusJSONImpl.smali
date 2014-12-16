.class final Ltwitter4j/RateLimitStatusJSONImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/RateLimitStatus;


# static fields
.field private static final serialVersionUID:J = 0x6c1cd6cd5a4eb3adL


# instance fields
.field private limit:I

.field private remaining:I

.field private resetTimeInSeconds:I

.field private secondsUntilReset:I


# direct methods
.method private constructor <init>(III)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x3e8

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    .line 73
    iput p2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    .line 74
    iput p3, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    .line 75
    int-to-long v0, p3

    mul-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    .line 76
    return-void
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0, p1}, Ltwitter4j/RateLimitStatusJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 80
    return-void
.end method

.method static createFromResponseHeader(Ltwitter4j/HttpResponse;)Ltwitter4j/RateLimitStatus;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 90
    if-nez p0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 97
    :cond_1
    const-string v1, "X-Rate-Limit-Limit"

    invoke-virtual {p0, v1}, Ltwitter4j/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_0

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 103
    const-string v2, "X-Rate-Limit-Remaining"

    invoke-virtual {p0, v2}, Ltwitter4j/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_0

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 109
    const-string v3, "X-Rate-Limit-Reset"

    invoke-virtual {p0, v3}, Ltwitter4j/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    if-eqz v3, :cond_0

    .line 111
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 112
    long-to-int v3, v3

    .line 116
    new-instance v0, Ltwitter4j/RateLimitStatusJSONImpl;

    invoke-direct {v0, v1, v2, v3}, Ltwitter4j/RateLimitStatusJSONImpl;-><init>(III)V

    goto :goto_0
.end method

.method static createRateLimitStatuses(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltwitter4j/RateLimitStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    .line 42
    invoke-static {v0}, Ltwitter4j/RateLimitStatusJSONImpl;->createRateLimitStatuses(Ltwitter4j/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 43
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 45
    invoke-static {v1, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    return-object v1
.end method

.method static createRateLimitStatuses(Ltwitter4j/JSONObject;)Ljava/util/Map;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltwitter4j/RateLimitStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 53
    :try_start_0
    const-string v0, "resources"

    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ltwitter4j/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 55
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ltwitter4j/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 58
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    invoke-virtual {v4, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v6

    .line 61
    new-instance v7, Ltwitter4j/RateLimitStatusJSONImpl;

    invoke-direct {v7, v6}, Ltwitter4j/RateLimitStatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    .line 62
    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 65
    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_1
    .catch Ltwitter4j/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 153
    if-ne p0, p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 156
    :cond_3
    check-cast p1, Ltwitter4j/RateLimitStatusJSONImpl;

    .line 158
    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    iget v3, p1, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 159
    :cond_4
    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    iget v3, p1, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 160
    :cond_5
    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    iget v3, p1, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 161
    :cond_6
    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    iget v3, p1, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    return v0
.end method

.method public getRemaining()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    return v0
.end method

.method public getResetTimeInSeconds()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    return v0
.end method

.method public getSecondsUntilReset()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    .line 169
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    add-int/2addr v0, v1

    .line 170
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    add-int/2addr v0, v1

    .line 171
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    add-int/2addr v0, v1

    .line 172
    return v0
.end method

.method init(Ltwitter4j/JSONObject;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x3e8

    .line 83
    const-string v0, "limit"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    .line 84
    const-string v0, "remaining"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    .line 85
    const-string v0, "reset"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    .line 86
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    int-to-long v0, v0

    mul-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RateLimitStatusJSONImpl{remaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resetTimeInSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondsUntilReset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
