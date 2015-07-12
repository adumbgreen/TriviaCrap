.class public final Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sBodyTagPattern:Ljava/util/regex/Pattern;

.field private static final sHandler:Landroid/os/Handler;

.field private static final sHeadTagPattern:Ljava/util/regex/Pattern;

.field private static final sHtmlTagPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mMraidViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;",
            ">;"
        }
    .end annotation
.end field

.field private mPlacementType:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

.field private mUrlLoading:Z

.field private mUseCustomClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->sHandler:Landroid/os/Handler;

    .line 40
    const-string v0, "(?mi)<html([>]|([\\s]+[^>]*[>])|(/>))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->sHtmlTagPattern:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "(?mi)<head([>]|([\\s]+[^>]*[>])|(/>))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->sHeadTagPattern:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "(?mi)<body([>]|([\\s]+[^>]*[>])|(/>))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->sBodyTagPattern:Ljava/util/regex/Pattern;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mUrlLoading:Z

    .line 46
    iput-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mUseCustomClose:Z

    .line 47
    sget-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;->INLINE:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mPlacementType:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    .line 52
    new-instance v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$1;

    invoke-direct {v0, p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$1;-><init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 88
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mMraidViewRef:Ljava/lang/ref/WeakReference;

    .line 89
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->registerReceiver()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->onExpandView()V

    return-void
.end method

.method private broadcastAction(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->getMraidView()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    move-result-object v1

    .line 155
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 156
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 157
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v3, "com.lifestreet.category.MRAIDActivity"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v3, "com.lifestreet.extra.VIEW_ID"

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->getViewId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 160
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    :cond_0
    return-void
.end method

.method private convertToHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head>\n<meta name=\"viewport\" content=\"initial-scale=1.0,user-scalable=no\"/></head>\n<body style=\"background-color: transparent; margin: 0; padding: 0; overflow: hidden;\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private evalJS(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->getMraidView()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0, p1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->evaluateJavaScriptString(Ljava/lang/String;)V

    .line 348
    :cond_0
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private getHtmlTagPosition(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 211
    const/4 v0, -0x1

    .line 213
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 218
    :cond_0
    return v0
.end method

.method private httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 316
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 318
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 319
    if-eqz p2, :cond_0

    .line 320
    const-string v3, "User-Agent"

    invoke-virtual {v1, v3, p2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    invoke-virtual {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 324
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    .line 325
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "Bad status"

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :catch_0
    move-exception v1

    .line 335
    :try_start_1
    sget-object v3, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Error loading content from URL"

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 340
    :goto_0
    return-object v0

    .line 328
    :cond_1
    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 329
    if-nez v1, :cond_2

    .line 330
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "Empty response body"

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 337
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0

    .line 333
    :cond_2
    :try_start_3
    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 337
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0
.end method

.method private insertMRAIDScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 222
    .line 223
    sget-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->sBodyTagPattern:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->getHtmlTagPosition(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v1

    .line 224
    sget-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->sHeadTagPattern:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->getHtmlTagPosition(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v0

    .line 226
    if-eq v0, v2, :cond_1

    .line 232
    :goto_0
    const/4 v1, 0x0

    .line 235
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mraid.js"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/lifestreet/android/lsmsdk/commons/Utils;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 240
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    if-eq v0, v2, :cond_0

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<script type=\"text/javascript\">\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n</script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 228
    :cond_1
    if-eq v1, v2, :cond_2

    move v0, v1

    .line 229
    goto :goto_0

    .line 236
    :catch_0
    move-exception v3

    .line 237
    sget-object v4, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while loading mraid script: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private onExpandView()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->showHideCloseButton()V

    .line 131
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->expandedState()V

    .line 132
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    const-string v1, "com.lifestreet.action.PRESENT_SCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "com.lifestreet.action.DISMISS_SCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "com.lifestreet.category.MRAIDActivity"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_0

    .line 113
    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public closeExpandedView()V
    .locals 1

    .prologue
    .line 126
    const-string v0, "com.lifestreet.action.CLOSE"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->broadcastAction(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public defaultState()V
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "defaultState"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 187
    const-string v0, "mraid._bridge.defaultState();"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->evalJS(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    return-void
.end method

.method public expandedState()V
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "expandedState"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 182
    const-string v0, "mraid._bridge.expandedState();"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->evalJS(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public getMraidView()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mMraidViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    return-object v0
.end method

.method public hiddenState()V
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "hiddenState"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 192
    const-string v0, "mraid._bridge.hiddenState();"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->evalJS(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public isInterstitial()Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mPlacementType:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUseCustomClose()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mUseCustomClose:Z

    return v0
.end method

.method public declared-synchronized loadURLAndExpand(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mUrlLoading:Z

    if-nez v0, :cond_0

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mUrlLoading:Z

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    sget-object v1, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->sHandler:Landroid/os/Handler;

    new-instance v2, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$2;

    invoke-direct {v2, p0, v0, p3, p4}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$2;-><init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mUrlLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_0
    monitor-exit p0

    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public prepareHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 169
    sget-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->sHtmlTagPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 170
    sget-object v1, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->sHeadTagPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    .line 171
    sget-object v2, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->sBodyTagPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 173
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 174
    invoke-direct {p0, p1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->convertToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    :cond_0
    invoke-direct {p0, p1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->insertMRAIDScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ready()V
    .locals 2

    .prologue
    .line 278
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "ready"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 279
    const-string v0, "mraid._bridge.ready();"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->evalJS(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 288
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid._bridge.reportError(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->evalJS(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public setDefaultExpandProperties()V
    .locals 4

    .prologue
    .line 250
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "setDefaultExpandProperties"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 252
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 255
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 256
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mraid.setExpandProperties({width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " });"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->evalJS(Ljava/lang/String;)V

    .line 261
    :cond_0
    return-void
.end method

.method public setPlacementType()V
    .locals 2

    .prologue
    .line 264
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "setPlacementType"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$3;->$SwitchMap$com$lifestreet$android$lsmsdk$mraid$MRAIDController$MRAIDPlacementType:[I

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mPlacementType:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 268
    :pswitch_0
    const-string v0, "mraid._bridge.placementTypeInline();"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->evalJS(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :pswitch_1
    const-string v0, "mraid._bridge.placementTypeInterstitial();"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->evalJS(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPlacementType(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mPlacementType:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$MRAIDPlacementType;

    .line 119
    return-void
.end method

.method public setUseCustomClose(Z)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->mUseCustomClose:Z

    .line 208
    return-void
.end method

.method public showHideCloseButton()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->isUseCustomClose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "com.lifestreet.action.HIDE_CLOSE_BUTTON"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->broadcastAction(Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v0, "com.lifestreet.action.SHOW_CLOSE_BUTTON"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->broadcastAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startActivityWithUrl(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 139
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    :cond_0
    return-void
.end method

.method public viewable()V
    .locals 2

    .prologue
    .line 283
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "viewable"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 284
    const-string v0, "mraid._bridge.viewable();"

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->evalJS(Ljava/lang/String;)V

    .line 285
    return-void
.end method
