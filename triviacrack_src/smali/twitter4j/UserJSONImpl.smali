.class final Ltwitter4j/UserJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/User;


# static fields
.field private static final serialVersionUID:J = -0x4b9c219cdec667f7L


# instance fields
.field private createdAt:Ljava/util/Date;

.field private description:Ljava/lang/String;

.field private descriptionURLEntities:[Ltwitter4j/URLEntity;

.field private favouritesCount:I

.field private followersCount:I

.field private friendsCount:I

.field private id:J

.field private isContributorsEnabled:Z

.field private isFollowRequestSent:Z

.field private isGeoEnabled:Z

.field private isProtected:Z

.field private isVerified:Z

.field private lang:Ljava/lang/String;

.field private listedCount:I

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private profileBackgroundColor:Ljava/lang/String;

.field private profileBackgroundImageUrl:Ljava/lang/String;

.field private profileBackgroundImageUrlHttps:Ljava/lang/String;

.field private profileBackgroundTiled:Z

.field private profileBannerImageUrl:Ljava/lang/String;

.field private profileImageUrl:Ljava/lang/String;

.field private profileImageUrlHttps:Ljava/lang/String;

.field private profileLinkColor:Ljava/lang/String;

.field private profileSidebarBorderColor:Ljava/lang/String;

.field private profileSidebarFillColor:Ljava/lang/String;

.field private profileTextColor:Ljava/lang/String;

.field private profileUseBackgroundImage:Z

.field private screenName:Ljava/lang/String;

.field private showAllInlineMedia:Z

.field private status:Ltwitter4j/Status;

.field private statusesCount:I

.field private timeZone:Ljava/lang/String;

.field private translator:Z

.field private url:Ljava/lang/String;

.field private urlEntity:Ltwitter4j/URLEntity;

.field private utcOffset:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 91
    return-void
.end method

.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 73
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 76
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    .line 77
    invoke-direct {p0, v0}, Ltwitter4j/UserJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 78
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-static {p0, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1
    return-void
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 85
    invoke-direct {p0, p1}, Ltwitter4j/UserJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 86
    return-void
.end method

.method static createPagableUserList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 559
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v1

    .line 560
    const-string v0, "users"

    invoke-virtual {v1, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v2

    .line 561
    invoke-virtual {v2}, Ltwitter4j/JSONArray;->length()I

    move-result v3

    .line 562
    new-instance v4, Ltwitter4j/PagableResponseListImpl;

    invoke-direct {v4, v3, v1, p0}, Ltwitter4j/PagableResponseListImpl;-><init>(ILtwitter4j/JSONObject;Ltwitter4j/HttpResponse;)V

    .line 564
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 565
    invoke-virtual {v2, v0}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v5

    .line 566
    new-instance v6, Ltwitter4j/UserJSONImpl;

    invoke-direct {v6, v5}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    .line 567
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 568
    invoke-static {v6, v5}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    :cond_1
    invoke-interface {v4, v6}, Ltwitter4j/PagableResponseList;->add(Ljava/lang/Object;)Z

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :cond_2
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    invoke-static {v4, v1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :cond_3
    return-object v4

    .line 576
    :catch_0
    move-exception v0

    .line 577
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method static createUserList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 1
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
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asJSONArray()Ltwitter4j/JSONArray;

    move-result-object v0

    invoke-static {v0, p0, p1}, Ltwitter4j/UserJSONImpl;->createUserList(Ltwitter4j/JSONArray;Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method static createUserList(Ltwitter4j/JSONArray;Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/JSONArray;",
            "Ltwitter4j/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    :try_start_0
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 592
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/JSONArray;->length()I

    move-result v1

    .line 593
    new-instance v2, Ltwitter4j/ResponseListImpl;

    invoke-direct {v2, v1, p1}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/HttpResponse;)V

    .line 595
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 596
    invoke-virtual {p0, v0}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v3

    .line 597
    new-instance v4, Ltwitter4j/UserJSONImpl;

    invoke-direct {v4, v3}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    .line 598
    invoke-interface {v2, v4}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 599
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 600
    invoke-static {v4, v3}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    :cond_2
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 604
    invoke-static {v2, p0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :cond_3
    return-object v2

    .line 607
    :catch_0
    move-exception v0

    .line 608
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private static getURLEntitiesFromJSON(Ltwitter4j/JSONObject;Ljava/lang/String;)[Ltwitter4j/URLEntity;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 166
    const-string v0, "entities"

    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    const-string v0, "entities"

    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v0

    .line 170
    const-string v1, "urls"

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    const-string v1, "urls"

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Ltwitter4j/JSONArray;->length()I

    move-result v3

    .line 173
    new-array v0, v3, [Ltwitter4j/URLEntity;

    .line 174
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 175
    new-instance v4, Ltwitter4j/URLEntityJSONImpl;

    invoke-virtual {v2, v1}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Ltwitter4j/URLEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v4, v0, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private init(Ltwitter4j/JSONObject;)V
    .locals 5
    .parameter

    .prologue
    .line 95
    :try_start_0
    const-string v0, "id"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/UserJSONImpl;->id:J

    .line 96
    const-string v0, "name"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->name:Ljava/lang/String;

    .line 97
    const-string v0, "screen_name"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->screenName:Ljava/lang/String;

    .line 98
    const-string v0, "location"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->location:Ljava/lang/String;

    .line 101
    const-string v0, "description"

    invoke-static {p1, v0}, Ltwitter4j/UserJSONImpl;->getURLEntitiesFromJSON(Ltwitter4j/JSONObject;Ljava/lang/String;)[Ltwitter4j/URLEntity;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->descriptionURLEntities:[Ltwitter4j/URLEntity;

    .line 102
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->descriptionURLEntities:[Ltwitter4j/URLEntity;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    new-array v0, v0, [Ltwitter4j/URLEntity;

    :goto_0
    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->descriptionURLEntities:[Ltwitter4j/URLEntity;

    .line 105
    const-string v0, "url"

    invoke-static {p1, v0}, Ltwitter4j/UserJSONImpl;->getURLEntitiesFromJSON(Ltwitter4j/JSONObject;Ljava/lang/String;)[Ltwitter4j/URLEntity;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 107
    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->urlEntity:Ltwitter4j/URLEntity;

    .line 110
    :cond_0
    const-string v0, "description"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->description:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->description:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Ltwitter4j/UserJSONImpl;->descriptionURLEntities:[Ltwitter4j/URLEntity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Ltwitter4j/HTMLEntity;->unescapeAndSlideEntityIncdices(Ljava/lang/String;[Ltwitter4j/UserMentionEntity;[Ltwitter4j/URLEntity;[Ltwitter4j/HashtagEntity;[Ltwitter4j/MediaEntity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->description:Ljava/lang/String;

    .line 116
    :cond_1
    const-string v0, "contributors_enabled"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isContributorsEnabled:Z

    .line 117
    const-string v0, "profile_image_url"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrl:Ljava/lang/String;

    .line 118
    const-string v0, "profile_image_url_https"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrlHttps:Ljava/lang/String;

    .line 119
    const-string v0, "url"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->url:Ljava/lang/String;

    .line 120
    const-string v0, "protected"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isProtected:Z

    .line 121
    const-string v0, "geo_enabled"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isGeoEnabled:Z

    .line 122
    const-string v0, "verified"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isVerified:Z

    .line 123
    const-string v0, "is_translator"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->translator:Z

    .line 124
    const-string v0, "followers_count"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/UserJSONImpl;->followersCount:I

    .line 126
    const-string v0, "profile_background_color"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundColor:Ljava/lang/String;

    .line 127
    const-string v0, "profile_text_color"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileTextColor:Ljava/lang/String;

    .line 128
    const-string v0, "profile_link_color"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileLinkColor:Ljava/lang/String;

    .line 129
    const-string v0, "profile_sidebar_fill_color"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileSidebarFillColor:Ljava/lang/String;

    .line 130
    const-string v0, "profile_sidebar_border_color"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileSidebarBorderColor:Ljava/lang/String;

    .line 131
    const-string v0, "profile_use_background_image"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->profileUseBackgroundImage:Z

    .line 132
    const-string v0, "show_all_inline_media"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->showAllInlineMedia:Z

    .line 133
    const-string v0, "friends_count"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/UserJSONImpl;->friendsCount:I

    .line 134
    const-string v0, "created_at"

    const-string v1, "EEE MMM dd HH:mm:ss z yyyy"

    invoke-static {v0, p1, v1}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->createdAt:Ljava/util/Date;

    .line 135
    const-string v0, "favourites_count"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/UserJSONImpl;->favouritesCount:I

    .line 136
    const-string v0, "utc_offset"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/UserJSONImpl;->utcOffset:I

    .line 137
    const-string v0, "time_zone"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->timeZone:Ljava/lang/String;

    .line 138
    const-string v0, "profile_background_image_url"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundImageUrl:Ljava/lang/String;

    .line 139
    const-string v0, "profile_background_image_url_https"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundImageUrlHttps:Ljava/lang/String;

    .line 140
    const-string v0, "profile_banner_url"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    .line 141
    const-string v0, "profile_background_tile"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundTiled:Z

    .line 142
    const-string v0, "lang"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->lang:Ljava/lang/String;

    .line 143
    const-string v0, "statuses_count"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/UserJSONImpl;->statusesCount:I

    .line 144
    const-string v0, "listed_count"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/UserJSONImpl;->listedCount:I

    .line 145
    const-string v0, "follow_request_sent"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isFollowRequestSent:Z

    .line 146
    const-string v0, "status"

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    const-string v0, "status"

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v0

    .line 148
    new-instance v1, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v1, v0}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v1, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    .line 153
    :cond_2
    return-void

    .line 102
    :cond_3
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->descriptionURLEntities:[Ltwitter4j/URLEntity;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
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

    invoke-virtual {p1}, Ltwitter4j/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private toResizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 261
    if-eqz p1, :cond_1

    .line 262
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 263
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 264
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    if-le v1, v2, :cond_0

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    check-cast p1, Ltwitter4j/User;

    invoke-virtual {p0, p1}, Ltwitter4j/UserJSONImpl;->compareTo(Ltwitter4j/User;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/User;)I
    .locals 4
    .parameter

    .prologue
    .line 186
    iget-wide v0, p0, Ltwitter4j/UserJSONImpl;->id:J

    invoke-interface {p1}, Ltwitter4j/User;->getId()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 619
    if-nez p1, :cond_1

    move v0, v1

    .line 625
    :cond_0
    :goto_0
    return v0

    .line 622
    :cond_1
    if-eq p0, p1, :cond_0

    .line 625
    instance-of v2, p1, Ltwitter4j/User;

    if-eqz v2, :cond_2

    check-cast p1, Ltwitter4j/User;

    invoke-interface {p1}, Ltwitter4j/User;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Ltwitter4j/UserJSONImpl;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getBiggerProfileImageURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrl:Ljava/lang/String;

    const-string v1, "_bigger"

    invoke-direct {p0, v0, v1}, Ltwitter4j/UserJSONImpl;->toResizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBiggerProfileImageURLHttps()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrlHttps:Ljava/lang/String;

    const-string v1, "_bigger"

    invoke-direct {p0, v0, v1}, Ltwitter4j/UserJSONImpl;->toResizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionURLEntities()[Ltwitter4j/URLEntity;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->descriptionURLEntities:[Ltwitter4j/URLEntity;

    return-object v0
.end method

.method public getFavouritesCount()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Ltwitter4j/UserJSONImpl;->favouritesCount:I

    return v0
.end method

.method public getFollowersCount()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Ltwitter4j/UserJSONImpl;->followersCount:I

    return v0
.end method

.method public getFriendsCount()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Ltwitter4j/UserJSONImpl;->friendsCount:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Ltwitter4j/UserJSONImpl;->id:J

    return-wide v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getListedCount()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Ltwitter4j/UserJSONImpl;->listedCount:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMiniProfileImageURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrl:Ljava/lang/String;

    const-string v1, "_mini"

    invoke-direct {p0, v0, v1}, Ltwitter4j/UserJSONImpl;->toResizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMiniProfileImageURLHttps()Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrlHttps:Ljava/lang/String;

    const-string v1, "_mini"

    invoke-direct {p0, v0, v1}, Ltwitter4j/UserJSONImpl;->toResizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalProfileImageURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Ltwitter4j/UserJSONImpl;->toResizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalProfileImageURLHttps()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrlHttps:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Ltwitter4j/UserJSONImpl;->toResizedURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfileBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileBackgroundImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileBackgroundImageUrlHttps()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundImageUrlHttps:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileBannerIPadRetinaURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ipad_retina"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProfileBannerIPadURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ipad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProfileBannerMobileRetinaURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mobile_retina"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProfileBannerMobileURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProfileBannerRetinaURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/web_retina"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProfileBannerURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBannerImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/web"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProfileImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageURLHttps()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileImageUrlHttps:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileLinkColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileLinkColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileSidebarBorderColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileSidebarBorderColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileSidebarFillColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileSidebarFillColor:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->profileTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ltwitter4j/Status;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    return-object v0
.end method

.method public getStatusesCount()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Ltwitter4j/UserJSONImpl;->statusesCount:I

    return v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getURLEntity()Ltwitter4j/URLEntity;
    .locals 6

    .prologue
    .line 546
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->urlEntity:Ltwitter4j/URLEntity;

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v3, ""

    .line 548
    :goto_0
    new-instance v0, Ltwitter4j/URLEntityJSONImpl;

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/URLEntityJSONImpl;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/UserJSONImpl;->urlEntity:Ltwitter4j/URLEntity;

    .line 550
    :cond_0
    iget-object v0, p0, Ltwitter4j/UserJSONImpl;->urlEntity:Ltwitter4j/URLEntity;

    return-object v0

    .line 547
    :cond_1
    iget-object v3, p0, Ltwitter4j/UserJSONImpl;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUtcOffset()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Ltwitter4j/UserJSONImpl;->utcOffset:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 614
    iget-wide v0, p0, Ltwitter4j/UserJSONImpl;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public isContributorsEnabled()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isContributorsEnabled:Z

    return v0
.end method

.method public isFollowRequestSent()Z
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isFollowRequestSent:Z

    return v0
.end method

.method public isGeoEnabled()Z
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isGeoEnabled:Z

    return v0
.end method

.method public isProfileBackgroundTiled()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundTiled:Z

    return v0
.end method

.method public isProfileUseBackgroundImage()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->profileUseBackgroundImage:Z

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isProtected:Z

    return v0
.end method

.method public isShowAllInlineMedia()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->showAllInlineMedia:Z

    return v0
.end method

.method public isTranslator()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->translator:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Ltwitter4j/UserJSONImpl;->isVerified:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserJSONImpl{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/UserJSONImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", location=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isContributorsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->isContributorsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileImageUrlHttps=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileImageUrlHttps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->isProtected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", followersCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserJSONImpl;->followersCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->status:Ltwitter4j/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileBackgroundColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileTextColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileTextColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileLinkColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileLinkColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileSidebarFillColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileSidebarFillColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileSidebarBorderColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileSidebarBorderColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileUseBackgroundImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->profileUseBackgroundImage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showAllInlineMedia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->showAllInlineMedia:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", friendsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserJSONImpl;->friendsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", favouritesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserJSONImpl;->favouritesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", utcOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserJSONImpl;->utcOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeZone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->timeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileBackgroundImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileBackgroundImageUrlHttps=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundImageUrlHttps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileBackgroundTiled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->profileBackgroundTiled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lang=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserJSONImpl;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statusesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserJSONImpl;->statusesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGeoEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->isGeoEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isVerified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->isVerified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", translator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->translator:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserJSONImpl;->listedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFollowRequestSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserJSONImpl;->isFollowRequestSent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
