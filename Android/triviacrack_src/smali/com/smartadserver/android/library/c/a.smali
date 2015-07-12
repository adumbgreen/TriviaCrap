.class public Lcom/smartadserver/android/library/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "impUrls"

    sput-object v0, Lcom/smartadserver/android/library/c/a;->a:Ljava/lang/String;

    .line 23
    const-string v0, "countClickUrl"

    sput-object v0, Lcom/smartadserver/android/library/c/a;->b:Ljava/lang/String;

    .line 24
    const-string v0, "openInApp"

    sput-object v0, Lcom/smartadserver/android/library/c/a;->c:Ljava/lang/String;

    .line 25
    const-string v0, "closePosition"

    sput-object v0, Lcom/smartadserver/android/library/c/a;->d:Ljava/lang/String;

    .line 26
    const-string v0, "duration"

    sput-object v0, Lcom/smartadserver/android/library/c/a;->e:Ljava/lang/String;

    .line 27
    const-string v0, "insertionId"

    sput-object v0, Lcom/smartadserver/android/library/c/a;->f:Ljava/lang/String;

    .line 28
    const-string v0, "expirationDate"

    sput-object v0, Lcom/smartadserver/android/library/c/a;->g:Ljava/lang/String;

    .line 29
    const-string v0, "isOffline"

    sput-object v0, Lcom/smartadserver/android/library/c/a;->h:Ljava/lang/String;

    .line 30
    const-string v0, "html"

    sput-object v0, Lcom/smartadserver/android/library/c/a;->i:Ljava/lang/String;

    .line 31
    const-string v0, "scriptUrl"

    sput-object v0, Lcom/smartadserver/android/library/c/a;->j:Ljava/lang/String;

    .line 32
    const-string v0, "clickUrl"

    sput-object v0, Lcom/smartadserver/android/library/c/a;->k:Ljava/lang/String;

    .line 33
    const-string v0, "portraitWidth"

    sput-object v0, Lcom/smartadserver/android/library/c/a;->l:Ljava/lang/String;

    .line 34
    const-string v0, "portraitHeight"

    sput-object v0, Lcom/smartadserver/android/library/c/a;->m:Ljava/lang/String;

    .line 35
    const-string v0, "landscapeWidth"

    sput-object v0, Lcom/smartadserver/android/library/c/a;->n:Ljava/lang/String;

    .line 36
    const-string v0, "landscapeHeight"

    sput-object v0, Lcom/smartadserver/android/library/c/a;->o:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/smartadserver/android/library/d/a;
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    .line 49
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v3, "ad"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 52
    if-nez v3, :cond_0

    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Missing root ad element"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    const-string v2, "html"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    sget-object v4, Lcom/smartadserver/android/library/c/a;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing required "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/smartadserver/android/library/c/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/smartadserver/android/library/c/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " element"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    new-instance v5, Lcom/smartadserver/android/library/d/a;

    invoke-direct {v5}, Lcom/smartadserver/android/library/d/a;-><init>()V

    .line 64
    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 65
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/smartadserver/android/library/d/a;->b(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v5, v2}, Lcom/smartadserver/android/library/d/a;->a(Ljava/lang/String;)V

    .line 98
    :goto_0
    sget-object v2, Lcom/smartadserver/android/library/c/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/smartadserver/android/library/d/a;->d(Ljava/lang/String;)V

    .line 99
    sget-object v2, Lcom/smartadserver/android/library/c/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/smartadserver/android/library/d/a;->e(Ljava/lang/String;)V

    .line 100
    sget-object v2, Lcom/smartadserver/android/library/c/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v5, v2}, Lcom/smartadserver/android/library/d/a;->a(Z)V

    .line 103
    sget-object v2, Lcom/smartadserver/android/library/c/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 104
    invoke-virtual {v5, v2}, Lcom/smartadserver/android/library/d/a;->a(I)V

    .line 107
    sget-object v2, Lcom/smartadserver/android/library/c/a;->e:Ljava/lang/String;

    const-wide/high16 v6, -0x4010

    invoke-virtual {v3, v2, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 108
    const-wide/16 v8, 0x0

    cmpl-double v2, v6, v8

    if-ltz v2, :cond_2

    .line 109
    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    double-to-int v2, v6

    invoke-virtual {v5, v2}, Lcom/smartadserver/android/library/d/a;->b(I)V

    .line 113
    :cond_2
    sget-object v2, Lcom/smartadserver/android/library/c/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/smartadserver/android/library/d/a;->c(I)V

    .line 116
    sget-object v2, Lcom/smartadserver/android/library/c/a;->h:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :goto_1
    invoke-virtual {v5, v0}, Lcom/smartadserver/android/library/d/a;->b(Z)V

    .line 119
    sget-object v0, Lcom/smartadserver/android/library/c/a;->h:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/smartadserver/android/library/d/a;->c(Z)V

    .line 122
    const-wide/16 v6, 0x3e8

    sget-object v0, Lcom/smartadserver/android/library/c/a;->g:Ljava/lang/String;

    invoke-virtual {v3, v0, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    mul-long/2addr v6, v8

    .line 123
    cmp-long v0, v6, v10

    if-lez v0, :cond_3

    .line 124
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 126
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/smartadserver/android/library/d/a;->a(Ljava/util/Date;)V

    .line 130
    :cond_3
    sget-object v0, Lcom/smartadserver/android/library/c/a;->k:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/smartadserver/android/library/d/a;->f(Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/smartadserver/android/library/c/a;->l:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/smartadserver/android/library/d/a;->d(I)V

    .line 134
    sget-object v0, Lcom/smartadserver/android/library/c/a;->m:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/smartadserver/android/library/d/a;->e(I)V

    .line 135
    sget-object v0, Lcom/smartadserver/android/library/c/a;->n:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/smartadserver/android/library/d/a;->f(I)V

    .line 136
    sget-object v0, Lcom/smartadserver/android/library/c/a;->o:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/smartadserver/android/library/d/a;->g(I)V

    .line 138
    return-object v5

    .line 69
    :cond_4
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v5, v4}, Lcom/smartadserver/android/library/d/a;->c(Ljava/lang/String;)V

    .line 73
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 74
    invoke-static {v2, v6}, Lcom/smartadserver/android/library/h/b;->a(Ljava/net/URL;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 77
    const/4 v2, 0x0

    aget-object v2, v6, v2

    if-eqz v2, :cond_5

    .line 78
    const/4 v2, 0x0

    aget-object v2, v6, v2

    invoke-static {v2}, Lcom/smartadserver/android/library/h/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    :goto_2
    if-nez v2, :cond_6

    .line 84
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get base URL for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/smartadserver/android/library/c/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/smartadserver/android/library/c/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_5
    :try_start_1
    invoke-static {v4}, Lcom/smartadserver/android/library/h/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 86
    :cond_6
    if-nez v7, :cond_7

    .line 87
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get HTML contents for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/smartadserver/android/library/c/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_7
    invoke-virtual {v5, v2}, Lcom/smartadserver/android/library/d/a;->b(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v5, v7}, Lcom/smartadserver/android/library/d/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 116
    goto/16 :goto_1
.end method
