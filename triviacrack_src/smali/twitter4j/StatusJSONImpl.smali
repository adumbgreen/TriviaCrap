.class final Ltwitter4j/StatusJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/Status;


# static fields
.field private static final logger:Ltwitter4j/Logger; = null

.field private static final serialVersionUID:J = -0x59aac71ba3de09f1L


# instance fields
.field private contributorsIDs:[J

.field private createdAt:Ljava/util/Date;

.field private currentUserRetweetId:J

.field private favoriteCount:I

.field private geoLocation:Ltwitter4j/GeoLocation;

.field private hashtagEntities:[Ltwitter4j/HashtagEntity;

.field private id:J

.field private inReplyToScreenName:Ljava/lang/String;

.field private inReplyToStatusId:J

.field private inReplyToUserId:J

.field private isFavorited:Z

.field private isPossiblySensitive:Z

.field private isRetweeted:Z

.field private isTruncated:Z

.field private isoLanguageCode:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private mediaEntities:[Ltwitter4j/MediaEntity;

.field private place:Ltwitter4j/Place;

.field private retweetCount:J

.field private retweetedStatus:Ltwitter4j/Status;

.field private scopes:Ltwitter4j/Scopes;

.field private source:Ljava/lang/String;

.field private symbolEntities:[Ltwitter4j/SymbolEntity;

.field private text:Ljava/lang/String;

.field private urlEntities:[Ltwitter4j/URLEntity;

.field private user:Ltwitter4j/User;

.field private userMentionEntities:[Ltwitter4j/UserMentionEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Ltwitter4j/StatusJSONImpl;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/StatusJSONImpl;->logger:Ltwitter4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 46
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 47
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    .line 64
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 92
    return-void
.end method

.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 46
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 47
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    .line 64
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 68
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    .line 69
    invoke-direct {p0, v0}, Ltwitter4j/StatusJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 70
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 72
    invoke-static {p0, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    return-void
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 46
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 47
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    .line 64
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 86
    invoke-direct {p0, p1}, Ltwitter4j/StatusJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 87
    return-void
.end method

.method constructor <init>(Ltwitter4j/JSONObject;Ltwitter4j/conf/Configuration;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 46
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 47
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    .line 64
    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 78
    invoke-direct {p0, p1}, Ltwitter4j/StatusJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 79
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0, p1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    return-void
.end method

.method static createStatusList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 455
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asJSONArray()Ltwitter4j/JSONArray;

    move-result-object v1

    .line 456
    invoke-virtual {v1}, Ltwitter4j/JSONArray;->length()I

    move-result v2

    .line 457
    new-instance v3, Ltwitter4j/ResponseListImpl;

    invoke-direct {v3, v2, p0}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/HttpResponse;)V

    .line 458
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 459
    invoke-virtual {v1, v0}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v4

    .line 460
    new-instance v5, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v5, v4}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    .line 461
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 462
    invoke-static {v5, v4}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_1
    invoke-interface {v3, v5}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_2
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 467
    invoke-static {v3, v1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :cond_3
    return-object v3

    .line 470
    :catch_0
    move-exception v0

    .line 471
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private init(Ltwitter4j/JSONObject;)V
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 95
    const-string v1, "id"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v1

    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->id:J

    .line 96
    const-string v1, "source"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    .line 97
    const-string v1, "created_at"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    .line 98
    const-string v1, "truncated"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v1

    iput-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    .line 99
    const-string v1, "in_reply_to_status_id"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v1

    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    .line 100
    const-string v1, "in_reply_to_user_id"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v1

    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:J

    .line 101
    const-string v1, "favorited"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v1

    iput-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    .line 102
    const-string v1, "retweeted"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v1

    iput-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isRetweeted:Z

    .line 103
    const-string v1, "in_reply_to_screen_name"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    .line 104
    const-string v1, "retweet_count"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v1

    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    .line 105
    const-string v1, "favorite_count"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/StatusJSONImpl;->favoriteCount:I

    .line 106
    const-string v1, "possibly_sensitive"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v1

    iput-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isPossiblySensitive:Z

    .line 108
    :try_start_0
    const-string v1, "user"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Ltwitter4j/UserJSONImpl;

    const-string v2, "user"

    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 111
    :cond_0
    invoke-static {p1}, Ltwitter4j/JSONImplFactory;->createGeoLocation(Ltwitter4j/JSONObject;)Ltwitter4j/GeoLocation;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 112
    const-string v1, "place"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    new-instance v1, Ltwitter4j/PlaceJSONImpl;

    const-string v2, "place"

    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/PlaceJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 116
    :cond_1
    const-string v1, "retweeted_status"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 117
    new-instance v1, Ltwitter4j/StatusJSONImpl;

    const-string v2, "retweeted_status"

    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    .line 119
    :cond_2
    const-string v1, "contributors"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 120
    const-string v1, "contributors"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ltwitter4j/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    move v1, v0

    .line 122
    :goto_0
    invoke-virtual {v2}, Ltwitter4j/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 123
    iget-object v3, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    invoke-virtual {v2, v1}, Ltwitter4j/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_3
    const/4 v1, 0x0

    new-array v1, v1, [J

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    .line 128
    :cond_4
    const-string v1, "entities"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 129
    const-string v1, "entities"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    .line 131
    const-string v1, "user_mentions"

    invoke-virtual {v2, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 132
    const-string v1, "user_mentions"

    invoke-virtual {v2, v1}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v3

    .line 133
    invoke-virtual {v3}, Ltwitter4j/JSONArray;->length()I

    move-result v4

    .line 134
    new-array v1, v4, [Ltwitter4j/UserMentionEntity;

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    move v1, v0

    .line 135
    :goto_1
    if-ge v1, v4, :cond_5

    .line 136
    iget-object v5, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    new-instance v6, Ltwitter4j/UserMentionEntityJSONImpl;

    invoke-virtual {v3, v1}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Ltwitter4j/UserMentionEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v6, v5, v1

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    :cond_5
    const-string v1, "urls"

    invoke-virtual {v2, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 140
    const-string v1, "urls"

    invoke-virtual {v2, v1}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v3

    .line 141
    invoke-virtual {v3}, Ltwitter4j/JSONArray;->length()I

    move-result v4

    .line 142
    new-array v1, v4, [Ltwitter4j/URLEntity;

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    move v1, v0

    .line 143
    :goto_2
    if-ge v1, v4, :cond_6

    .line 144
    iget-object v5, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    new-instance v6, Ltwitter4j/URLEntityJSONImpl;

    invoke-virtual {v3, v1}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Ltwitter4j/URLEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v6, v5, v1

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 148
    :cond_6
    const-string v1, "hashtags"

    invoke-virtual {v2, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 149
    const-string v1, "hashtags"

    invoke-virtual {v2, v1}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v3

    .line 150
    invoke-virtual {v3}, Ltwitter4j/JSONArray;->length()I

    move-result v4

    .line 151
    new-array v1, v4, [Ltwitter4j/HashtagEntity;

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    move v1, v0

    .line 152
    :goto_3
    if-ge v1, v4, :cond_7

    .line 153
    iget-object v5, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    new-instance v6, Ltwitter4j/HashtagEntityJSONImpl;

    invoke-virtual {v3, v1}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Ltwitter4j/HashtagEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v6, v5, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 157
    :cond_7
    const-string v1, "symbols"

    invoke-virtual {v2, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 158
    const-string v1, "symbols"

    invoke-virtual {v2, v1}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v3

    .line 159
    invoke-virtual {v3}, Ltwitter4j/JSONArray;->length()I

    move-result v4

    .line 160
    new-array v1, v4, [Ltwitter4j/SymbolEntity;

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    move v1, v0

    .line 161
    :goto_4
    if-ge v1, v4, :cond_8

    .line 163
    iget-object v5, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    new-instance v6, Ltwitter4j/HashtagEntityJSONImpl;

    invoke-virtual {v3, v1}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Ltwitter4j/HashtagEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v6, v5, v1

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 167
    :cond_8
    const-string v1, "media"

    invoke-virtual {v2, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 168
    const-string v1, "media"

    invoke-virtual {v2, v1}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v2

    .line 169
    invoke-virtual {v2}, Ltwitter4j/JSONArray;->length()I

    move-result v3

    .line 170
    new-array v1, v3, [Ltwitter4j/MediaEntity;

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    move v1, v0

    .line 171
    :goto_5
    if-ge v1, v3, :cond_9

    .line 172
    iget-object v4, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    new-instance v5, Ltwitter4j/MediaEntityJSONImpl;

    invoke-virtual {v2, v1}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Ltwitter4j/MediaEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v5, v4, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 177
    :cond_9
    const-string v1, "metadata"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 178
    const-string v1, "metadata"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v1

    .line 179
    const-string v2, "iso_language_code"

    invoke-virtual {v1, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 180
    const-string v2, "iso_language_code"

    invoke-static {v2, v1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->isoLanguageCode:Ljava/lang/String;

    .line 184
    :cond_a
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    new-array v1, v1, [Ltwitter4j/UserMentionEntity;

    :goto_6
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 185
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    new-array v1, v1, [Ltwitter4j/URLEntity;

    :goto_7
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 186
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v1, :cond_f

    const/4 v1, 0x0

    new-array v1, v1, [Ltwitter4j/HashtagEntity;

    :goto_8
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 187
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Ltwitter4j/SymbolEntity;

    :goto_9
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 188
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    if-nez v1, :cond_11

    const/4 v1, 0x0

    new-array v1, v1, [Ltwitter4j/MediaEntity;

    :goto_a
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 189
    const-string v1, "text"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    iget-object v3, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    iget-object v4, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    iget-object v5, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    invoke-static {v1, v2, v3, v4, v5}, Ltwitter4j/HTMLEntity;->unescapeAndSlideEntityIncdices(Ljava/lang/String;[Ltwitter4j/UserMentionEntity;[Ltwitter4j/URLEntity;[Ltwitter4j/HashtagEntity;[Ltwitter4j/MediaEntity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    .line 191
    const-string v1, "current_user_retweet"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 192
    const-string v1, "current_user_retweet"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ltwitter4j/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    .line 194
    :cond_b
    const-string v1, "lang"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 195
    const-string v1, "lang"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->lang:Ljava/lang/String;

    .line 198
    :cond_c
    const-string v1, "scopes"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 199
    const-string v1, "scopes"

    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v1

    .line 200
    const-string v2, "place_ids"

    invoke-virtual {v1, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 201
    const-string v2, "place_ids"

    invoke-virtual {v1, v2}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Ltwitter4j/JSONArray;->length()I

    move-result v2

    .line 203
    new-array v3, v2, [Ljava/lang/String;

    .line 204
    :goto_b
    if-ge v0, v2, :cond_12

    .line 205
    invoke-virtual {v1, v0}, Ltwitter4j/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 184
    :cond_d
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    goto/16 :goto_6

    .line 185
    :cond_e
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    goto/16 :goto_7

    .line 186
    :cond_f
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    goto/16 :goto_8

    .line 187
    :cond_10
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    goto :goto_9

    .line 188
    :cond_11
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    goto :goto_a

    .line 207
    :cond_12
    new-instance v0, Ltwitter4j/ScopesImpl;

    invoke-direct {v0, v3}, Ltwitter4j/ScopesImpl;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->scopes:Ltwitter4j/Scopes;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_13
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    check-cast p1, Ltwitter4j/Status;

    invoke-virtual {p0, p1}, Ltwitter4j/StatusJSONImpl;->compareTo(Ltwitter4j/Status;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Status;)I
    .locals 4
    .parameter

    .prologue
    .line 217
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 218
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 219
    const/high16 v0, -0x8000

    .line 223
    :goto_0
    return v0

    .line 220
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 221
    const v0, 0x7fffffff

    goto :goto_0

    .line 223
    :cond_1
    long-to-int v0, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 482
    if-nez p1, :cond_1

    move v0, v1

    .line 488
    :cond_0
    :goto_0
    return v0

    .line 485
    :cond_1
    if-eq p0, p1, :cond_0

    .line 488
    instance-of v2, p1, Ltwitter4j/Status;

    if-eqz v2, :cond_2

    check-cast p1, Ltwitter4j/Status;

    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Ltwitter4j/StatusJSONImpl;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getContributors()[J
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getCurrentUserRetweetId()J
    .locals 2

    .prologue
    .line 384
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    return-wide v0
.end method

.method public getFavoriteCount()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Ltwitter4j/StatusJSONImpl;->favoriteCount:I

    return v0
.end method

.method public getGeoLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getHashtagEntities()[Ltwitter4j/HashtagEntity;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    return-wide v0
.end method

.method public getInReplyToScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyToStatusId()J
    .locals 2

    .prologue
    .line 272
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    return-wide v0
.end method

.method public getInReplyToUserId()J
    .locals 2

    .prologue
    .line 280
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:J

    return-wide v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaEntities()[Ltwitter4j/MediaEntity;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    return-object v0
.end method

.method public getPlace()Ltwitter4j/Place;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    return-object v0
.end method

.method public getRetweetCount()I
    .locals 2

    .prologue
    .line 368
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    long-to-int v0, v0

    return v0
.end method

.method public getRetweetedStatus()Ltwitter4j/Status;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    return-object v0
.end method

.method public getScopes()Ltwitter4j/Scopes;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->scopes:Ltwitter4j/Scopes;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolEntities()[Ltwitter4j/SymbolEntity;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getURLEntities()[Ltwitter4j/URLEntity;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    return-object v0
.end method

.method public getUser()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    return-object v0
.end method

.method public getUserMentionEntities()[Ltwitter4j/UserMentionEntity;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 477
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public isFavorited()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    return v0
.end method

.method public isPossiblySensitive()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isPossiblySensitive:Z

    return v0
.end method

.method public isRetweet()Z
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRetweeted()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isRetweeted:Z

    return v0
.end method

.method public isRetweetedByMe()Z
    .locals 4

    .prologue
    .line 376
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusJSONImpl{createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTruncated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inReplyToStatusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inReplyToUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFavorited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRetweeted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isRetweeted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", favoriteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/StatusJSONImpl;->favoriteCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inReplyToScreenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", geoLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", place="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retweetCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPossiblySensitive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isPossiblySensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isoLanguageCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->isoLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lang=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contributorsIDs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retweetedStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userMentionEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", urlEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashtagEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", symbolEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentUserRetweetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
