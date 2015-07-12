.class public Ltwitter4j/OEmbedJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/OEmbed;


# static fields
.field private static final serialVersionUID:J = -0x1ea3afbfb4fc197bL


# instance fields
.field private authorName:Ljava/lang/String;

.field private authorURL:Ljava/lang/String;

.field private cacheAge:J

.field private html:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private width:I


# direct methods
.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 36
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Ltwitter4j/OEmbedJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 38
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 40
    invoke-static {p0, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    return-void
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 46
    invoke-direct {p0, p1}, Ltwitter4j/OEmbedJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 47
    return-void
.end method

.method private init(Ltwitter4j/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    :try_start_0
    const-string v0, "html"

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    .line 52
    const-string v0, "author_name"

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    .line 53
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    .line 54
    const-string v0, "version"

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    .line 55
    const-string v0, "cache_age"

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    .line 56
    const-string v0, "author_url"

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    .line 57
    const-string v0, "width"

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltwitter4j/OEmbedJSONImpl;->width:I
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    if-ne p0, p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 106
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

    .line 108
    :cond_3
    check-cast p1, Ltwitter4j/OEmbedJSONImpl;

    .line 110
    iget-wide v2, p0, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    iget-wide v4, p1, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 111
    :cond_4
    iget v2, p0, Ltwitter4j/OEmbedJSONImpl;->width:I

    iget v3, p1, Ltwitter4j/OEmbedJSONImpl;->width:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 112
    :cond_5
    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 113
    :cond_8
    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p1, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 114
    :cond_b
    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v2, p1, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 115
    :cond_e
    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_f
    move v0, v1

    goto :goto_0

    :cond_10
    iget-object v2, p1, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 116
    :cond_11
    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_12
    iget-object v2, p1, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public bridge synthetic getAccessLevel()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Ltwitter4j/TwitterResponseImpl;->getAccessLevel()I

    move-result v0

    return v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheAge()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    return-wide v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Ltwitter4j/TwitterResponseImpl;->getRateLimitStatus()Ltwitter4j/RateLimitStatus;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Ltwitter4j/OEmbedJSONImpl;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 124
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 125
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 126
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 127
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    iget-wide v4, p0, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 128
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltwitter4j/OEmbedJSONImpl;->width:I

    add-int/2addr v0, v1

    .line 130
    return v0

    :cond_1
    move v0, v1

    .line 123
    goto :goto_0

    :cond_2
    move v0, v1

    .line 124
    goto :goto_1

    :cond_3
    move v0, v1

    .line 125
    goto :goto_2

    :cond_4
    move v0, v1

    .line 126
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OEmbedJSONImpl{html=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authorName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cacheAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authorURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/OEmbedJSONImpl;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
