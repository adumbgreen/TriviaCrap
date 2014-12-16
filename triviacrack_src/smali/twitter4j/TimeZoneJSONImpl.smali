.class public Ltwitter4j/TimeZoneJSONImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltwitter4j/TimeZone;


# static fields
.field private static final serialVersionUID:J = 0x1232d3faed98fb0L


# instance fields
.field private final NAME:Ljava/lang/String;

.field private final TZINFO_NAME:Ljava/lang/String;

.field private final UTC_OFFSET:I


# direct methods
.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    :try_start_0
    const-string v0, "utc_offset"

    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/TimeZoneJSONImpl;->UTC_OFFSET:I

    .line 31
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TimeZoneJSONImpl;->NAME:Ljava/lang/String;

    .line 32
    const-string v0, "tzinfo_name"

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TimeZoneJSONImpl;->TZINFO_NAME:Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ltwitter4j/TimeZoneJSONImpl;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public tzinfoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ltwitter4j/TimeZoneJSONImpl;->TZINFO_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public utcOffset()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Ltwitter4j/TimeZoneJSONImpl;->UTC_OFFSET:I

    return v0
.end method
