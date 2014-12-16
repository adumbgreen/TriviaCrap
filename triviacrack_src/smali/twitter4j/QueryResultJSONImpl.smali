.class final Ltwitter4j/QueryResultJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/QueryResult;


# static fields
.field private static final serialVersionUID:J = -0x4a6101184cfac714L


# instance fields
.field private completedIn:D

.field private count:I

.field private maxId:J

.field private nextResults:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private refreshUrl:Ljava/lang/String;

.field private sinceId:J

.field private tweets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 43
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v1

    .line 45
    :try_start_0
    const-string v0, "search_metadata"

    invoke-virtual {v1, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    .line 46
    const-string v0, "completed_in"

    invoke-static {v0, v2}, Ltwitter4j/ParseUtil;->getDouble(Ljava/lang/String;Ltwitter4j/JSONObject;)D

    move-result-wide v3

    iput-wide v3, p0, Ltwitter4j/QueryResultJSONImpl;->completedIn:D

    .line 47
    const-string v0, "count"

    invoke-static {v0, v2}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/QueryResultJSONImpl;->count:I

    .line 48
    const-string v0, "max_id"

    invoke-static {v0, v2}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v3

    iput-wide v3, p0, Ltwitter4j/QueryResultJSONImpl;->maxId:J

    .line 49
    const-string v0, "next_results"

    invoke-virtual {v2, v0}, Ltwitter4j/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "next_results"

    invoke-virtual {v2, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->nextResults:Ljava/lang/String;

    .line 50
    const-string v0, "query"

    invoke-static {v0, v2}, Ltwitter4j/ParseUtil;->getURLDecodedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->query:Ljava/lang/String;

    .line 51
    const-string v0, "refresh_url"

    invoke-static {v0, v2}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    .line 52
    const-string v0, "since_id"

    invoke-static {v0, v2}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    .line 54
    const-string v0, "statuses"

    invoke-virtual {v1, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v2

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ltwitter4j/JSONArray;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    .line 56
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 59
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ltwitter4j/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 60
    invoke-virtual {v2, v0}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v3

    .line 61
    iget-object v4, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    new-instance v5, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v5, v3, p2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;Ltwitter4j/conf/Configuration;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 49
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ltwitter4j/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 66
    :cond_2
    return-void
.end method

.method constructor <init>(Ltwitter4j/Query;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 70
    invoke-virtual {p1}, Ltwitter4j/Query;->getSinceId()J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    .line 71
    invoke-virtual {p1}, Ltwitter4j/Query;->getCount()I

    move-result v0

    iput v0, p0, Ltwitter4j/QueryResultJSONImpl;->count:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    .line 73
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 149
    if-ne p0, p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 150
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

    .line 152
    :cond_3
    check-cast p1, Ltwitter4j/QueryResult;

    .line 154
    invoke-interface {p1}, Ltwitter4j/QueryResult;->getCompletedIn()D

    move-result-wide v2

    iget-wide v4, p0, Ltwitter4j/QueryResultJSONImpl;->completedIn:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 155
    goto :goto_0

    .line 156
    :cond_4
    iget-wide v2, p0, Ltwitter4j/QueryResultJSONImpl;->maxId:J

    invoke-interface {p1}, Ltwitter4j/QueryResult;->getMaxId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 157
    :cond_5
    iget v2, p0, Ltwitter4j/QueryResultJSONImpl;->count:I

    invoke-interface {p1}, Ltwitter4j/QueryResult;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 158
    :cond_6
    iget-wide v2, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    invoke-interface {p1}, Ltwitter4j/QueryResult;->getSinceId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 159
    :cond_7
    iget-object v2, p0, Ltwitter4j/QueryResultJSONImpl;->query:Ljava/lang/String;

    invoke-interface {p1}, Ltwitter4j/QueryResult;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 160
    :cond_8
    iget-object v2, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    invoke-interface {p1}, Ltwitter4j/QueryResult;->getRefreshURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move v0, v1

    .line 161
    goto :goto_0

    .line 160
    :cond_a
    invoke-interface {p1}, Ltwitter4j/QueryResult;->getRefreshURL()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    .line 162
    :cond_b
    iget-object v2, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    if-eqz v2, :cond_c

    iget-object v2, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    invoke-interface {p1}, Ltwitter4j/QueryResult;->getTweets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 163
    goto :goto_0

    .line 162
    :cond_c
    invoke-interface {p1}, Ltwitter4j/QueryResult;->getTweets()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getCompletedIn()D
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Ltwitter4j/QueryResultJSONImpl;->completedIn:D

    return-wide v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Ltwitter4j/QueryResultJSONImpl;->count:I

    return v0
.end method

.method public getMaxId()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Ltwitter4j/QueryResultJSONImpl;->maxId:J

    return-wide v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSinceId()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    return-wide v0
.end method

.method public getTweets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->nextResults:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x20

    .line 172
    iget-wide v2, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    iget-wide v4, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 173
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/QueryResultJSONImpl;->maxId:J

    iget-wide v4, p0, Ltwitter4j/QueryResultJSONImpl;->maxId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 174
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 175
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Ltwitter4j/QueryResultJSONImpl;->count:I

    add-int/2addr v0, v2

    .line 176
    iget-wide v2, p0, Ltwitter4j/QueryResultJSONImpl;->completedIn:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Ltwitter4j/QueryResultJSONImpl;->completedIn:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 177
    :goto_1
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 178
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/QueryResultJSONImpl;->query:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 179
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 180
    return v0

    :cond_1
    move v0, v1

    .line 174
    goto :goto_0

    .line 176
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public nextQuery()Ltwitter4j/Query;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->nextResults:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/QueryResultJSONImpl;->nextResults:Ljava/lang/String;

    invoke-static {v0}, Ltwitter4j/Query;->createWithNextPageQuery(Ljava/lang/String;)Ltwitter4j/Query;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryResultJSONImpl{sinceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/QueryResultJSONImpl;->sinceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/QueryResultJSONImpl;->maxId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refreshUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/QueryResultJSONImpl;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", completedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/QueryResultJSONImpl;->completedIn:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/QueryResultJSONImpl;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tweets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/QueryResultJSONImpl;->tweets:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
