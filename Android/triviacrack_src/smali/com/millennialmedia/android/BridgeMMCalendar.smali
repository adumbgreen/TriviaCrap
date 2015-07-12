.class Lcom/millennialmedia/android/BridgeMMCalendar;
.super Lcom/millennialmedia/android/MMJSObject;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const-class v0, Lcom/millennialmedia/android/BridgeMMCalendar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "yyyy-MM-dd\'T\'HH:mmZZZ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZZZ"

    aput-object v2, v0, v1

    sput-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->d:[Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->e:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 39
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 298
    packed-switch p1, :pswitch_data_0

    .line 314
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 300
    :pswitch_0
    const-string v0, "MO"

    goto :goto_0

    .line 302
    :pswitch_1
    const-string v0, "TU"

    goto :goto_0

    .line 304
    :pswitch_2
    const-string v0, "WE"

    goto :goto_0

    .line 306
    :pswitch_3
    const-string v0, "TH"

    goto :goto_0

    .line 308
    :pswitch_4
    const-string v0, "FR"

    goto :goto_0

    .line 310
    :pswitch_5
    const-string v0, "SA"

    goto :goto_0

    .line 312
    :pswitch_6
    const-string v0, "SU"

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    :try_start_0
    const-string v0, "frequency"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string v2, "FREQ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    :try_start_1
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->e:Ljava/text/SimpleDateFormat;

    const-string v2, "expires"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/android/BridgeMMCalendar;->d:[Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 238
    const-string v2, "UNTIL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 247
    :goto_1
    :try_start_2
    const-string v0, "daysInWeek"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 250
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/millennialmedia/android/BridgeMMCalendar;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 231
    :catch_0
    move-exception v0

    .line 232
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Unable to get calendar event recurrence frequency"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :catch_1
    move-exception v0

    .line 241
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Error parsing calendar event recurrence expiration date"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 242
    :catch_2
    move-exception v0

    .line 243
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Unable to get calendar event recurrence expiration date"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 254
    :cond_0
    :try_start_3
    const-string v0, "BYDAY="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 261
    :goto_3
    :try_start_4
    const-string v0, "daysInMonth"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\["

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    const-string v2, "BYMONTHDAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 270
    :goto_4
    :try_start_5
    const-string v0, "monthsInYear:"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\["

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string v2, "BYMONTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 279
    :goto_5
    :try_start_6
    const-string v0, "daysInYear"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    const-string v2, "BYYEARDAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 286
    :goto_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 256
    :catch_3
    move-exception v0

    .line 257
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Unable to get days in week"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 265
    :catch_4
    move-exception v0

    .line 266
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Unable to get days in month"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 274
    :catch_5
    move-exception v0

    .line 275
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Unable to get months in year:"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 282
    :catch_6
    move-exception v0

    .line 283
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Unable to get days in year"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 322
    const-string v1, "addEvent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMCalendar;->addEvent(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 326
    :cond_0
    return-object v0
.end method

.method public addEvent(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 14
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 44
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEvent parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_c

    .line 48
    if-eqz p1, :cond_b

    const-string v0, "parameters"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 61
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    const-string v0, "parameters"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_b

    .line 68
    :try_start_1
    const-string v0, "description"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v9, v0

    .line 79
    :goto_0
    :try_start_2
    const-string v0, "summary"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v8, v0

    .line 86
    :goto_1
    :try_start_3
    const-string v0, "transparency"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    move-object v7, v0

    .line 92
    :goto_2
    :try_start_4
    const-string v0, "reminder"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    move-object v6, v0

    .line 98
    :goto_3
    :try_start_5
    const-string v0, "location"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v0

    move-object v5, v0

    .line 104
    :goto_4
    :try_start_6
    const-string v0, "status"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v0

    move-object v4, v0

    .line 110
    :goto_5
    :try_start_7
    const-string v0, "recurrence"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/BridgeMMCalendar;->a(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v0

    move-object v3, v0

    .line 119
    :goto_6
    :try_start_8
    const-string v0, "start"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/millennialmedia/android/BridgeMMCalendar;->d:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    :try_end_8
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v0

    move-object v2, v0

    .line 130
    :goto_7
    :try_start_9
    const-string v0, "end"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v10, Lcom/millennialmedia/android/BridgeMMCalendar;->d:[Ljava/lang/String;

    invoke-static {v0, v10}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    :try_end_9
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_a

    move-result-object v0

    .line 139
    :goto_8
    :try_start_a
    sget-object v10, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v11, "Creating calendar event: title: %s, location: %s, start: %s, end: %s, status: %s, summary: %s, rrule: %s"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    const/4 v13, 0x2

    aput-object v2, v12, v13

    const/4 v13, 0x3

    aput-object v0, v12, v13

    const/4 v13, 0x4

    aput-object v4, v12, v13

    const/4 v13, 0x5

    aput-object v8, v12, v13

    const/4 v13, 0x6

    aput-object v3, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_b

    .line 150
    if-eqz v9, :cond_0

    if-nez v2, :cond_1

    .line 151
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v1, "Description and start must be provided to create calendar event."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "Calendar Event Creation Failed.  Minimum parameters not provided"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 212
    :goto_9
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 72
    :try_start_b
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Unable to get calendar event description"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v1

    goto/16 :goto_0

    .line 81
    :catch_1
    move-exception v0

    .line 82
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Unable to get calendar event description"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v1

    goto/16 :goto_1

    .line 87
    :catch_2
    move-exception v0

    .line 88
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Unable to get calendar event transparency"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    goto/16 :goto_2

    .line 93
    :catch_3
    move-exception v0

    .line 94
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Unable to get calendar event reminder"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v1

    goto/16 :goto_3

    .line 99
    :catch_4
    move-exception v0

    .line 100
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Unable to get calendar event location"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v1

    goto/16 :goto_4

    .line 105
    :catch_5
    move-exception v0

    .line 106
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Unable to get calendar event status"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    goto/16 :goto_5

    .line 114
    :catch_6
    move-exception v0

    .line 115
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Unable to get calendar event recurrence"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    goto/16 :goto_6

    .line 122
    :catch_7
    move-exception v0

    .line 123
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Error parsing calendar event start date"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 127
    goto/16 :goto_7

    .line 124
    :catch_8
    move-exception v0

    .line 126
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Unable to get calendar event start date"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto/16 :goto_7

    .line 133
    :catch_9
    move-exception v0

    .line 134
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v10, "Error parsing calendar event end date"

    invoke-static {v0, v10}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 137
    goto/16 :goto_8

    .line 135
    :catch_a
    move-exception v0

    .line 136
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v10, "Unable to get calendar event end date"

    invoke-static {v0, v10}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b

    move-object v0, v1

    goto/16 :goto_8

    .line 143
    :catch_b
    move-exception v0

    .line 144
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v1, "Unable to parse calendar addEvent parameters"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "Calendar Event Creation Failed.  Invalid parameters"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto/16 :goto_9

    .line 158
    :cond_1
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.INSERT"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v10

    .line 162
    if-eqz v2, :cond_2

    .line 163
    const-string v11, "beginTime"

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 166
    :cond_2
    if-eqz v0, :cond_3

    .line 167
    const-string v2, "endTime"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-virtual {v10, v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 170
    :cond_3
    if-eqz v9, :cond_4

    .line 171
    const-string v0, "title"

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    :cond_4
    if-eqz v8, :cond_5

    .line 174
    const-string v0, "description"

    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    :cond_5
    if-eqz v5, :cond_6

    .line 177
    const-string v0, "eventLocation"

    invoke-virtual {v10, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    :cond_6
    if-eqz v3, :cond_7

    .line 180
    const-string v0, "rrule"

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    :cond_7
    if-eqz v4, :cond_8

    .line 186
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Calendar addEvent does not support status"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_8
    if-eqz v7, :cond_9

    .line 189
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Calendar addEvent does not support transparency"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_9
    if-eqz v6, :cond_a

    .line 192
    sget-object v0, Lcom/millennialmedia/android/BridgeMMCalendar;->a:Ljava/lang/String;

    const-string v2, "Calendar addEvent does not support reminder"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_a
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCalendar;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 197
    if-eqz v0, :cond_b

    .line 198
    invoke-static {v0, v10}, Lcom/millennialmedia/android/Utils$IntentUtils;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 200
    const-string v1, "PROPERTY_EXPANDING"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMCalendar;->b(Ljava/lang/String;)J

    move-result-wide v1

    .line 202
    const-string v3, "calendar"

    invoke-static {v0, v3, v1, v2}, Lcom/millennialmedia/android/MMSDK$Event;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 205
    const-string v0, "Calendar Event Created"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto/16 :goto_9

    :cond_b
    move-object v0, v1

    .line 209
    goto/16 :goto_9

    .line 212
    :cond_c
    const-string v0, "Not supported"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto/16 :goto_9
.end method
