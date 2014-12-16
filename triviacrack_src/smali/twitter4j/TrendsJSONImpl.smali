.class final Ltwitter4j/TrendsJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/Trends;


# static fields
.field private static final serialVersionUID:J = 0x1c84bb4ff87a8afbL


# instance fields
.field private asOf:Ljava/util/Date;

.field private location:Ltwitter4j/Location;

.field private trendAt:Ljava/util/Date;

.field private trends:[Ltwitter4j/Trend;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltwitter4j/TrendsJSONImpl;-><init>(Ljava/lang/String;Z)V

    .line 55
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 58
    invoke-virtual {p0, p1, p2}, Ltwitter4j/TrendsJSONImpl;->init(Ljava/lang/String;Z)V

    .line 59
    return-void
.end method

.method constructor <init>(Ljava/util/Date;Ltwitter4j/Location;Ljava/util/Date;[Ltwitter4j/Trend;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 86
    iput-object p1, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    .line 87
    iput-object p2, p0, Ltwitter4j/TrendsJSONImpl;->location:Ltwitter4j/Location;

    .line 88
    iput-object p3, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    .line 89
    iput-object p4, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    .line 90
    return-void
.end method

.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 46
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/TrendsJSONImpl;->init(Ljava/lang/String;Z)V

    .line 47
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 49
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    return-void
.end method

.method static createTrendsList(Ltwitter4j/HttpResponse;Z)Ltwitter4j/ResponseList;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            "Z)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Trends;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    .line 98
    :try_start_0
    const-string v1, "as_of"

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltwitter4j/ParseUtil;->parseTrendsDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 99
    const-string v2, "trends"

    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    .line 100
    invoke-static {v0, p1}, Ltwitter4j/TrendsJSONImpl;->extractLocation(Ltwitter4j/JSONObject;Z)Ltwitter4j/Location;

    move-result-object v3

    .line 101
    new-instance v4, Ltwitter4j/ResponseListImpl;

    invoke-virtual {v2}, Ltwitter4j/JSONObject;->length()I

    move-result v0

    invoke-direct {v4, v0, p0}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/HttpResponse;)V

    .line 102
    invoke-virtual {v2}, Ltwitter4j/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 103
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-virtual {v2, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v6

    .line 106
    invoke-static {v6, p1}, Ltwitter4j/TrendsJSONImpl;->jsonArrayToTrendArray(Ltwitter4j/JSONArray;Z)[Ltwitter4j/Trend;

    move-result-object v6

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x13

    if-ne v7, v8, :cond_1

    .line 109
    new-instance v7, Ltwitter4j/TrendsJSONImpl;

    const-string v8, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v8}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-direct {v7, v1, v3, v0, v6}, Ltwitter4j/TrendsJSONImpl;-><init>(Ljava/util/Date;Ltwitter4j/Location;Ljava/util/Date;[Ltwitter4j/Trend;)V

    invoke-interface {v4, v7}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Ltwitter4j/TwitterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 111
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_2

    .line 113
    new-instance v7, Ltwitter4j/TrendsJSONImpl;

    const-string v8, "yyyy-MM-dd HH:mm"

    invoke-static {v0, v8}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-direct {v7, v1, v3, v0, v6}, Ltwitter4j/TrendsJSONImpl;-><init>(Ljava/util/Date;Ltwitter4j/Location;Ljava/util/Date;[Ltwitter4j/Trend;)V

    invoke-interface {v4, v7}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    .line 117
    new-instance v7, Ltwitter4j/TrendsJSONImpl;

    const-string v8, "yyyy-MM-dd"

    invoke-static {v0, v8}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-direct {v7, v1, v3, v0, v6}, Ltwitter4j/TrendsJSONImpl;-><init>(Ljava/util/Date;Ltwitter4j/Location;Ljava/util/Date;[Ltwitter4j/Trend;)V

    invoke-interface {v4, v7}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_3
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1
    .catch Ltwitter4j/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    return-object v4
.end method

.method private static extractLocation(Ltwitter4j/JSONObject;Z)Ltwitter4j/Location;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 129
    const-string v1, "locations"

    invoke-virtual {p0, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-object v0

    .line 134
    :cond_1
    :try_start_0
    const-string v1, "locations"

    invoke-virtual {p0, v1}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v1

    invoke-static {v1, p1}, Ltwitter4j/LocationJSONImpl;->createLocationList(Ltwitter4j/JSONArray;Z)Ltwitter4j/ResponseList;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 139
    invoke-interface {v1}, Ltwitter4j/ResponseList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ltwitter4j/ResponseList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/Location;

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "locations can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static jsonArrayToTrendArray(Ltwitter4j/JSONArray;Z)[Ltwitter4j/Trend;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-virtual {p0}, Ltwitter4j/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ltwitter4j/Trend;

    .line 149
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ltwitter4j/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 150
    invoke-virtual {p0, v0}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v2

    .line 151
    new-instance v3, Ltwitter4j/TrendJSONImpl;

    invoke-direct {v3, v2, p1}, Ltwitter4j/TrendJSONImpl;-><init>(Ltwitter4j/JSONObject;Z)V

    aput-object v3, v1, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    return-object v1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    check-cast p1, Ltwitter4j/Trends;

    invoke-virtual {p0, p1}, Ltwitter4j/TrendsJSONImpl;->compareTo(Ltwitter4j/Trends;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Trends;)I
    .locals 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    invoke-interface {p1}, Ltwitter4j/Trends;->getTrendAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    if-ne p0, p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    instance-of v2, p1, Ltwitter4j/Trends;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 193
    :cond_2
    check-cast p1, Ltwitter4j/Trends;

    .line 195
    iget-object v2, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    invoke-interface {p1}, Ltwitter4j/Trends;->getAsOf()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    move v0, v1

    .line 196
    goto :goto_0

    .line 195
    :cond_4
    invoke-interface {p1}, Ltwitter4j/Trends;->getAsOf()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    .line 197
    :cond_5
    iget-object v2, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    invoke-interface {p1}, Ltwitter4j/Trends;->getTrendAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v0, v1

    .line 198
    goto :goto_0

    .line 197
    :cond_7
    invoke-interface {p1}, Ltwitter4j/Trends;->getTrendAt()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_6

    .line 199
    :cond_8
    iget-object v2, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    invoke-interface {p1}, Ltwitter4j/Trends;->getTrends()[Ltwitter4j/Trend;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAsOf()Ljava/util/Date;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    return-object v0
.end method

.method public getLocation()Ltwitter4j/Location;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->location:Ltwitter4j/Location;

    return-object v0
.end method

.method public getTrendAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    return-object v0
.end method

.method public getTrends()[Ltwitter4j/Trend;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    .line 207
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 208
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    if-eqz v2, :cond_0

    iget-object v1, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 209
    return v0

    :cond_1
    move v0, v1

    .line 206
    goto :goto_0

    :cond_2
    move v0, v1

    .line 207
    goto :goto_1
.end method

.method init(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 64
    :try_start_0
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Ltwitter4j/JSONArray;

    invoke-direct {v0, p1}, Ltwitter4j/JSONArray;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v0

    .line 74
    :goto_0
    const-string v1, "as_of"

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltwitter4j/ParseUtil;->parseTrendsDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    .line 75
    invoke-static {v0, p2}, Ltwitter4j/TrendsJSONImpl;->extractLocation(Ltwitter4j/JSONObject;Z)Ltwitter4j/Location;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/TrendsJSONImpl;->location:Ltwitter4j/Location;

    .line 76
    const-string v1, "trends"

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v0

    .line 77
    iget-object v1, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    iput-object v1, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    .line 78
    invoke-static {v0, p2}, Ltwitter4j/TrendsJSONImpl;->jsonArrayToTrendArray(Ltwitter4j/JSONArray;Z)[Ltwitter4j/Trend;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    .line 82
    return-void

    .line 69
    :cond_0
    new-instance v0, Ltwitter4j/TwitterException;

    const-string v1, "No trends found on the specified woeid"

    invoke-direct {v0, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-virtual {v0}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 72
    :cond_1
    :try_start_1
    new-instance v0, Ltwitter4j/JSONObject;

    invoke-direct {v0, p1}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ltwitter4j/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrendsJSONImpl{asOf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TrendsJSONImpl;->asOf:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trendAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TrendsJSONImpl;->trendAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trends="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/TrendsJSONImpl;->trends:[Ltwitter4j/Trend;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
