.class Lcom/mopub/nativeads/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/PositioningSource;


# static fields
.field static a:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/mopub/nativeads/af;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;

.field private f:Lcom/mopub/common/DownloadTask;

.field private g:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Lcom/mopub/common/DownloadTask$DownloadTaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const v0, 0x493e0

    sput v0, Lcom/mopub/nativeads/ae;->a:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    new-instance v0, Lcom/mopub/nativeads/af;

    invoke-direct {v0}, Lcom/mopub/nativeads/af;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/ae;-><init>(Landroid/content/Context;Lcom/mopub/nativeads/af;)V

    .line 84
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mopub/nativeads/af;)V
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Lcom/mopub/nativeads/ae$2;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/ae$2;-><init>(Lcom/mopub/nativeads/ae;)V

    iput-object v0, p0, Lcom/mopub/nativeads/ae;->j:Lcom/mopub/common/DownloadTask$DownloadTaskListener;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/ae;->b:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/mopub/nativeads/ae;->c:Lcom/mopub/nativeads/af;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/ae;->d:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/mopub/nativeads/ae$1;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/ae$1;-><init>(Lcom/mopub/nativeads/ae;)V

    iput-object v0, p0, Lcom/mopub/nativeads/ae;->e:Ljava/lang/Runnable;

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/ae;Lcom/mopub/common/DownloadTask;)Lcom/mopub/common/DownloadTask;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mopub/nativeads/ae;->f:Lcom/mopub/common/DownloadTask;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading positioning from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/ae;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/mopub/nativeads/ae;->c:Lcom/mopub/nativeads/af;

    iget-object v1, p0, Lcom/mopub/nativeads/ae;->j:Lcom/mopub/common/DownloadTask$DownloadTaskListener;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/af;->a(Lcom/mopub/common/DownloadTask$DownloadTaskListener;)Lcom/mopub/common/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/ae;->f:Lcom/mopub/common/DownloadTask;

    .line 124
    iget-object v0, p0, Lcom/mopub/nativeads/ae;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/nativeads/ae;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/common/HttpClient;->initializeHttpGet(Ljava/lang/String;Landroid/content/Context;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/mopub/nativeads/ae;->f:Lcom/mopub/common/DownloadTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method private a(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mopub/nativeads/ae;->g:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/PositioningSource$PositioningListener;->onLoad(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/nativeads/ae;->g:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/nativeads/ae;->h:I

    .line 168
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mopub/nativeads/ae;->a()V

    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/ae;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/ae;->a(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    return-void
.end method

.method private a(Lorg/json/JSONArray;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 215
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 216
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 217
    const-string v3, "section"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 218
    if-gez v3, :cond_0

    .line 219
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid section "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in JSON response"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    if-lez v3, :cond_1

    .line 215
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_1
    const-string v3, "position"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 226
    if-ltz v2, :cond_2

    const/high16 v3, 0x1

    if-le v2, v3, :cond_3

    .line 227
    :cond_2
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid position "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in JSON response"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_3
    invoke-virtual {p2, v2}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->addFixedPosition(I)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    goto :goto_1

    .line 231
    :cond_4
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 235
    const-string v0, "interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 236
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/high16 v1, 0x1

    if-le v0, v1, :cond_1

    .line 237
    :cond_0
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid interval "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in JSON response"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_1
    invoke-virtual {p2, v0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->enableRepeatingPositions(I)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    .line 240
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 171
    const-wide/high16 v0, 0x4000

    iget v2, p0, Lcom/mopub/nativeads/ae;->h:I

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 172
    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 173
    sget v1, Lcom/mopub/nativeads/ae;->a:I

    if-lt v0, v1, :cond_0

    .line 174
    const-string v0, "Error downloading positioning information"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/mopub/nativeads/ae;->g:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

    invoke-interface {v0}, Lcom/mopub/nativeads/PositioningSource$PositioningListener;->onFailed()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/nativeads/ae;->g:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget v1, p0, Lcom/mopub/nativeads/ae;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mopub/nativeads/ae;->h:I

    .line 181
    iget-object v1, p0, Lcom/mopub/nativeads/ae;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mopub/nativeads/ae;->e:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/mopub/nativeads/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mopub/nativeads/ae;->b()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
    .locals 3
    .parameter
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 186
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Empty response"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 192
    const-string v1, "error"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_2

    .line 194
    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_2
    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 199
    const-string v2, "repeating"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 200
    new-instance v2, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    invoke-direct {v2}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;-><init>()V

    .line 201
    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 202
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Must contain fixed or repeating positions"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_3
    if-eqz v1, :cond_4

    .line 205
    invoke-direct {p0, v1, v2}, Lcom/mopub/nativeads/ae;->a(Lorg/json/JSONArray;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    .line 207
    :cond_4
    if-eqz v0, :cond_5

    .line 208
    invoke-direct {p0, v0, v2}, Lcom/mopub/nativeads/ae;->a(Lorg/json/JSONObject;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    .line 210
    :cond_5
    return-object v2
.end method

.method public loadPositions(Ljava/lang/String;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mopub/nativeads/ae;->f:Lcom/mopub/common/DownloadTask;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/mopub/nativeads/ae;->f:Lcom/mopub/common/DownloadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/common/DownloadTask;->cancel(Z)Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/nativeads/ae;->f:Lcom/mopub/common/DownloadTask;

    .line 109
    :cond_0
    iget v0, p0, Lcom/mopub/nativeads/ae;->h:I

    if-lez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/mopub/nativeads/ae;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/nativeads/ae;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/nativeads/ae;->h:I

    .line 114
    :cond_1
    iput-object p2, p0, Lcom/mopub/nativeads/ae;->g:Lcom/mopub/nativeads/PositioningSource$PositioningListener;

    .line 115
    new-instance v0, Lcom/mopub/nativeads/ad;

    iget-object v1, p0, Lcom/mopub/nativeads/ae;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/ad;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ad;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/nativeads/ad;

    move-result-object v0

    const-string v1, "ads.mopub.com"

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ad;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/ae;->i:Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Lcom/mopub/nativeads/ae;->a()V

    .line 119
    return-void
.end method
