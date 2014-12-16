.class public Lcom/millennialmedia/android/BridgeMMSpeechkit;
.super Lcom/millennialmedia/android/MMJSObject;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/millennialmedia/android/BridgeMMMedia$Audio$PeriodicListener;


# instance fields
.field private a:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 24
    const-string v0, "startRecording"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->a:Ljava/lang/String;

    .line 25
    const-string v0, "endRecording"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->d:Ljava/lang/String;

    .line 26
    const-string v0, "cacheAudio"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->e:Ljava/lang/String;

    .line 27
    const-string v0, "getSessionId"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->f:Ljava/lang/String;

    .line 28
    const-string v0, "playAudio"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->g:Ljava/lang/String;

    .line 29
    const-string v0, "textToSpeech"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->h:Ljava/lang/String;

    .line 30
    const-string v0, "stopAudio"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->i:Ljava/lang/String;

    .line 31
    const-string v0, "sampleBackgroundAudioLevel"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->j:Ljava/lang/String;

    .line 32
    const-string v0, "releaseVoice"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->k:Ljava/lang/String;

    .line 33
    const-string v0, "addCustomVoiceWords"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->l:Ljava/lang/String;

    .line 34
    const-string v0, "deleteCustomVoiceWords"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->m:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private a(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
    .parameter
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
    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 257
    const-string v1, "path"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 258
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 259
    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v3

    .line 261
    if-nez v3, :cond_0

    move-object v0, v2

    .line 278
    :goto_0
    return-object v0

    .line 263
    :cond_0
    invoke-virtual {v3}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 264
    const-string v0, "Audio already playing."

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_1
    const-string v4, "http"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 267
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "repeat"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v1, v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Landroid/net/Uri;Z)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_2
    invoke-static {v0, v1}, Lcom/millennialmedia/android/AdCache;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 272
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "repeat"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v1, v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Landroid/net/Uri;Z)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 278
    goto :goto_0
.end method

.method static a(Lcom/millennialmedia/android/NVASpeechKit;)V
    .locals 1
    .parameter

    .prologue
    .line 511
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->b()Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->release()Z

    .line 512
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->b()Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->setSpeechKit(Lcom/millennialmedia/android/NVASpeechKit;)V

    .line 513
    return-void
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 397
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->b()Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->release()Z

    move-result v0

    return v0
.end method

.method static b()Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;
    .locals 1

    .prologue
    .line 501
    sget-object v0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SingletonHolder;->INSTANCE:Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    return-object v0
.end method

.method static c()Lcom/millennialmedia/android/NVASpeechKit;
    .locals 1

    .prologue
    .line 506
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->b()Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->getSpeechKit()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v0

    return-object v0
.end method

.method private e()Lcom/millennialmedia/android/NVASpeechKit;
    .locals 3

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 82
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->y()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->c()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 84
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->c()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 86
    :cond_0
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_2

    .line 88
    new-instance v1, Lcom/millennialmedia/android/NVASpeechKit;

    invoke-direct {v1, v0}, Lcom/millennialmedia/android/NVASpeechKit;-><init>(Lcom/millennialmedia/android/MMWebView;)V

    .line 89
    invoke-static {v1}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->a(Lcom/millennialmedia/android/NVASpeechKit;)V

    .line 90
    invoke-static {v2}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->j:Lcom/millennialmedia/android/HandShake$NuanceCredentials;

    .line 92
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/millennialmedia/android/NVASpeechKit;->initialize(Lcom/millennialmedia/android/HandShake$NuanceCredentials;Landroid/content/Context;)Z

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private f()Lcom/millennialmedia/android/NVASpeechKit;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 104
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->c()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 43
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->startRecording(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 69
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->endRecording(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->cacheAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->f:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getSessionId(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_4
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->g:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 54
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->playAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_5
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->h:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 56
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->textToSpeech(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_6
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->i:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 58
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->stopAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_7
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->j:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 60
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->sampleBackgroundAudioLevel(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_8
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->k:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 62
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->releaseVoice(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_9
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->l:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 64
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->addCustomVoiceWords(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_a
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->m:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->deleteCustomVoiceWords(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 306
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 309
    :cond_0
    return-void
.end method

.method public addCustomVoiceWords(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .parameter
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
    .line 409
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->e()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v1

    .line 410
    if-nez v1, :cond_0

    .line 411
    const-string v0, "Unable to create speech kit"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 422
    :goto_0
    return-object v0

    .line 414
    :cond_0
    const-string v0, "words"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 415
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 416
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 417
    sget-object v3, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;->Add:Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    invoke-virtual {v1, v3, v2}, Lcom/millennialmedia/android/NVASpeechKit;->updateCustomWords(Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;[Ljava/lang/String;)V

    .line 419
    const-string v1, "javascript:MMJS.sdk.customVoiceWordsAdded()"

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->a(Ljava/lang/String;)V

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 422
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cacheAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .parameter
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
    .line 166
    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    const-string v0, "Invalid url"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->b:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 173
    if-eqz v1, :cond_1

    .line 174
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v0, v2, v1}, Lcom/millennialmedia/android/AdCache;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const-string v1, "javascript:MMJS.sdk.audioCached()"

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->a(Ljava/lang/String;)V

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully cached audio at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 185
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to cache audio at"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public deleteCustomVoiceWords(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .parameter
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
    .line 434
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->e()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v1

    .line 435
    if-nez v1, :cond_0

    .line 436
    const-string v0, "Unable to create speech kit"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 448
    :goto_0
    return-object v0

    .line 440
    :cond_0
    const-string v0, "words"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 441
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 442
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 443
    sget-object v3, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;->Remove:Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    invoke-virtual {v1, v3, v2}, Lcom/millennialmedia/android/NVASpeechKit;->updateCustomWords(Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;[Ljava/lang/String;)V

    .line 445
    const-string v1, "javascript:MMJS.sdk.customVoiceWordsDeleted()"

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->a(Ljava/lang/String;)V

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 448
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endRecording(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .parameter
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
    .line 147
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->f()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v1

    .line 148
    if-nez v1, :cond_0

    .line 149
    const-string v0, "Unable to get speech kit"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 151
    :cond_0
    monitor-enter v1

    .line 152
    :try_start_0
    invoke-virtual {v1}, Lcom/millennialmedia/android/NVASpeechKit;->endRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->a()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    const-string v0, "Failed in speechKit"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public getSessionId(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .parameter
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
    .line 195
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->f()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v0

    .line 196
    if-nez v0, :cond_0

    .line 197
    const-string v0, "No SpeechKit session open."

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    .line 199
    :cond_0
    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->f()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_1
    const-string v0, "No SpeechKit session open."

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 284
    const-string v0, "javascript:MMJS.sdk.audioCompleted()"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->a(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 287
    if-eqz v0, :cond_0

    .line 288
    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->b(Landroid/media/MediaPlayer$OnCompletionListener;)Z

    .line 291
    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->b(Lcom/millennialmedia/android/BridgeMMMedia$Audio$PeriodicListener;)Z

    .line 294
    :cond_0
    return-void
.end method

.method public onUpdate(I)V
    .locals 2
    .parameter

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:MMJS.sdk.audioPositionChange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->a(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public playAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .parameter
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
    .line 215
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->e()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v0

    .line 216
    if-nez v0, :cond_1

    .line 217
    const-string v0, "Unable to create speech kit"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 245
    :cond_0
    :goto_0
    return-object v0

    .line 221
    :cond_1
    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    const-string v0, "Invalid url"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_2
    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 229
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 230
    if-eqz v1, :cond_4

    .line 231
    invoke-static {v1}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_3

    .line 233
    invoke-virtual {v1, p0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Landroid/media/MediaPlayer$OnCompletionListener;)Z

    .line 234
    invoke-virtual {v1, p0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Lcom/millennialmedia/android/BridgeMMMedia$Audio$PeriodicListener;)Z

    .line 236
    :cond_3
    const-string v1, "path"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->a(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/millennialmedia/android/MMJSResponse;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 240
    const-string v1, "javascript:MMJS.sdk.audioStarted()"

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseVoice(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .parameter
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
    .line 388
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const-string v0, "Unable to get speech kit"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 392
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "released speechkit"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public sampleBackgroundAudioLevel(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .parameter
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
    .line 371
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->e()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v0

    .line 372
    if-nez v0, :cond_0

    .line 373
    const-string v0, "Unable to create speech kit"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 378
    :goto_0
    return-object v0

    .line 377
    :cond_0
    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->startSampleRecording()V

    .line 378
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startRecording(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .parameter
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
    .line 124
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->e()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v1

    .line 125
    if-nez v1, :cond_0

    .line 126
    const-string v0, "Unable to create speech kit"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 130
    :cond_0
    const-string v0, "language"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    const-string v0, "en_GB"

    .line 135
    :cond_1
    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/NVASpeechKit;->startRecording(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->a()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_2
    const-string v0, "Failed in speechKit"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public stopAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .parameter
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
    .line 345
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->f()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v0

    .line 346
    if-nez v0, :cond_0

    .line 347
    const-string v0, "Unable to get speech kit"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 359
    :goto_0
    return-object v0

    .line 350
    :cond_0
    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->stopActions()V

    .line 352
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->b()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 359
    :cond_1
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->a()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public textToSpeech(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .parameter
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
    .line 320
    const-string v0, "BridgeMMSpeechkit"

    const-string v1, "@@-Calling textToSpeech"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->e()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v2

    .line 322
    if-nez v2, :cond_0

    .line 323
    const-string v0, "Unable to create speech kit"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 335
    :goto_0
    return-object v0

    .line 327
    :cond_0
    const-string v0, "language"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    const-string v1, "text"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    const-string v0, "en_GB"

    .line 332
    :cond_1
    invoke-virtual {v2}, Lcom/millennialmedia/android/NVASpeechKit;->stopActions()V

    .line 333
    invoke-virtual {v2, v1, v0}, Lcom/millennialmedia/android/NVASpeechKit;->textToSpeech(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->a()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 335
    :cond_2
    const-string v0, "Failed in speechKit"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method
