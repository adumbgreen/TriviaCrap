.class public abstract Ltwitter4j/HttpResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Ltwitter4j/Logger;


# instance fields
.field protected final CONF:Ltwitter4j/HttpClientConfiguration;

.field protected is:Ljava/io/InputStream;

.field private json:Ltwitter4j/JSONObject;

.field private jsonArray:Ltwitter4j/JSONArray;

.field protected responseAsString:Ljava/lang/String;

.field protected statusCode:I

.field private streamConsumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Ltwitter4j/HttpResponseImpl;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z

    .line 120
    iput-object v1, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    .line 164
    iput-object v1, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    .line 35
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getHttpClientConfiguration()Ltwitter4j/HttpClientConfiguration;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/HttpResponse;->CONF:Ltwitter4j/HttpClientConfiguration;

    .line 36
    return-void
.end method

.method public constructor <init>(Ltwitter4j/HttpClientConfiguration;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z

    .line 120
    iput-object v1, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    .line 164
    iput-object v1, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    .line 39
    iput-object p1, p0, Ltwitter4j/HttpResponse;->CONF:Ltwitter4j/HttpClientConfiguration;

    .line 40
    return-void
.end method

.method private disconnectForcibly()V
    .locals 1

    .prologue
    .line 218
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public asJSONArray()Ltwitter4j/JSONArray;
    .locals 5

    .prologue
    .line 174
    iget-object v0, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    if-nez v0, :cond_1

    .line 175
    const/4 v1, 0x0

    .line 177
    :try_start_0
    iget-object v0, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 178
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asReader()Ljava/io/Reader;

    move-result-object v1

    .line 179
    new-instance v0, Ltwitter4j/JSONArray;

    new-instance v2, Ltwitter4j/JSONTokener;

    invoke-direct {v2, v1}, Ltwitter4j/JSONTokener;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v2}, Ltwitter4j/JSONArray;-><init>(Ltwitter4j/JSONTokener;)V

    iput-object v0, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    .line 183
    :goto_0
    iget-object v0, p0, Ltwitter4j/HttpResponse;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    sget-object v0, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    iget-object v2, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ltwitter4j/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_1
    if-eqz v1, :cond_0

    .line 198
    :try_start_1
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    :cond_0
    :goto_2
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    .line 205
    :cond_1
    iget-object v0, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    return-object v0

    .line 181
    :cond_2
    :try_start_2
    new-instance v0, Ltwitter4j/JSONArray;

    iget-object v2, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-direct {v0, v2}, Ltwitter4j/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ltwitter4j/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    :try_start_3
    sget-object v2, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    invoke-virtual {v2}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 191
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 198
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 202
    :cond_3
    :goto_3
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    throw v0

    .line 186
    :cond_4
    :try_start_5
    sget-object v2, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    iget-object v0, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v0}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    invoke-virtual {v0}, Ltwitter4j/JSONArray;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ltwitter4j/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    goto :goto_4

    .line 193
    :cond_6
    :try_start_6
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-virtual {v0}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 199
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method public asJSONObject()Ltwitter4j/JSONObject;
    .locals 5

    .prologue
    .line 130
    iget-object v0, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    if-nez v0, :cond_1

    .line 131
    const/4 v1, 0x0

    .line 133
    :try_start_0
    iget-object v0, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 134
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asReader()Ljava/io/Reader;

    move-result-object v1

    .line 135
    new-instance v0, Ltwitter4j/JSONObject;

    new-instance v2, Ltwitter4j/JSONTokener;

    invoke-direct {v2, v1}, Ltwitter4j/JSONTokener;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v2}, Ltwitter4j/JSONObject;-><init>(Ltwitter4j/JSONTokener;)V

    iput-object v0, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    .line 139
    :goto_0
    iget-object v0, p0, Ltwitter4j/HttpResponse;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    sget-object v0, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    iget-object v2, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ltwitter4j/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_1
    if-eqz v1, :cond_0

    .line 154
    :try_start_1
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :cond_0
    :goto_2
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    .line 161
    :cond_1
    iget-object v0, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    return-object v0

    .line 137
    :cond_2
    :try_start_2
    new-instance v0, Ltwitter4j/JSONObject;

    iget-object v2, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-direct {v0, v2}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ltwitter4j/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    :try_start_3
    iget-object v2, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 147
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-virtual {v0}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 154
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 158
    :cond_3
    :goto_3
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    throw v0

    .line 142
    :cond_4
    :try_start_5
    sget-object v2, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    iget-object v0, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v0}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    invoke-virtual {v0}, Ltwitter4j/JSONObject;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ltwitter4j/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    goto :goto_4

    .line 149
    :cond_6
    :try_start_6
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 155
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method public asReader()Ljava/io/Reader;
    .locals 4

    .prologue
    .line 210
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Ltwitter4j/HttpResponse;->is:Ljava/io/InputStream;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-object v0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Ltwitter4j/HttpResponse;->is:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public asStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 67
    iget-boolean v0, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stream has already been consumed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Ltwitter4j/HttpResponse;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 82
    const/4 v1, 0x0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v2

    .line 86
    if-nez v2, :cond_2

    .line 102
    if-eqz v2, :cond_0

    .line 104
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 110
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 114
    :cond_1
    :goto_1
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    .line 117
    :goto_2
    return-object v0

    .line 89
    :cond_2
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 90
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    :goto_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 99
    :catch_0
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 100
    :goto_4
    :try_start_5
    new-instance v3, Ltwitter4j/TwitterException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 102
    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    :goto_5
    if-eqz v2, :cond_3

    .line 104
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 108
    :cond_3
    :goto_6
    if-eqz v1, :cond_4

    .line 110
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 114
    :cond_4
    :goto_7
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    throw v0

    .line 95
    :cond_5
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    .line 96
    sget-object v0, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    iget-object v3, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 102
    if-eqz v2, :cond_6

    .line 104
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 108
    :cond_6
    :goto_8
    if-eqz v1, :cond_7

    .line 110
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 114
    :cond_7
    :goto_9
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    .line 117
    :cond_8
    iget-object v0, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    goto :goto_2

    .line 105
    :catch_1
    move-exception v2

    goto :goto_0

    .line 111
    :catch_2
    move-exception v1

    goto :goto_1

    .line 105
    :catch_3
    move-exception v0

    goto :goto_8

    .line 111
    :catch_4
    move-exception v0

    goto :goto_9

    .line 105
    :catch_5
    move-exception v2

    goto :goto_6

    .line 111
    :catch_6
    move-exception v1

    goto :goto_7

    .line 102
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 99
    :catch_7
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_4

    :catch_8
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_4
.end method

.method public abstract disconnect()V
.end method

.method public abstract getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getResponseHeaderFields()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Ltwitter4j/HttpResponse;->statusCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpResponse{statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/HttpResponse;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseAsString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpResponse;->is:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
