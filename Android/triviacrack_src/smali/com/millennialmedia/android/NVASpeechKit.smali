.class public Lcom/millennialmedia/android/NVASpeechKit;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static s:Ljava/lang/String;


# instance fields
.field public _results:[Lcom/millennialmedia/android/NVASpeechKit$Result;

.field a:Lcom/millennialmedia/android/HandShake$NuanceCredentials;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMWebView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/nuance/nmdp/speechkit/Vocalizer;

.field private d:Lcom/nuance/nmdp/speechkit/SpeechKit;

.field private e:Landroid/os/Handler;

.field private f:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

.field private g:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

.field private h:Lcom/nuance/nmdp/speechkit/Recognizer;

.field private i:Lcom/millennialmedia/android/NVASpeechKit$State;

.field private j:Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;

.field private k:Lcom/nuance/nmdp/speechkit/DataUploadCommand;

.field private l:Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/Runnable;

.field private o:Ljava/lang/Runnable;

.field private p:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

.field private q:Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

.field private r:Lcom/millennialmedia/android/NVASpeechKit$Listener;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 905
    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/android/NVASpeechKit;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/millennialmedia/android/MMWebView;)V
    .locals 1
    .parameter

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->_results:[Lcom/millennialmedia/android/NVASpeechKit$Result;

    .line 197
    new-instance v0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;

    invoke-direct {v0}, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->j:Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;

    .line 206
    new-instance v0, Lcom/millennialmedia/android/NVASpeechKit$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/NVASpeechKit$1;-><init>(Lcom/millennialmedia/android/NVASpeechKit;)V

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->n:Ljava/lang/Runnable;

    .line 218
    new-instance v0, Lcom/millennialmedia/android/NVASpeechKit$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/NVASpeechKit$2;-><init>(Lcom/millennialmedia/android/NVASpeechKit;)V

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->o:Ljava/lang/Runnable;

    .line 245
    new-instance v0, Lcom/millennialmedia/android/NVASpeechKit$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/NVASpeechKit$3;-><init>(Lcom/millennialmedia/android/NVASpeechKit;)V

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->p:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    .line 267
    new-instance v0, Lcom/millennialmedia/android/NVASpeechKit$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/NVASpeechKit$4;-><init>(Lcom/millennialmedia/android/NVASpeechKit;)V

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->q:Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

    .line 353
    new-instance v0, Lcom/millennialmedia/android/NVASpeechKit$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/NVASpeechKit$5;-><init>(Lcom/millennialmedia/android/NVASpeechKit;)V

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->r:Lcom/millennialmedia/android/NVASpeechKit$Listener;

    .line 312
    if-eqz p1, :cond_0

    .line 313
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->b:Ljava/lang/ref/WeakReference;

    .line 314
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/NVASpeechKit;->a(Landroid/content/Context;)V

    .line 316
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/NVASpeechKit$State;->READY:Lcom/millennialmedia/android/NVASpeechKit$State;

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->i:Lcom/millennialmedia/android/NVASpeechKit$State;

    .line 317
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/NVASpeechKit;Lcom/nuance/nmdp/speechkit/DataUploadCommand;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/millennialmedia/android/NVASpeechKit;->k:Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    return-object p1
.end method

.method static synthetic a(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->h:Lcom/nuance/nmdp/speechkit/Recognizer;

    return-object v0
.end method

.method static synthetic a(Lcom/millennialmedia/android/NVASpeechKit;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/millennialmedia/android/NVASpeechKit;->m:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/nuance/nmdp/speechkit/SpeechError;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 826
    if-nez p1, :cond_0

    .line 827
    const-string v0, "No Error given"

    .line 828
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Speech Kit Error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " detail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " suggestions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/SpeechError;->getSuggestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/millennialmedia/android/NVASpeechKit;[Lcom/millennialmedia/android/NVASpeechKit$Result;)Lorg/json/JSONArray;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/NVASpeechKit;->a([Lcom/millennialmedia/android/NVASpeechKit$Result;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private a([Lcom/millennialmedia/android/NVASpeechKit$Result;)Lorg/json/JSONArray;
    .locals 6
    .parameter

    .prologue
    .line 337
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 339
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 340
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 342
    :try_start_0
    const-string v3, "score"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v5}, Lcom/millennialmedia/android/NVASpeechKit$Result;->getResultScore()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    const-string v3, "result"

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/millennialmedia/android/NVASpeechKit$Result;->getResultString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    const-string v1, "NVASpeechKit"

    const-string v2, "JSON creation error."

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    const/4 v0, 0x0

    .line 350
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 947
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->t:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 948
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->t:Ljava/lang/String;

    .line 950
    :cond_0
    return-void
.end method

.method private declared-synchronized a(Lcom/millennialmedia/android/NVASpeechKit$State;)V
    .locals 3
    .parameter

    .prologue
    .line 1010
    monitor-enter p0

    :try_start_0
    const-string v0, "NVASpeechKit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recording results returned. state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->i:Lcom/millennialmedia/android/NVASpeechKit$State;

    .line 1012
    iput-object p1, p0, Lcom/millennialmedia/android/NVASpeechKit;->i:Lcom/millennialmedia/android/NVASpeechKit$State;

    .line 1013
    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit;->r:Lcom/millennialmedia/android/NVASpeechKit$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit;->i:Lcom/millennialmedia/android/NVASpeechKit$State;

    if-eq v1, v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->r:Lcom/millennialmedia/android/NVASpeechKit$Listener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/android/NVASpeechKit$Listener;->onStateChange(Lcom/millennialmedia/android/NVASpeechKit$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    :cond_0
    monitor-exit p0

    return-void

    .line 1010
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/millennialmedia/android/NVASpeechKit;Lcom/millennialmedia/android/NVASpeechKit$State;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/NVASpeechKit;->a(Lcom/millennialmedia/android/NVASpeechKit$State;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/NVASpeechKit;Lcom/nuance/nmdp/speechkit/Recognizer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/NVASpeechKit;->a(Lcom/nuance/nmdp/speechkit/Recognizer;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/NVASpeechKit;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/NVASpeechKit;->b(Lcom/nuance/nmdp/speechkit/SpeechError;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/NVASpeechKit;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/NVASpeechKit;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/nuance/nmdp/speechkit/Recognizer;)V
    .locals 4
    .parameter

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1004
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit;->o:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1006
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 789
    const-string v0, "NVASpeechKit"

    const-string v1, "processResults called."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/millennialmedia/android/NVASpeechKit$Result;

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->_results:[Lcom/millennialmedia/android/NVASpeechKit$Result;

    .line 791
    const/4 v0, 0x0

    .line 792
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;

    .line 793
    iget-object v4, p0, Lcom/millennialmedia/android/NVASpeechKit;->_results:[Lcom/millennialmedia/android/NVASpeechKit$Result;

    add-int/lit8 v2, v1, 0x1

    new-instance v5, Lcom/millennialmedia/android/NVASpeechKit$Result;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;->getConfidenceScore()D

    move-result-wide v7

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/millennialmedia/android/NVASpeechKit$Result;-><init>(Lcom/millennialmedia/android/NVASpeechKit;Ljava/lang/String;D)V

    aput-object v5, v4, v1

    move v1, v2

    goto :goto_0

    .line 795
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->j:Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;

    return-object v0
.end method

.method static synthetic b(Lcom/millennialmedia/android/NVASpeechKit;Lcom/nuance/nmdp/speechkit/Recognizer;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/millennialmedia/android/NVASpeechKit;->h:Lcom/nuance/nmdp/speechkit/Recognizer;

    return-object p1
.end method

.method private b(Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .locals 1
    .parameter

    .prologue
    .line 954
    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 977
    :pswitch_0
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->r:Lcom/millennialmedia/android/NVASpeechKit$Listener;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->r:Lcom/millennialmedia/android/NVASpeechKit$Listener;

    invoke-interface {v0}, Lcom/millennialmedia/android/NVASpeechKit$Listener;->onError()V

    .line 979
    sget-object v0, Lcom/millennialmedia/android/NVASpeechKit$State;->ERROR:Lcom/millennialmedia/android/NVASpeechKit$State;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/NVASpeechKit;->a(Lcom/millennialmedia/android/NVASpeechKit$State;)V

    .line 980
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/NVASpeechKit;->a(Lcom/nuance/nmdp/speechkit/SpeechError;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/NVASpeechKit;->b(Ljava/lang/String;)V

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 957
    :pswitch_1
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->j:Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;

    iget-boolean v0, v0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->d:Z

    if-nez v0, :cond_1

    .line 958
    sget-object v0, Lcom/millennialmedia/android/NVASpeechKit$State;->PROCESSING:Lcom/millennialmedia/android/NVASpeechKit$State;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/NVASpeechKit;->a(Lcom/millennialmedia/android/NVASpeechKit$State;)V

    .line 961
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/millennialmedia/android/NVASpeechKit$Result;

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->_results:[Lcom/millennialmedia/android/NVASpeechKit$Result;

    .line 962
    invoke-direct {p0}, Lcom/millennialmedia/android/NVASpeechKit;->m()V

    goto :goto_0

    .line 967
    :pswitch_2
    sget-object v0, Lcom/millennialmedia/android/NVASpeechKit$State;->READY:Lcom/millennialmedia/android/NVASpeechKit$State;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/NVASpeechKit;->a(Lcom/millennialmedia/android/NVASpeechKit$State;)V

    .line 968
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->h:Lcom/nuance/nmdp/speechkit/Recognizer;

    goto :goto_0

    .line 954
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$Listener;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->r:Lcom/millennialmedia/android/NVASpeechKit$Listener;

    return-object v0
.end method

.method private c(Ljava/lang/String;)[B
    .locals 4
    .parameter

    .prologue
    .line 690
    if-nez p1, :cond_0

    .line 691
    const/4 v0, 0x0

    .line 697
    :goto_0
    return-object v0

    .line 692
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 693
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 694
    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 693
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 697
    goto :goto_0
.end method

.method static synthetic d(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$State;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->i:Lcom/millennialmedia/android/NVASpeechKit$State;

    return-object v0
.end method

.method static synthetic e(Lcom/millennialmedia/android/NVASpeechKit;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lcom/millennialmedia/android/NVASpeechKit;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/millennialmedia/android/NVASpeechKit;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/millennialmedia/android/NVASpeechKit;->m()V

    return-void
.end method

.method private h()Lcom/millennialmedia/android/MMWebView;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 324
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->k:Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    return-object v0
.end method

.method static synthetic i(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->l:Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/millennialmedia/android/NVASpeechKit;->h()Lcom/millennialmedia/android/MMWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 333
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/millennialmedia/android/NVASpeechKit;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->n:Ljava/lang/Runnable;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 664
    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->x()Ljava/lang/String;

    move-result-object v0

    .line 668
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "DEFAULT_AD_ID"

    goto :goto_0
.end method

.method private k()Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
    .locals 1

    .prologue
    .line 799
    new-instance v0, Lcom/millennialmedia/android/NVASpeechKit$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/NVASpeechKit$6;-><init>(Lcom/millennialmedia/android/NVASpeechKit;)V

    return-object v0
.end method

.method static synthetic k(Lcom/millennialmedia/android/NVASpeechKit;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/millennialmedia/android/NVASpeechKit;->n()V

    return-void
.end method

.method private l()Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    .locals 1

    .prologue
    .line 834
    new-instance v0, Lcom/millennialmedia/android/NVASpeechKit$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/NVASpeechKit$7;-><init>(Lcom/millennialmedia/android/NVASpeechKit;)V

    return-object v0
.end method

.method static synthetic l(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/SpeechKit;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    return-object v0
.end method

.method static synthetic m(Lcom/millennialmedia/android/NVASpeechKit;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->m:Ljava/lang/String;

    return-object v0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 988
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->r:Lcom/millennialmedia/android/NVASpeechKit$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->_results:[Lcom/millennialmedia/android/NVASpeechKit$Result;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->j:Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;

    iget-boolean v0, v0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->d:Z

    if-eqz v0, :cond_1

    .line 990
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->r:Lcom/millennialmedia/android/NVASpeechKit$Listener;

    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit;->j:Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;

    iget-wide v1, v1, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->b:D

    invoke-interface {v0, v1, v2}, Lcom/millennialmedia/android/NVASpeechKit$Listener;->onAudioSampleUpdate(D)V

    .line 992
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->j:Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->reset()V

    .line 997
    :cond_0
    :goto_0
    sget-object v0, Lcom/millennialmedia/android/NVASpeechKit$State;->READY:Lcom/millennialmedia/android/NVASpeechKit$State;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/NVASpeechKit;->a(Lcom/millennialmedia/android/NVASpeechKit$State;)V

    .line 998
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->h:Lcom/nuance/nmdp/speechkit/Recognizer;

    .line 999
    return-void

    .line 994
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->r:Lcom/millennialmedia/android/NVASpeechKit$Listener;

    invoke-interface {v0}, Lcom/millennialmedia/android/NVASpeechKit$Listener;->onResults()V

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1022
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1024
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/millennialmedia/android/NVASpeechKit;->h()Lcom/millennialmedia/android/MMWebView;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_0

    .line 421
    const-string v1, "javascript:MMJS.sdk.voiceStateChange(\'ready\')"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 423
    :cond_0
    return-void
.end method

.method a(D)V
    .locals 3
    .parameter

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/millennialmedia/android/NVASpeechKit;->h()Lcom/millennialmedia/android/MMWebView;

    move-result-object v0

    .line 463
    if-eqz v0, :cond_0

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.sdk.audioLevelChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 467
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/millennialmedia/android/NVASpeechKit;->h()Lcom/millennialmedia/android/MMWebView;

    move-result-object v0

    .line 472
    if-eqz v0, :cond_0

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.sdk.recognitionResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 476
    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/millennialmedia/android/NVASpeechKit;->h()Lcom/millennialmedia/android/MMWebView;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_0

    .line 429
    const-string v1, "javascript:MMJS.sdk.voiceStateChange(\'recording\')"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 432
    :cond_0
    return-void
.end method

.method b(D)V
    .locals 3
    .parameter

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/millennialmedia/android/NVASpeechKit;->h()Lcom/millennialmedia/android/MMWebView;

    move-result-object v0

    .line 489
    if-eqz v0, :cond_0

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.sdk.backgroundAudioLevel("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 493
    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/millennialmedia/android/NVASpeechKit;->h()Lcom/millennialmedia/android/MMWebView;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_0

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.sdk.voiceError(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 484
    :cond_0
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/millennialmedia/android/NVASpeechKit;->h()Lcom/millennialmedia/android/MMWebView;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_0

    .line 438
    const-string v1, "javascript:MMJS.sdk.voiceStateChange(\'processing\')"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 441
    :cond_0
    return-void
.end method

.method public cancelRecording()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->h:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-eqz v0, :cond_0

    .line 549
    const-string v0, "NVASpeechKit"

    const-string v1, "cancel RECORDING"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->h:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->cancel()V

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->h:Lcom/nuance/nmdp/speechkit/Recognizer;

    .line 552
    sget-object v0, Lcom/millennialmedia/android/NVASpeechKit$State;->READY:Lcom/millennialmedia/android/NVASpeechKit$State;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/NVASpeechKit;->a(Lcom/millennialmedia/android/NVASpeechKit$State;)V

    .line 554
    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/millennialmedia/android/NVASpeechKit;->h()Lcom/millennialmedia/android/MMWebView;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_0

    .line 447
    const-string v1, "javascript:MMJS.sdk.voiceStateChange(\'vocalizing\')"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 450
    :cond_0
    return-void
.end method

.method e()V
    .locals 2

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/millennialmedia/android/NVASpeechKit;->h()Lcom/millennialmedia/android/MMWebView;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_0

    .line 456
    const-string v1, "javascript:MMJS.sdk.voiceStateChange(\'error\')"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 458
    :cond_0
    return-void
.end method

.method public endRecording()Z
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->h:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-eqz v0, :cond_0

    .line 537
    const-string v0, "NVASpeechKit"

    const-string v1, "end RECORDING"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->h:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->stopRecording()V

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->h:Lcom/nuance/nmdp/speechkit/Recognizer;

    .line 540
    const/4 v0, 0x1

    .line 542
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 752
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method declared-synchronized g()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 909
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/millennialmedia/android/NVASpeechKit;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 910
    sget-object v0, Lcom/millennialmedia/android/NVASpeechKit;->s:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    :goto_0
    monitor-exit p0

    return-object v0

    .line 912
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 913
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 914
    if-eqz v0, :cond_3

    .line 915
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 918
    :goto_1
    if-nez v0, :cond_1

    move-object v0, v1

    .line 919
    goto :goto_0

    .line 926
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 929
    if-nez v0, :cond_2

    move-object v0, v1

    .line 930
    goto :goto_0

    .line 933
    :cond_2
    :try_start_2
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 934
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 935
    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->a([B)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 940
    :try_start_3
    sput-object v0, Lcom/millennialmedia/android/NVASpeechKit;->s:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 909
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 936
    :catch_0
    move-exception v0

    .line 937
    :try_start_4
    const-string v2, "NVASpeechKit"

    const-string v3, "Problem with nuanceid"

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    .line 938
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public getResults()[Lcom/millennialmedia/android/NVASpeechKit$Result;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->_results:[Lcom/millennialmedia/android/NVASpeechKit$Result;

    return-object v0
.end method

.method public declared-synchronized getState()Lcom/millennialmedia/android/NVASpeechKit$State;
    .locals 1

    .prologue
    .line 503
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->i:Lcom/millennialmedia/android/NVASpeechKit$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initialize(Lcom/millennialmedia/android/HandShake$NuanceCredentials;Landroid/content/Context;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 709
    const-string v0, "NVASpeechKit"

    const-string v1, "initialize called."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 743
    :cond_0
    :goto_0
    return v5

    .line 714
    :cond_1
    iput-object p1, p0, Lcom/millennialmedia/android/NVASpeechKit;->a:Lcom/millennialmedia/android/HandShake$NuanceCredentials;

    .line 716
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_2

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->connect()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-nez v0, :cond_3

    .line 725
    iget-object v0, p1, Lcom/millennialmedia/android/HandShake$NuanceCredentials;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/NVASpeechKit;->c(Ljava/lang/String;)[B

    move-result-object v6

    .line 726
    const-string v0, "NVASpeechKit"

    invoke-virtual {p1}, Lcom/millennialmedia/android/HandShake$NuanceCredentials;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v1, "1.0"

    iget-object v2, p1, Lcom/millennialmedia/android/HandShake$NuanceCredentials;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/millennialmedia/android/HandShake$NuanceCredentials;->c:Ljava/lang/String;

    iget v4, p1, Lcom/millennialmedia/android/HandShake$NuanceCredentials;->d:I

    sget-object v7, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->NVC:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/SpeechKit;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    .line 735
    invoke-direct {p0}, Lcom/millennialmedia/android/NVASpeechKit;->k()Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->g:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    .line 736
    invoke-direct {p0}, Lcom/millennialmedia/android/NVASpeechKit;->l()Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->f:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    .line 737
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->e:Landroid/os/Handler;

    .line 738
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->connect()V

    .line 739
    sget-object v0, Lcom/millennialmedia/android/NVASpeechKit$State;->READY:Lcom/millennialmedia/android/NVASpeechKit$State;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/NVASpeechKit;->a(Lcom/millennialmedia/android/NVASpeechKit$State;)V

    .line 740
    const/4 v5, 0x1

    goto :goto_0

    .line 719
    :catch_0
    move-exception v0

    .line 720
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    goto :goto_1

    .line 742
    :cond_3
    const-string v0, "NVASpeechKit"

    const-string v1, "Already initialized. Skipping."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logEvent()V
    .locals 6

    .prologue
    .line 622
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-nez v0, :cond_0

    .line 658
    :goto_0
    return-void

    .line 625
    :cond_0
    new-instance v2, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    .line 627
    const-string v0, "nva_ad_network_id"

    const-string v1, "MillenialMedia"

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v0, "nva_device_id"

    invoke-virtual {p0}, Lcom/millennialmedia/android/NVASpeechKit;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v0, "nva_ad_publisher_id"

    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit;->t:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v0, ""

    .line 632
    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit;->a:Lcom/millennialmedia/android/HandShake$NuanceCredentials;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit;->a:Lcom/millennialmedia/android/HandShake$NuanceCredentials;

    iget-object v1, v1, Lcom/millennialmedia/android/HandShake$NuanceCredentials;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 633
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->a:Lcom/millennialmedia/android/HandShake$NuanceCredentials;

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake$NuanceCredentials;->e:Ljava/lang/String;

    .line 634
    const-string v1, "nva_ad_session_id"

    iget-object v3, p0, Lcom/millennialmedia/android/NVASpeechKit;->a:Lcom/millennialmedia/android/HandShake$NuanceCredentials;

    iget-object v3, v3, Lcom/millennialmedia/android/HandShake$NuanceCredentials;->e:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_1
    invoke-direct {p0}, Lcom/millennialmedia/android/NVASpeechKit;->j()Ljava/lang/String;

    move-result-object v1

    .line 637
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 638
    const-string v3, "nva_ad_id"

    invoke-virtual {v2, v3, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_2
    iget-object v3, p0, Lcom/millennialmedia/android/NVASpeechKit;->m:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 643
    const-string v3, "nva_nvc_session_id"

    iget-object v4, p0, Lcom/millennialmedia/android/NVASpeechKit;->m:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v3, p0, Lcom/millennialmedia/android/NVASpeechKit;->m:Ljava/lang/String;

    .line 645
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/millennialmedia/android/NVASpeechKit;->m:Ljava/lang/String;

    .line 650
    :goto_1
    const-string v3, "NVASpeechKit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending log revision command to server. sessionId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v5}, Lcom/nuance/nmdp/speechkit/SpeechKit;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] deviceId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/millennialmedia/android/NVASpeechKit;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] adId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] mmSessionId["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    const-string v1, "NVA_LOG_EVENT"

    iget-object v3, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/SpeechKit;->getSessionId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/NVASpeechKit;->p:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    iget-object v5, p0, Lcom/millennialmedia/android/NVASpeechKit;->e:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/SpeechKit;->createLogRevisionCmd(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/GenericCommand;

    move-result-object v0

    .line 657
    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/GenericCommand;->start()V

    goto/16 :goto_0

    .line 647
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/SpeechKit;->getSessionId()Ljava/lang/String;

    goto :goto_1
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 607
    const-string v0, "NVASpeechKit"

    const-string v1, "release called."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Lcom/millennialmedia/android/NVASpeechKit;->stopActions()V

    .line 609
    invoke-direct {p0}, Lcom/millennialmedia/android/NVASpeechKit;->n()V

    .line 611
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->release()V

    .line 613
    sget-object v0, Lcom/millennialmedia/android/NVASpeechKit$State;->READY:Lcom/millennialmedia/android/NVASpeechKit$State;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/NVASpeechKit;->a(Lcom/millennialmedia/android/NVASpeechKit$State;)V

    .line 614
    iput-object v2, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    .line 616
    :cond_0
    iput-object v2, p0, Lcom/millennialmedia/android/NVASpeechKit;->k:Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    .line 617
    invoke-direct {p0}, Lcom/millennialmedia/android/NVASpeechKit;->i()V

    .line 618
    return-void
.end method

.method public setSpeechKitListener(Lcom/millennialmedia/android/NVASpeechKit$Listener;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/millennialmedia/android/NVASpeechKit;->r:Lcom/millennialmedia/android/NVASpeechKit$Listener;

    .line 515
    return-void
.end method

.method public startRecording(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 520
    const-string v0, "NVASpeechKit"

    const-string v1, "RECORDING INVOKED."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->i:Lcom/millennialmedia/android/NVASpeechKit$State;

    sget-object v1, Lcom/millennialmedia/android/NVASpeechKit$State;->READY:Lcom/millennialmedia/android/NVASpeechKit$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_0

    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->m:Ljava/lang/String;

    .line 523
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    const-string v1, "dictation"

    iget-object v4, p0, Lcom/millennialmedia/android/NVASpeechKit;->f:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    iget-object v5, p0, Lcom/millennialmedia/android/NVASpeechKit;->e:Landroid/os/Handler;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/SpeechKit;->createRecognizer(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->h:Lcom/nuance/nmdp/speechkit/Recognizer;

    .line 526
    const-string v0, "NVASpeechKit"

    const-string v1, "START RECORDING"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->h:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->start()V

    .line 530
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startSampleRecording()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->j:Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->startTrackingAudioSample()V

    .line 560
    const-string v0, "en_US"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/NVASpeechKit;->startRecording(Ljava/lang/String;)Z

    .line 561
    return-void
.end method

.method public stopActions()V
    .locals 3

    .prologue
    .line 577
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_0

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->cancelCurrent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 581
    const-string v1, "NVASpeechKit"

    const-string v2, "No speech kit to disconnect."

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public textToSpeech(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 594
    const-string v0, "NVASpeechKit"

    const-string v1, "TTS INVOKED."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->i:Lcom/millennialmedia/android/NVASpeechKit$State;

    sget-object v1, Lcom/millennialmedia/android/NVASpeechKit$State;->READY:Lcom/millennialmedia/android/NVASpeechKit$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit;->g:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    iget-object v2, p0, Lcom/millennialmedia/android/NVASpeechKit;->e:Landroid/os/Handler;

    invoke-virtual {v0, p2, v1, v2}, Lcom/nuance/nmdp/speechkit/SpeechKit;->createVocalizerWithLanguage(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/Vocalizer;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->c:Lcom/nuance/nmdp/speechkit/Vocalizer;

    .line 598
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->c:Lcom/nuance/nmdp/speechkit/Vocalizer;

    invoke-interface {v0, p1, p0}, Lcom/nuance/nmdp/speechkit/Vocalizer;->speakString(Ljava/lang/String;Ljava/lang/Object;)V

    .line 599
    const/4 v0, 0x1

    .line 601
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateCustomWords(Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;[Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 764
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-nez v0, :cond_0

    .line 785
    :goto_0
    return-void

    .line 766
    :cond_0
    new-instance v1, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;

    invoke-direct {v1}, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;-><init>()V

    .line 767
    const-string v2, "NVASpeechKit"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating dataupload command and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;->Add:Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    if-ne p1, v0, :cond_1

    const-string v0, "adding"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " words."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    new-instance v2, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;

    const-string v0, "nva_custom_word_uploads"

    sget-object v3, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CUSTOMWORDS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    invoke-direct {v2, v0, v3}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;-><init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;)V

    .line 771
    new-instance v3, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;

    sget-object v0, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;->Add:Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->ADD:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    :goto_2
    invoke-direct {v3, v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;-><init>(Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;)V

    .line 773
    array-length v4, p2

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_3

    aget-object v5, p2, v0

    .line 774
    invoke-virtual {v3, v5}, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->addWord(Ljava/lang/String;)V

    .line 775
    const-string v6, "NVASpeechKit"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tword: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 767
    :cond_1
    const-string v0, "deleting"

    goto :goto_1

    .line 771
    :cond_2
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->REMOVE:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    goto :goto_2

    .line 777
    :cond_3
    invoke-virtual {v2, v3}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->addAction(Lcom/nuance/nmdp/speechkit/util/dataupload/Action;)V

    .line 778
    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->addData(Lcom/nuance/nmdp/speechkit/util/dataupload/Data;)V

    .line 779
    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->getChecksum()I

    move-result v2

    .line 781
    iput-object p1, p0, Lcom/millennialmedia/android/NVASpeechKit;->l:Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    .line 782
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->d:Lcom/nuance/nmdp/speechkit/SpeechKit;

    iget-object v4, p0, Lcom/millennialmedia/android/NVASpeechKit;->q:Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

    iget-object v5, p0, Lcom/millennialmedia/android/NVASpeechKit;->e:Landroid/os/Handler;

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/SpeechKit;->createDataUploadCmd(Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;IILcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->k:Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    .line 784
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit;->k:Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/DataUploadCommand;->start()V

    goto/16 :goto_0
.end method
