.class Lcom/millennialmedia/android/MMCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMWebView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/millennialmedia/android/BridgeMMBanner;

    invoke-direct {v0}, Lcom/millennialmedia/android/BridgeMMBanner;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Lcom/millennialmedia/android/BridgeMMBanner;)V

    .line 33
    new-instance v0, Lcom/millennialmedia/android/BridgeMMCachedVideo;

    invoke-direct {v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Lcom/millennialmedia/android/BridgeMMCachedVideo;)V

    .line 34
    new-instance v0, Lcom/millennialmedia/android/BridgeMMCalendar;

    invoke-direct {v0}, Lcom/millennialmedia/android/BridgeMMCalendar;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Lcom/millennialmedia/android/BridgeMMCalendar;)V

    .line 35
    new-instance v0, Lcom/millennialmedia/android/BridgeMMDevice;

    invoke-direct {v0}, Lcom/millennialmedia/android/BridgeMMDevice;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Lcom/millennialmedia/android/BridgeMMDevice;)V

    .line 36
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo;

    invoke-direct {v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V

    .line 37
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInterstitial;

    invoke-direct {v0}, Lcom/millennialmedia/android/BridgeMMInterstitial;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Lcom/millennialmedia/android/BridgeMMInterstitial;)V

    .line 38
    new-instance v0, Lcom/millennialmedia/android/BridgeMMMedia;

    invoke-direct {v0}, Lcom/millennialmedia/android/BridgeMMMedia;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Lcom/millennialmedia/android/BridgeMMMedia;)V

    .line 39
    new-instance v0, Lcom/millennialmedia/android/BridgeMMNotification;

    invoke-direct {v0}, Lcom/millennialmedia/android/BridgeMMNotification;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Lcom/millennialmedia/android/BridgeMMNotification;)V

    .line 40
    new-instance v0, Lcom/millennialmedia/android/BridgeMMSpeechkit;

    invoke-direct {v0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Lcom/millennialmedia/android/BridgeMMSpeechkit;)V

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/millennialmedia/android/MMWebView;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMCommand;->a:Ljava/lang/ref/WeakReference;

    .line 68
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 70
    array-length v2, v0

    if-eq v2, v9, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/millennialmedia/android/MMCommand;->b:Ljava/lang/String;

    .line 74
    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/millennialmedia/android/MMCommand;->c:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/MMCommand;->e:Ljava/util/Map;

    .line 78
    const/16 v0, 0x3f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 81
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 82
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 83
    array-length v5, v4

    if-lt v5, v9, :cond_2

    .line 84
    iget-object v5, p0, Lcom/millennialmedia/android/MMCommand;->e:Ljava/util/Map;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "callback"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/millennialmedia/android/MMCommand;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v2, "MMCommand"

    const-string v3, "Exception while executing javascript call %s "

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSObject;
    .locals 2
    .parameter

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    if-eqz p1, :cond_0

    .line 188
    const-string v1, "MMBanner"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->a()Lcom/millennialmedia/android/BridgeMMBanner;

    move-result-object v0

    .line 209
    :cond_0
    :goto_0
    return-object v0

    .line 190
    :cond_1
    const-string v1, "MMCachedVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->b()Lcom/millennialmedia/android/BridgeMMCachedVideo;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_2
    const-string v1, "MMCalendar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->c()Lcom/millennialmedia/android/BridgeMMCalendar;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_3
    const-string v1, "MMDevice"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->d()Lcom/millennialmedia/android/BridgeMMDevice;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_4
    const-string v1, "MMInlineVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 197
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->e()Lcom/millennialmedia/android/BridgeMMInlineVideo;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_5
    const-string v1, "MMInterstitial"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 199
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->f()Lcom/millennialmedia/android/BridgeMMInterstitial;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_6
    const-string v1, "MMMedia"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 201
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->g()Lcom/millennialmedia/android/BridgeMMMedia;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_7
    const-string v1, "MMNotification"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 203
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->h()Lcom/millennialmedia/android/BridgeMMNotification;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_8
    const-string v1, "MMSpeechkit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->i()Lcom/millennialmedia/android/BridgeMMSpeechkit;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/millennialmedia/android/MMCommand;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->b:Ljava/lang/String;

    .line 181
    const-string v1, "Bridge"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/millennialmedia/android/MMCommand;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "resize"

    iget-object v1, p0, Lcom/millennialmedia/android/MMCommand;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 110
    if-eqz v0, :cond_a

    .line 111
    iget-object v2, p0, Lcom/millennialmedia/android/MMCommand;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/millennialmedia/android/MMCommand;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSObject;

    move-result-object v2

    .line 112
    if-eqz v2, :cond_4

    .line 113
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMJSObject;->c(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v2, v0}, Lcom/millennialmedia/android/MMJSObject;->a(Lcom/millennialmedia/android/MMWebView;)V

    .line 115
    iget-object v3, p0, Lcom/millennialmedia/android/MMCommand;->e:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/millennialmedia/android/MMWebView;->a(Ljava/util/Map;)V

    .line 121
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/millennialmedia/android/MMCommand;->e:Ljava/util/Map;

    invoke-virtual {v2, v0, v3}, Lcom/millennialmedia/android/MMJSObject;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 143
    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 145
    if-eqz v0, :cond_3

    .line 146
    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/millennialmedia/android/MMCommand;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 150
    :cond_0
    iget-object v2, v1, Lcom/millennialmedia/android/MMJSResponse;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/millennialmedia/android/MMCommand;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/millennialmedia/android/MMJSResponse;->b:Ljava/lang/String;

    .line 152
    :cond_1
    iget-object v2, v1, Lcom/millennialmedia/android/MMJSResponse;->a:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 153
    invoke-direct {p0}, Lcom/millennialmedia/android/MMCommand;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/android/MMJSResponse;->a:Ljava/lang/String;

    .line 158
    :cond_2
    new-instance v2, Lcom/millennialmedia/android/MMCommand$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/millennialmedia/android/MMCommand$1;-><init>(Lcom/millennialmedia/android/MMCommand;Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMJSResponse;)V

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK;->a(Ljava/lang/Runnable;)V

    .line 176
    :cond_3
    return-void

    .line 124
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/millennialmedia/android/MMCommand;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not exist."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    :try_start_3
    const-string v2, "MMCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while executing javascript call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/MMCommand;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " received."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto/16 :goto_0

    .line 139
    :cond_5
    const-string v0, "The service or service method was not defined."

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto/16 :goto_1

    .line 143
    :catchall_0
    move-exception v0

    move-object v2, v0

    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 144
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 145
    if-eqz v0, :cond_9

    .line 146
    if-nez v1, :cond_6

    .line 147
    iget-object v1, p0, Lcom/millennialmedia/android/MMCommand;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 150
    :cond_6
    iget-object v3, v1, Lcom/millennialmedia/android/MMJSResponse;->b:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 151
    iget-object v3, p0, Lcom/millennialmedia/android/MMCommand;->c:Ljava/lang/String;

    iput-object v3, v1, Lcom/millennialmedia/android/MMJSResponse;->b:Ljava/lang/String;

    .line 152
    :cond_7
    iget-object v3, v1, Lcom/millennialmedia/android/MMJSResponse;->a:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 153
    invoke-direct {p0}, Lcom/millennialmedia/android/MMCommand;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/millennialmedia/android/MMJSResponse;->a:Ljava/lang/String;

    .line 158
    :cond_8
    new-instance v3, Lcom/millennialmedia/android/MMCommand$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/millennialmedia/android/MMCommand$1;-><init>(Lcom/millennialmedia/android/MMCommand;Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMJSResponse;)V

    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK;->a(Ljava/lang/Runnable;)V

    .line 143
    :cond_9
    throw v2

    :cond_a
    move-object v0, v1

    goto/16 :goto_0
.end method
