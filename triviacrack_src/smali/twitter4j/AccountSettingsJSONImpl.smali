.class Ltwitter4j/AccountSettingsJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/AccountSettings;


# static fields
.field private static final serialVersionUID:J = 0x85ef5f106bca856L


# instance fields
.field private final ALWAYS_USE_HTTPS:Z

.field private final DISCOVERABLE_BY_EMAIL:Z

.field private final GEO_ENABLED:Z

.field private final LANGUAGE:Ljava/lang/String;

.field private final SCREEN_NAME:Ljava/lang/String;

.field private final SLEEP_END_TIME:Ljava/lang/String;

.field private final SLEEP_START_TIME:Ljava/lang/String;

.field private final SLEEP_TIME_ENABLED:Z

.field private final TIMEZONE:Ltwitter4j/TimeZone;

.field private final TREND_LOCATION:[Ltwitter4j/Location;


# direct methods
.method private constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/JSONObject;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 41
    :try_start_0
    const-string v1, "sleep_time"

    invoke-virtual {p2, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v1

    .line 42
    const-string v2, "enabled"

    invoke-static {v2, v1}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Ltwitter4j/AccountSettingsJSONImpl;->SLEEP_TIME_ENABLED:Z

    .line 43
    const-string v2, "start_time"

    invoke-virtual {v1, v2}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/AccountSettingsJSONImpl;->SLEEP_START_TIME:Ljava/lang/String;

    .line 44
    const-string v2, "end_time"

    invoke-virtual {v1, v2}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/AccountSettingsJSONImpl;->SLEEP_END_TIME:Ljava/lang/String;

    .line 45
    const-string v1, "trend_location"

    invoke-virtual {p2, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Ltwitter4j/Location;

    iput-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->TREND_LOCATION:[Ltwitter4j/Location;

    .line 54
    :cond_0
    const-string v0, "geo_enabled"

    invoke-static {v0, p2}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->GEO_ENABLED:Z

    .line 55
    const-string v0, "language"

    invoke-virtual {p2, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->LANGUAGE:Ljava/lang/String;

    .line 56
    const-string v0, "always_use_https"

    invoke-static {v0, p2}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->ALWAYS_USE_HTTPS:Z

    .line 57
    const-string v0, "discoverable_by_email"

    invoke-static {v0, p2}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->DISCOVERABLE_BY_EMAIL:Z

    .line 59
    const-string v0, "time_zone"

    invoke-virtual {p2, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->TIMEZONE:Ltwitter4j/TimeZone;

    .line 64
    :goto_0
    const-string v0, "screen_name"

    invoke-virtual {p2, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->SCREEN_NAME:Ljava/lang/String;

    .line 68
    return-void

    .line 48
    :cond_1
    const-string v1, "trend_location"

    invoke-virtual {p2, v1}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ltwitter4j/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ltwitter4j/Location;

    iput-object v2, p0, Ltwitter4j/AccountSettingsJSONImpl;->TREND_LOCATION:[Ltwitter4j/Location;

    .line 50
    :goto_1
    invoke-virtual {v1}, Ltwitter4j/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 51
    iget-object v2, p0, Ltwitter4j/AccountSettingsJSONImpl;->TREND_LOCATION:[Ltwitter4j/Location;

    new-instance v3, Ltwitter4j/LocationJSONImpl;

    invoke-virtual {v1, v0}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Ltwitter4j/LocationJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v3, v2, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_2
    new-instance v0, Ltwitter4j/TimeZoneJSONImpl;

    const-string v1, "time_zone"

    invoke-virtual {p2, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/TimeZoneJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->TIMEZONE:Ltwitter4j/TimeZone;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltwitter4j/AccountSettingsJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/JSONObject;)V

    .line 72
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 74
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    return-void
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ltwitter4j/AccountSettingsJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/JSONObject;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->LANGUAGE:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->SCREEN_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getSleepEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->SLEEP_END_TIME:Ljava/lang/String;

    return-object v0
.end method

.method public getSleepStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->SLEEP_START_TIME:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ltwitter4j/TimeZone;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->TIMEZONE:Ltwitter4j/TimeZone;

    return-object v0
.end method

.method public getTrendLocations()[Ltwitter4j/Location;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->TREND_LOCATION:[Ltwitter4j/Location;

    return-object v0
.end method

.method public isAlwaysUseHttps()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->ALWAYS_USE_HTTPS:Z

    return v0
.end method

.method public isDiscoverableByEmail()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->DISCOVERABLE_BY_EMAIL:Z

    return v0
.end method

.method public isGeoEnabled()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->GEO_ENABLED:Z

    return v0
.end method

.method public isSleepTimeEnabled()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Ltwitter4j/AccountSettingsJSONImpl;->SLEEP_TIME_ENABLED:Z

    return v0
.end method
