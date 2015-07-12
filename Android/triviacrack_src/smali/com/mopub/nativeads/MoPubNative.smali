.class public Lcom/mopub/nativeads/MoPubNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

.field static final b:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;


# instance fields
.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private e:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

.field private f:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/mopub/nativeads/MoPubNative$1;

    invoke-direct {v0}, Lcom/mopub/nativeads/MoPubNative$1;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/MoPubNative;->a:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    .line 51
    new-instance v0, Lcom/mopub/nativeads/MoPubNative$2;

    invoke-direct {v0}, Lcom/mopub/nativeads/MoPubNative$2;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/MoPubNative;->b:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    .line 91
    invoke-virtual {p0, p3}, Lcom/mopub/nativeads/MoPubNative;->setNativeEventListener(Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    if-nez p2, :cond_1

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AdUnitId may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    if-nez p3, :cond_2

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MoPubNativeNetworkListener may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2
    invoke-static {p1}, Lcom/mopub/common/util/ManifestUtils;->checkNativeActivitiesDeclared(Landroid/content/Context;)V

    .line 107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->c:Ljava/lang/ref/WeakReference;

    .line 108
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubNative;->d:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubNative;->e:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    .line 110
    sget-object v0, Lcom/mopub/nativeads/MoPubNative;->b:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->f:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    .line 113
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mopub/common/GpsHelper;->fetchAdvertisingInfoAsync(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->e:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/mopub/nativeads/MoPubNative;->a(Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V

    return-void
.end method

.method private a(Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNative;->a()Landroid/content/Context;

    move-result-object v0

    .line 168
    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 172
    :cond_0
    new-instance v1, Lcom/mopub/nativeads/aa;

    invoke-direct {v1, v0}, Lcom/mopub/nativeads/aa;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/aa;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/nativeads/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/aa;->a(Lcom/mopub/nativeads/RequestParameters;)Lcom/mopub/nativeads/aa;

    move-result-object v0

    .line 176
    if-eqz p2, :cond_1

    .line 177
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/aa;->a(I)Lcom/mopub/nativeads/aa;

    .line 180
    :cond_1
    const-string v1, "ads.mopub.com"

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/aa;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_2

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading ad from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 186
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MoPubNative;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 3
    .parameter

    .prologue
    .line 216
    new-instance v0, Lcom/mopub/common/DownloadTask;

    new-instance v1, Lcom/mopub/nativeads/MoPubNative$3;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubNative$3;-><init>(Lcom/mopub/nativeads/MoPubNative;)V

    invoke-direct {v0, v1}, Lcom/mopub/common/DownloadTask;-><init>(Lcom/mopub/common/DownloadTask$DownloadTaskListener;)V

    .line 261
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    const-string v1, "Failed to download json"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->e:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/mopub/nativeads/MoPubNative;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->f:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    return-object v0
.end method

.method static synthetic d(Lcom/mopub/nativeads/MoPubNative;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->g:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method a()Landroid/content/Context;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 272
    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNative;->destroy()V

    .line 274
    const-string v1, "Weak reference to Activity Context in MoPubNative became null. This instance of MoPubNative is destroyed and No more requests will be processed."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 277
    :cond_0
    return-object v0
.end method

.method a(Lcom/mopub/nativeads/r;)V
    .locals 2
    .parameter

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNative;->a()Landroid/content/Context;

    move-result-object v0

    .line 146
    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->e:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->CONNECTION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {v0, p1}, Lcom/mopub/common/GpsHelper;->fetchAdvertisingInfoAsync(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNative;->a()Landroid/content/Context;

    move-result-object v0

    .line 195
    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 199
    :cond_0
    if-nez p1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->e:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_REQUEST_URL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 206
    :cond_1
    :try_start_0
    invoke-static {p1, v0}, Lcom/mopub/common/HttpClient;->initializeHttpGet(Ljava/lang/String;Landroid/content/Context;)Lorg/apache/http/client/methods/HttpGet;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 212
    invoke-direct {p0, v0}, Lcom/mopub/nativeads/MoPubNative;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->e:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_REQUEST_URL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 123
    sget-object v0, Lcom/mopub/nativeads/MoPubNative;->a:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->e:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    .line 124
    sget-object v0, Lcom/mopub/nativeads/MoPubNative;->b:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->f:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    .line 125
    return-void
.end method

.method public makeRequest()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    check-cast v0, Lcom/mopub/nativeads/RequestParameters;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;)V

    .line 133
    return-void
.end method

.method public makeRequest(Lcom/mopub/nativeads/RequestParameters;)V
    .locals 1
    .parameter

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V

    .line 137
    return-void
.end method

.method public makeRequest(Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 141
    new-instance v0, Lcom/mopub/nativeads/r;

    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/nativeads/r;-><init>(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MoPubNative;->a(Lcom/mopub/nativeads/r;)V

    .line 142
    return-void
.end method

.method public setLocalExtras(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubNative;->g:Ljava/util/Map;

    .line 129
    return-void
.end method

.method public setNativeEventListener(Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    if-nez p1, :cond_0

    sget-object p1, Lcom/mopub/nativeads/MoPubNative;->b:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    :cond_0
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNative;->f:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    .line 119
    return-void
.end method
