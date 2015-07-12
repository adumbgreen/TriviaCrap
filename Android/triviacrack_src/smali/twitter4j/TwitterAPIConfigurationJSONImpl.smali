.class Ltwitter4j/TwitterAPIConfigurationJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "SourceFile"

# interfaces
.implements Ltwitter4j/TwitterAPIConfiguration;


# static fields
.field private static final serialVersionUID:J = -0x31ce59ac93ba9d46L


# instance fields
.field private charactersReservedPerMedia:I

.field private maxMediaPerUpload:I

.field private nonUsernamePaths:[Ljava/lang/String;

.field private photoSizeLimit:I

.field private photoSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ltwitter4j/MediaEntity$Size;",
            ">;"
        }
    .end annotation
.end field

.field private shortURLLength:I

.field private shortURLLengthHttps:I


# direct methods
.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 43
    :try_start_0
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v1

    .line 44
    const-string v0, "photo_size_limit"

    invoke-static {v0, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    .line 45
    const-string v0, "short_url_length"

    invoke-static {v0, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    .line 46
    const-string v0, "short_url_length_https"

    invoke-static {v0, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    .line 47
    const-string v0, "characters_reserved_per_media"

    invoke-static {v0, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    .line 49
    const-string v0, "photo_sizes"

    invoke-virtual {v1, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    .line 50
    new-instance v0, Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    .line 51
    iget-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    sget-object v3, Ltwitter4j/MediaEntity$Size;->LARGE:Ljava/lang/Integer;

    new-instance v4, Ltwitter4j/MediaEntityJSONImpl$Size;

    const-string v5, "large"

    invoke-virtual {v2, v5}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Ltwitter4j/MediaEntityJSONImpl$Size;-><init>(Ltwitter4j/JSONObject;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "med"

    invoke-virtual {v2, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const-string v0, "medium"

    invoke-virtual {v2, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v0

    .line 59
    :goto_0
    iget-object v3, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    sget-object v4, Ltwitter4j/MediaEntity$Size;->MEDIUM:Ljava/lang/Integer;

    new-instance v5, Ltwitter4j/MediaEntityJSONImpl$Size;

    invoke-direct {v5, v0}, Ltwitter4j/MediaEntityJSONImpl$Size;-><init>(Ltwitter4j/JSONObject;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    sget-object v3, Ltwitter4j/MediaEntity$Size;->SMALL:Ljava/lang/Integer;

    new-instance v4, Ltwitter4j/MediaEntityJSONImpl$Size;

    const-string v5, "small"

    invoke-virtual {v2, v5}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Ltwitter4j/MediaEntityJSONImpl$Size;-><init>(Ltwitter4j/JSONObject;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    sget-object v3, Ltwitter4j/MediaEntity$Size;->THUMB:Ljava/lang/Integer;

    new-instance v4, Ltwitter4j/MediaEntityJSONImpl$Size;

    const-string v5, "thumb"

    invoke-virtual {v2, v5}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    invoke-direct {v4, v2}, Ltwitter4j/MediaEntityJSONImpl$Size;-><init>(Ltwitter4j/JSONObject;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 64
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    const-string v0, "non_username_paths"

    invoke-virtual {v1, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ltwitter4j/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ltwitter4j/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 69
    iget-object v3, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Ltwitter4j/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_1
    const-string v0, "med"

    invoke-virtual {v2, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_2
    const-string v0, "max_media_per_upload"

    invoke-static {v0, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    if-ne p0, p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    instance-of v2, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 138
    :cond_2
    check-cast p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;

    .line 140
    iget v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    iget v3, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 141
    goto :goto_0

    .line 142
    :cond_3
    iget v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    iget v3, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 143
    :cond_4
    iget v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    iget v3, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 144
    :cond_5
    iget v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    iget v3, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 145
    :cond_6
    iget v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    iget v3, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    .line 146
    :cond_7
    iget-object v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 147
    goto :goto_0

    .line 148
    :cond_8
    iget-object v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    if-eqz v2, :cond_9

    iget-object v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    iget-object v3, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 149
    goto :goto_0

    .line 148
    :cond_9
    iget-object v2, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getCharactersReservedPerMedia()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    return v0
.end method

.method public getMaxMediaPerUpload()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    return v0
.end method

.method public getNonUsernamePaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoSizeLimit()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    return v0
.end method

.method public getPhotoSizes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ltwitter4j/MediaEntity$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    return-object v0
.end method

.method public getShortURLLength()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    return v0
.end method

.method public getShortURLLengthHttps()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 156
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    .line 157
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    add-int/2addr v0, v2

    .line 158
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    add-int/2addr v0, v2

    .line 159
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    add-int/2addr v0, v2

    .line 160
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 161
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 162
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    add-int/2addr v0, v1

    .line 163
    return v0

    :cond_1
    move v0, v1

    .line 160
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwitterAPIConfigurationJSONImpl{photoSizeLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shortURLLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shortURLLengthHttps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", charactersReservedPerMedia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", photoSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonUsernamePaths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxMediaPerUpload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
