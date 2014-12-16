.class Lcom/amazon/device/ads/AppEventRegistrationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final APP_EVENTS_FILE:Ljava/lang/String; = "AppEventsJsonFile"

.field protected static final APP_EVENTS_FILE_MAX_SIZE:J = 0x100000L

.field protected static final APP_EVENT_NAME_KEY:Ljava/lang/String; = "evtName"

.field protected static final APP_EVENT_TIMESTAMP_KEY:Ljava/lang/String; = "ts"

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static instance:Lcom/amazon/device/ads/AppEventRegistrationHandler;


# instance fields
.field protected final appEventsFileLock:Ljava/lang/Object;

.field protected final eventsSent:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final newEventsToSave:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;

    invoke-direct {v0}, Lcom/amazon/device/ads/AppEventRegistrationHandler;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->instance:Lcom/amazon/device/ads/AppEventRegistrationHandler;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->appEventsFileLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->eventsSent:Ljava/util/Set;

    .line 62
    return-void
.end method

.method public static getInstance()Lcom/amazon/device/ads/AppEventRegistrationHandler;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->instance:Lcom/amazon/device/ads/AppEventRegistrationHandler;

    return-object v0
.end method


# virtual methods
.method public addEventToAppEventsCacheFile(Lcom/amazon/device/ads/AppEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    new-instance v0, Lcom/amazon/device/ads/AppEventRegistrationHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AppEventRegistrationHandler$1;-><init>(Lcom/amazon/device/ads/AppEventRegistrationHandler;Lcom/amazon/device/ads/AppEvent;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->executeRunnable(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method protected appendAppEventToFile(Lcom/amazon/device/ads/AppEvent;)V
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 90
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/device/ads/IInternalAdRegistration;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 91
    if-nez v2, :cond_0

    .line 155
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 98
    :try_start_0
    const-string v0, "evtName"

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v0, "ts"

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 100
    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->getPropertyEntries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 107
    sget-object v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Internal error while persisting the application event %s."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v4, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->appEventsFileLock:Ljava/lang/Object;

    monitor-enter v4

    .line 119
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "AppEventsJsonFile"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v1, v5

    const-wide/32 v5, 0x100000

    cmp-long v1, v1, v5

    if-lez v1, :cond_2

    .line 123
    sget-object v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t write the application event %s to the cache file. Maximum size limit reached."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    monitor-exit v4

    goto/16 :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 128
    :cond_2
    const/4 v1, 0x0

    .line 131
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v2, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 132
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 133
    :try_start_3
    invoke-virtual {v0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 134
    sget-object v1, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Added the application event %s to the cache file."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 144
    if-eqz v0, :cond_3

    .line 146
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 154
    :cond_3
    :goto_2
    :try_start_5
    monitor-exit v4

    goto/16 :goto_0

    .line 149
    :catch_1
    move-exception v0

    .line 151
    sget-object v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Problem while closing application events file."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 136
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 138
    :goto_3
    :try_start_6
    sget-object v1, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t write the application event %s to the file."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppEvent;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 144
    if-eqz v0, :cond_3

    .line 146
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 149
    :catch_3
    move-exception v0

    .line 151
    :try_start_8
    sget-object v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Problem while closing application events file."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 142
    :catchall_1
    move-exception v0

    .line 144
    :goto_4
    if-eqz v1, :cond_4

    .line 146
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 152
    :cond_4
    :goto_5
    :try_start_a
    throw v0

    .line 149
    :catch_4
    move-exception v1

    .line 151
    sget-object v1, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Problem while closing application events file."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 142
    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    .line 136
    :catch_5
    move-exception v1

    goto :goto_3
.end method

.method public getAppEventsJSONArray()Lorg/json/JSONArray;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/device/ads/IInternalAdRegistration;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 164
    if-nez v1, :cond_0

    .line 236
    :goto_0
    return-object v0

    .line 169
    :cond_0
    iget-object v4, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->appEventsFileLock:Ljava/lang/Object;

    monitor-enter v4

    .line 171
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "AppEventsJsonFile"

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    monitor-exit v4

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 182
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 183
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-object v3, v0

    .line 185
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 187
    invoke-static {v5}, Lcom/amazon/device/ads/JSONUtils;->getJSONObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 190
    if-nez v5, :cond_4

    .line 192
    invoke-virtual {p0}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->onAppEventsRegistered()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 215
    :goto_2
    if-eqz v2, :cond_2

    .line 217
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 226
    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 228
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 236
    :cond_3
    :goto_4
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 196
    :cond_4
    if-nez v3, :cond_5

    .line 198
    :try_start_7
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 200
    :cond_5
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 201
    iget-object v6, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->eventsSent:Ljava/util/Set;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 204
    :catch_0
    move-exception v3

    .line 208
    :goto_5
    :try_start_8
    sget-object v3, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Problem while reading the application events file."

    invoke-static {v3, v5}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 215
    if-eqz v2, :cond_6

    .line 217
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 226
    :cond_6
    :goto_6
    if-eqz v1, :cond_3

    .line 228
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    .line 231
    :catch_1
    move-exception v1

    .line 233
    :try_start_b
    sget-object v1, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Problem while closing the application events file."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 220
    :catch_2
    move-exception v2

    .line 222
    sget-object v2, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Problem while closing the application events file."

    invoke-static {v2, v3}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 231
    :catch_3
    move-exception v1

    .line 233
    sget-object v1, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Problem while closing the application events file."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 220
    :catch_4
    move-exception v2

    .line 222
    sget-object v2, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Problem while closing the application events file."

    invoke-static {v2, v3}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    .line 213
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 215
    :goto_7
    if-eqz v2, :cond_7

    .line 217
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 226
    :cond_7
    :goto_8
    if-eqz v1, :cond_8

    .line 228
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 234
    :cond_8
    :goto_9
    :try_start_e
    throw v0

    .line 220
    :catch_5
    move-exception v2

    .line 222
    sget-object v2, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Problem while closing the application events file."

    invoke-static {v2, v3}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 231
    :catch_6
    move-exception v1

    .line 233
    sget-object v1, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Problem while closing the application events file."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_9

    .line 213
    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_7

    .line 204
    :catch_7
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto :goto_5

    :catch_8
    move-exception v1

    move-object v1, v0

    goto :goto_5

    :cond_9
    move-object v0, v3

    goto/16 :goto_2
.end method

.method public onAppEventsRegistered()V
    .locals 8

    .prologue
    .line 245
    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/device/ads/IInternalAdRegistration;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 246
    if-nez v1, :cond_0

    .line 306
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->appEventsFileLock:Ljava/lang/Object;

    monitor-enter v2

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    iget-object v3, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->eventsSent:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 258
    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    iget-object v4, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    :try_start_1
    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 305
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 267
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v4, "AppEventsJsonFile"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 270
    const/4 v1, 0x0

    .line 273
    :try_start_5
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 274
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 275
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->newEventsToSave:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 278
    iget-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->eventsSent:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 288
    if-eqz v0, :cond_2

    .line 290
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 305
    :cond_2
    :goto_2
    :try_start_8
    monitor-exit v2

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 295
    sget-object v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Problem while closing application events file."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 280
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 282
    :goto_3
    :try_start_9
    sget-object v1, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Couldn\'t write the application event(s) to the file."

    invoke-static {v1, v3}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 288
    if-eqz v0, :cond_2

    .line 290
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    .line 293
    :catch_2
    move-exception v0

    .line 295
    :try_start_b
    sget-object v0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Problem while closing application events file."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    .line 286
    :catchall_2
    move-exception v0

    .line 288
    :goto_4
    if-eqz v1, :cond_3

    .line 290
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 296
    :cond_3
    :goto_5
    :try_start_d
    throw v0

    .line 293
    :catch_3
    move-exception v1

    .line 295
    sget-object v1, Lcom/amazon/device/ads/AppEventRegistrationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Problem while closing application events file."

    invoke-static {v1, v3}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 302
    :cond_4
    const-string v0, "AppEventsJsonFile"

    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 303
    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler;->eventsSent:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_2

    .line 286
    :catchall_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    .line 280
    :catch_4
    move-exception v1

    goto :goto_3
.end method
