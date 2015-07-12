.class public final Ltwitter4j/TwitterObjectFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final rawJsonMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field private static registeredAtleastOnce:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ltwitter4j/TwitterObjectFactory$1;

    invoke-direct {v0}, Ltwitter4j/TwitterObjectFactory$1;-><init>()V

    sput-object v0, Ltwitter4j/TwitterObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    .line 333
    const/4 v0, 0x0

    sput-boolean v0, Ltwitter4j/TwitterObjectFactory;->registeredAtleastOnce:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not intended to be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static clearThreadLocalMap()V
    .locals 1

    .prologue
    .line 330
    sget-object v0, Ltwitter4j/TwitterObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 331
    return-void
.end method

.method public static createAccountTotals(Ljava/lang/String;)Ltwitter4j/AccountTotals;
    .locals 2
    .parameter

    .prologue
    .line 87
    :try_start_0
    new-instance v0, Ltwitter4j/AccountTotalsJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/AccountTotalsJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createCategory(Ljava/lang/String;)Ltwitter4j/Category;
    .locals 2
    .parameter

    .prologue
    .line 207
    :try_start_0
    new-instance v0, Ltwitter4j/CategoryJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/CategoryJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createDirectMessage(Ljava/lang/String;)Ltwitter4j/DirectMessage;
    .locals 2
    .parameter

    .prologue
    .line 223
    :try_start_0
    new-instance v0, Ltwitter4j/DirectMessageJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createIDs(Ljava/lang/String;)Ltwitter4j/IDs;
    .locals 1
    .parameter

    .prologue
    .line 178
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    invoke-direct {v0, p0}, Ltwitter4j/IDsJSONImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createLocation(Ljava/lang/String;)Ltwitter4j/Location;
    .locals 2
    .parameter

    .prologue
    .line 239
    :try_start_0
    new-instance v0, Ltwitter4j/LocationJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/LocationJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createOEmbed(Ljava/lang/String;)Ltwitter4j/OEmbed;
    .locals 2
    .parameter

    .prologue
    .line 271
    :try_start_0
    new-instance v0, Ltwitter4j/OEmbedJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/OEmbedJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 298
    :try_start_0
    new-instance v0, Ltwitter4j/JSONObject;

    invoke-direct {v0, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-static {v0}, Ltwitter4j/JSONObjectType;->determine(Ltwitter4j/JSONObject;)Ltwitter4j/JSONObjectType$Type;

    move-result-object v1

    .line 300
    sget-object v2, Ltwitter4j/TwitterObjectFactory$2;->$SwitchMap$twitter4j$JSONObjectType$Type:[I

    invoke-virtual {v1}, Ltwitter4j/JSONObjectType$Type;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 317
    :goto_0
    :pswitch_0
    return-object v0

    .line 302
    :pswitch_1
    new-instance v1, Ltwitter4j/DirectMessageJSONImpl;

    const-string v2, "direct_message"

    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    invoke-static {v1, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 304
    :pswitch_2
    new-instance v1, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v1, v0}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    invoke-static {v1, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 306
    :pswitch_3
    new-instance v1, Ltwitter4j/DirectMessageJSONImpl;

    const-string v2, "direct_message"

    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    invoke-static {v1, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 308
    :pswitch_4
    new-instance v1, Ltwitter4j/StatusDeletionNoticeImpl;

    const-string v2, "delete"

    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/StatusDeletionNoticeImpl;-><init>(Ltwitter4j/JSONObject;)V

    invoke-static {v1, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static createPlace(Ljava/lang/String;)Ltwitter4j/Place;
    .locals 2
    .parameter

    .prologue
    .line 119
    :try_start_0
    new-instance v0, Ltwitter4j/PlaceJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/PlaceJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createRateLimitStatus(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltwitter4j/RateLimitStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    :try_start_0
    new-instance v0, Ltwitter4j/JSONObject;

    invoke-direct {v0, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ltwitter4j/RateLimitStatusJSONImpl;->createRateLimitStatuses(Ltwitter4j/JSONObject;)Ljava/util/Map;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createRelationship(Ljava/lang/String;)Ltwitter4j/Relationship;
    .locals 2
    .parameter

    .prologue
    .line 103
    :try_start_0
    new-instance v0, Ltwitter4j/RelationshipJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createSavedSearch(Ljava/lang/String;)Ltwitter4j/SavedSearch;
    .locals 2
    .parameter

    .prologue
    .line 135
    :try_start_0
    new-instance v0, Ltwitter4j/SavedSearchJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/SavedSearchJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createStatus(Ljava/lang/String;)Ltwitter4j/Status;
    .locals 2
    .parameter

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createTrend(Ljava/lang/String;)Ltwitter4j/Trend;
    .locals 2
    .parameter

    .prologue
    .line 151
    :try_start_0
    new-instance v0, Ltwitter4j/TrendJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/TrendJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createTrends(Ljava/lang/String;)Ltwitter4j/Trends;
    .locals 1
    .parameter

    .prologue
    .line 166
    new-instance v0, Ltwitter4j/TrendsJSONImpl;

    invoke-direct {v0, p0}, Ltwitter4j/TrendsJSONImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createUser(Ljava/lang/String;)Ltwitter4j/User;
    .locals 2
    .parameter

    .prologue
    .line 71
    :try_start_0
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createUserList(Ljava/lang/String;)Ltwitter4j/UserList;
    .locals 2
    .parameter

    .prologue
    .line 255
    :try_start_0
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getRawJSON(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 31
    sget-boolean v0, Ltwitter4j/TwitterObjectFactory;->registeredAtleastOnce:Z

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Apparently jsonStoreEnabled is not set to true."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    sget-object v0, Ltwitter4j/TwitterObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Ljava/lang/String;

    .line 41
    :goto_0
    return-object v0

    .line 37
    :cond_1
    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 340
    const/4 v0, 0x1

    sput-boolean v0, Ltwitter4j/TwitterObjectFactory;->registeredAtleastOnce:Z

    .line 341
    sget-object v0, Ltwitter4j/TwitterObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-object p0
.end method
