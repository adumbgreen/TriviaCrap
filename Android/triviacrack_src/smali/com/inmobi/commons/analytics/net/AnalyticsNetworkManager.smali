.class public final Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MESSAGE_PING:I = 0x3e9

.field private static a:Landroid/os/Handler;

.field private static b:Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;

.field private static f:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;


# instance fields
.field private c:Lcom/inmobi/commons/analytics/net/AnalyticsPayloadBuilder;

.field private d:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/inmobi/commons/analytics/net/a;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/net/a;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->f:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->e:I

    .line 40
    new-instance v0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager$a;

    invoke-direct {v0, p0}, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager$a;-><init>(Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;)V

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager$a;->start()V

    .line 42
    const-string v0, "[InMobi]-[Analytics]-4.3.0"

    const-string v1, "NetworkManager-> Constructor "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter

    .prologue
    .line 30
    sput-object p0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->a:Landroid/os/Handler;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 182
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    const/4 v0, 0x0

    .line 184
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getLTVId()Ljava/lang/Long;

    move-result-object v3

    .line 186
    if-eqz p1, :cond_0

    .line 187
    const-string v4, "payload="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-static {p1}, Lcom/inmobi/commons/analytics/net/AnalyticsCommon;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_0
    if-eqz p2, :cond_1

    .line 191
    const-string v4, "&mk-siteid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_1
    const-string v4, "&c="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    if-eqz p3, :cond_3

    .line 196
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    :goto_0
    if-eqz v3, :cond_2

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 202
    const-string v4, "LTVID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_2
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getUID()Lcom/inmobi/commons/uid/UID;

    move-result-object v3

    invoke-virtual {v3, v6, v2, v0}, Lcom/inmobi/commons/uid/UID;->getUidMap(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 211
    const-string v3, "&u-id-map="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {v0}, Lcom/inmobi/commons/analytics/net/AnalyticsCommon;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v0, "&u-id-key="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v0, "&u-key-ver="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-static {}, Lcom/inmobi/commons/uid/UIDHelper;->getRSAKeyVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pr-SAND-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "4.3.0"

    invoke-static {v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getInMobiInternalVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "20140428"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v2, "&mk-version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->b()V

    return-void
.end method

.method private a(Lcom/inmobi/commons/analytics/net/AnalyticsPayload;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 88
    :try_start_0
    const-string v0, "[InMobi]-[Analytics]-4.3.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ping URL: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getEventUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/net/AnalyticsPayload;->getCompletePayload()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getMinEventsToCompress()I

    move-result v1

    .line 93
    const-string v3, "[InMobi]-[Analytics]-4.3.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Post body: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/net/AnalyticsPayload;->getPayloadSize()I

    move-result v3

    if-lt v3, v1, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v1, v3, :cond_5

    .line 96
    const-string v1, "[InMobi]-[Analytics]-4.3.0"

    const-string v3, "Compressing the payload"

    invoke-static {v1, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x1

    .line 99
    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->compressPayload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getMaxAppIdLength()I

    move-result v3

    .line 103
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 104
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 106
    :cond_0
    invoke-direct {p0, v0, p2, v1}, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string v1, "[InMobi]-[Analytics]-4.3.0"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Post body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v3, Lcom/inmobi/commons/analytics/net/AnalyticsCommon;

    invoke-direct {v3}, Lcom/inmobi/commons/analytics/net/AnalyticsCommon;-><init>()V

    .line 112
    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getEventUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/inmobi/commons/analytics/net/AnalyticsCommon;->setupConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 114
    invoke-virtual {v3, v4, v0}, Lcom/inmobi/commons/analytics/net/AnalyticsCommon;->postData(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 118
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 122
    :goto_1
    :try_start_2
    const-string v1, "[InMobi]-[Analytics]-4.3.0"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Http Status Code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->e:I

    .line 127
    invoke-static {}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->getInstance()Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/net/AnalyticsPayload;->getTableIdList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->deleteEvents(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 138
    :cond_1
    :goto_2
    const/4 v1, 0x0

    .line 140
    :try_start_3
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 150
    :goto_3
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    :goto_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 154
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 162
    :catch_0
    move-exception v0

    .line 163
    :try_start_5
    const-string v0, "[InMobi]-[Analytics]-4.3.0"

    const-string v1, "Unable to read from stream"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_2
    :goto_5
    return-void

    .line 119
    :catch_1
    move-exception v0

    .line 120
    const/16 v0, 0x191

    goto :goto_1

    .line 131
    :cond_3
    iget v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->e:I

    .line 132
    iget v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->e:I

    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getMaxRetryBeforeDiscard()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->e:I

    .line 134
    invoke-static {}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->getInstance()Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/net/AnalyticsPayload;->getTableIdList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->deleteEvents(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 166
    :catch_2
    move-exception v0

    .line 167
    const-string v1, "[InMobi]-[Analytics]-4.3.0"

    const-string v3, "Exception Pinging"

    invoke-static {v1, v3, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    iget v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->e:I

    .line 170
    iget v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->e:I

    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getMaxRetryBeforeDiscard()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 171
    iput v2, p0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->e:I

    .line 172
    invoke-static {}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->getInstance()Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/net/AnalyticsPayload;->getTableIdList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->deleteEvents(Ljava/util/List;)V

    goto :goto_5

    .line 142
    :catch_3
    move-exception v0

    .line 144
    :try_start_6
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 146
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_3

    .line 156
    :cond_4
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    const-string v5, "[InMobi]-[Analytics]-4.3.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ping Response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 161
    invoke-virtual {v3, v0}, Lcom/inmobi/commons/analytics/net/AnalyticsCommon;->closeResource(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_5

    :cond_5
    move v1, v2

    goto/16 :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 259
    const/4 v0, 0x1

    .line 260
    iget-object v2, p0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->d:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->d:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;

    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->c:Lcom/inmobi/commons/analytics/net/AnalyticsPayloadBuilder;

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->c:Lcom/inmobi/commons/analytics/net/AnalyticsPayloadBuilder;

    invoke-static {}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->getInstance()Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->getEvents()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/commons/analytics/net/AnalyticsPayloadBuilder;->getPayloadList(Ljava/util/List;Landroid/content/Context;)Lcom/inmobi/commons/analytics/net/AnalyticsPayload;

    move-result-object v2

    .line 265
    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/net/AnalyticsPayload;->getCompletePayload()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 266
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->a(Lcom/inmobi/commons/analytics/net/AnalyticsPayload;Ljava/lang/String;)V

    move v0, v1

    .line 271
    :cond_0
    if-nez v0, :cond_1

    .line 272
    sget-object v0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->a:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getTimeinterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 278
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-static {v1}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->setStartHandle(Z)V

    goto :goto_0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized startInstance()Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;
    .locals 5

    .prologue
    .line 52
    const-class v1, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->b:Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->b:Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;

    .line 56
    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->b:Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;

    iget-object v0, v0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->c:Lcom/inmobi/commons/analytics/net/AnalyticsPayloadBuilder;

    if-nez v0, :cond_1

    .line 57
    sget-object v0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->b:Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;

    new-instance v2, Lcom/inmobi/commons/analytics/net/AnalyticsPayloadBuilder;

    invoke-direct {v2}, Lcom/inmobi/commons/analytics/net/AnalyticsPayloadBuilder;-><init>()V

    iput-object v2, v0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->c:Lcom/inmobi/commons/analytics/net/AnalyticsPayloadBuilder;

    .line 59
    :cond_1
    sget-object v0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->b:Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;

    iget-object v0, v0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->d:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;

    if-nez v0, :cond_2

    .line 60
    sget-object v0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->b:Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;

    new-instance v2, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->f:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;

    invoke-direct {v2, v3, v4}, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;-><init>(Landroid/content/Context;Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;)V

    iput-object v2, v0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->d:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;

    .line 63
    :cond_2
    sget-object v0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->b:Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
