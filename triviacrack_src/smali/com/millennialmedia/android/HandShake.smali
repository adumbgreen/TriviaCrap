.class Lcom/millennialmedia/android/HandShake;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Z

.field private static n:Lcom/millennialmedia/android/HandShake;

.field private static y:Ljava/lang/String;


# instance fields
.field b:Z

.field c:Ljava/lang/String;

.field d:J

.field e:Z

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:J

.field i:Ljava/lang/String;

.field j:Lcom/millennialmedia/android/HandShake$NuanceCredentials;

.field k:[Lcom/millennialmedia/android/DTOCachedVideo;

.field private o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroid/os/Handler;

.field private r:J

.field private s:Ljava/lang/String;

.field private final t:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/android/HandShake$AdTypeHandShake;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/millennialmedia/android/HandShake$Scheme;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/String;

.field private w:J

.field private x:J

.field private final z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "28913"

    sput-object v0, Lcom/millennialmedia/android/HandShake;->a:Ljava/lang/String;

    .line 59
    const-string v0, "https://ads.mp.mydas.mobi/appConfigServlet?apid="

    sput-object v0, Lcom/millennialmedia/android/HandShake;->l:Ljava/lang/String;

    .line 98
    const-string v0, "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?"

    sput-object v0, Lcom/millennialmedia/android/HandShake;->y:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->q:Landroid/os/Handler;

    .line 71
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->t:Ljava/util/LinkedHashMap;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->u:Ljava/util/ArrayList;

    .line 78
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->w:J

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/HandShake;->b:Z

    .line 85
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->x:J

    .line 89
    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->d:J

    .line 441
    new-instance v0, Lcom/millennialmedia/android/HandShake$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake$2;-><init>(Lcom/millennialmedia/android/HandShake;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->z:Ljava/lang/Runnable;

    .line 278
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->q:Landroid/os/Handler;

    .line 71
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->t:Ljava/util/LinkedHashMap;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->u:Ljava/util/ArrayList;

    .line 78
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->w:J

    .line 83
    iput-boolean v4, p0, Lcom/millennialmedia/android/HandShake;->b:Z

    .line 85
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->x:J

    .line 89
    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->d:J

    .line 441
    new-instance v0, Lcom/millennialmedia/android/HandShake$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake$2;-><init>(Lcom/millennialmedia/android/HandShake;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->z:Ljava/lang/Runnable;

    .line 285
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->o:Ljava/lang/ref/WeakReference;

    .line 286
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->p:Ljava/lang/ref/WeakReference;

    .line 288
    sget-boolean v0, Lcom/millennialmedia/android/HandShake;->m:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake;->r:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake;->x:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 291
    :cond_0
    sput-boolean v4, Lcom/millennialmedia/android/HandShake;->m:Z

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->r:J

    .line 294
    invoke-direct {p0, v4}, Lcom/millennialmedia/android/HandShake;->a(Z)V

    .line 296
    :cond_1
    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;
    .locals 6
    .parameter

    .prologue
    .line 122
    const-class v1, Lcom/millennialmedia/android/HandShake;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/millennialmedia/android/HandShake;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 123
    const-string v0, "HandShake"

    const-string v2, "No apid set for the handshake."

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    const/4 v0, 0x0

    .line 133
    :goto_0
    monitor-exit v1

    return-object v0

    .line 126
    :cond_0
    :try_start_1
    sget-object v0, Lcom/millennialmedia/android/HandShake;->n:Lcom/millennialmedia/android/HandShake;

    if-nez v0, :cond_2

    .line 127
    new-instance v0, Lcom/millennialmedia/android/HandShake;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/millennialmedia/android/HandShake;->n:Lcom/millennialmedia/android/HandShake;

    .line 133
    :cond_1
    :goto_1
    sget-object v0, Lcom/millennialmedia/android/HandShake;->n:Lcom/millennialmedia/android/HandShake;

    goto :goto_0

    .line 128
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/millennialmedia/android/HandShake;->n:Lcom/millennialmedia/android/HandShake;

    iget-wide v4, v0, Lcom/millennialmedia/android/HandShake;->r:J

    sub-long/2addr v2, v4

    sget-object v0, Lcom/millennialmedia/android/HandShake;->n:Lcom/millennialmedia/android/HandShake;

    iget-wide v4, v0, Lcom/millennialmedia/android/HandShake;->x:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 129
    const-string v0, "HandShake"

    const-string v2, "Handshake expired, requesting new handshake from the server."

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/millennialmedia/android/HandShake;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/millennialmedia/android/HandShake;->n:Lcom/millennialmedia/android/HandShake;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    sget-object v0, Lcom/millennialmedia/android/HandShake;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/millennialmedia/android/HandShake;->y:Ljava/lang/String;

    const-string v1, "getAd.php5?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/millennialmedia/android/HandShake;->y:Ljava/lang/String;

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?"

    goto :goto_0
.end method

.method static synthetic a(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->o:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/millennialmedia/android/HandShake;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/millennialmedia/android/HandShake;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "getAd.php5?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/HandShake;->y:Ljava/lang/String;

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "getAd.php5?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/HandShake;->y:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v1, 0x0

    .line 681
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 682
    if-nez v0, :cond_b

    .line 683
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v2, v0

    .line 685
    :goto_0
    if-nez v2, :cond_1

    .line 686
    const-string v0, "HandShake"

    const-string v1, "No context for handshake"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :cond_0
    :goto_1
    return-void

    .line 693
    :cond_1
    if-eqz p1, :cond_0

    .line 698
    :try_start_0
    const-string v0, "errors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 699
    if-eqz v3, :cond_4

    move v0, v1

    .line 700
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 701
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 702
    if-eqz v4, :cond_2

    .line 703
    const-string v5, "message"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 705
    const-string v6, "type"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 706
    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 707
    const-string v6, "log"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 708
    const-string v4, "HandShake"

    invoke-static {v4, v5}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 709
    :cond_3
    const-string v6, "prompt"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 711
    iget-object v4, p0, Lcom/millennialmedia/android/HandShake;->q:Landroid/os/Handler;

    new-instance v6, Lcom/millennialmedia/android/HandShake$3;

    invoke-direct {v6, p0, v2, v5}, Lcom/millennialmedia/android/HandShake$3;-><init>(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 818
    :catch_0
    move-exception v0

    .line 819
    const-string v1, "HandShake"

    const-string v2, "Error deserializing handshake"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 754
    :cond_4
    :try_start_1
    const-string v0, "adtypes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 755
    if-eqz v3, :cond_6

    .line 757
    invoke-static {}, Lcom/millennialmedia/android/MMAdImpl;->l()[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 759
    :goto_4
    array-length v5, v4

    if-ge v0, v5, :cond_6

    .line 760
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 761
    if-eqz v5, :cond_5

    .line 762
    new-instance v6, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    invoke-direct {v6, p0}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;-><init>(Lcom/millennialmedia/android/HandShake;)V

    .line 763
    invoke-virtual {v6, v5}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->a(Lorg/json/JSONObject;)V

    .line 766
    aget-object v5, v4, v0

    invoke-virtual {v6, v2, v5}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 767
    iget-object v5, p0, Lcom/millennialmedia/android/HandShake;->t:Ljava/util/LinkedHashMap;

    aget-object v7, v4, v0

    invoke-virtual {v5, v7, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 773
    :cond_6
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 774
    :try_start_2
    const-string v0, "schemes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 775
    if-eqz v3, :cond_9

    .line 776
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 777
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->u:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/millennialmedia/android/HandShake;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_7
    move v0, v1

    .line 778
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 779
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 780
    if-eqz v1, :cond_8

    .line 781
    new-instance v4, Lcom/millennialmedia/android/HandShake$Scheme;

    invoke-direct {v4, p0}, Lcom/millennialmedia/android/HandShake$Scheme;-><init>(Lcom/millennialmedia/android/HandShake;)V

    .line 782
    invoke-virtual {v4, v1}, Lcom/millennialmedia/android/HandShake$Scheme;->a(Lorg/json/JSONObject;)V

    .line 783
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 787
    :cond_9
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 790
    :try_start_3
    const-string v0, "adrefresh"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->h:J

    .line 791
    const-string v0, "deferredviewtimeout"

    const-wide/16 v3, 0xe10

    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    mul-long/2addr v0, v8

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->w:J

    .line 793
    const-string v0, "kill"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/HandShake;->b:Z

    .line 794
    const-string v0, "baseURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->a(Ljava/lang/String;)V

    .line 795
    const-string v0, "handshakecallback"

    const-wide/32 v3, 0x15180

    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    mul-long/2addr v0, v8

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->x:J

    .line 797
    const-string v0, "creativeCacheTimeout"

    const-wide/32 v3, 0x3f480

    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    mul-long/2addr v0, v8

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->d:J

    .line 799
    const-string v0, "hardwareAccelerationEnabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/HandShake;->e:Z

    .line 801
    const-string v0, "startSessionURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->f:Ljava/lang/String;

    .line 802
    const-string v0, "endSessionURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->g:Ljava/lang/String;

    .line 803
    const-string v0, "nuanceCredentials"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 804
    new-instance v1, Lcom/millennialmedia/a/a/e;

    invoke-direct {v1}, Lcom/millennialmedia/a/a/e;-><init>()V

    const-class v3, Lcom/millennialmedia/android/HandShake$NuanceCredentials;

    invoke-virtual {v1, v0, v3}, Lcom/millennialmedia/a/a/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$NuanceCredentials;

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->j:Lcom/millennialmedia/android/HandShake$NuanceCredentials;

    .line 806
    const-string v0, "mmjs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->i:Ljava/lang/String;

    .line 809
    invoke-direct {p0, p1, v2}, Lcom/millennialmedia/android/HandShake;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 811
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->i:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/millennialmedia/android/MRaid;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 814
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MRaid;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 787
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 816
    :cond_a
    const-string v0, "HandShake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not downloading MMJS - ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/HandShake;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :cond_b
    move-object v2, v0

    goto/16 :goto_0
.end method

.method private a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 827
    const-string v0, "cachedVideos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 828
    if-eqz v0, :cond_0

    .line 829
    new-instance v1, Lcom/millennialmedia/a/a/e;

    invoke-direct {v1}, Lcom/millennialmedia/a/a/e;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v2, [Lcom/millennialmedia/android/DTOCachedVideo;

    invoke-virtual {v1, v0, v2}, Lcom/millennialmedia/a/a/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/android/DTOCachedVideo;

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->k:[Lcom/millennialmedia/android/DTOCachedVideo;

    .line 831
    const-string v0, "HandShake"

    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->k:[Lcom/millennialmedia/android/DTOCachedVideo;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :cond_0
    const-string v0, "noVideosToCacheURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->s:Ljava/lang/String;

    .line 834
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->k:[Lcom/millennialmedia/android/DTOCachedVideo;

    if-eqz v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->k:[Lcom/millennialmedia/android/DTOCachedVideo;

    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->s:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/millennialmedia/android/PreCacheWorker;->a([Lcom/millennialmedia/android/DTOCachedVideo;Landroid/content/Context;Ljava/lang/String;)V

    .line 837
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 301
    if-eqz v0, :cond_0

    .line 302
    const-string v1, "MillennialMediaSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 305
    const-string v1, "handShakeUrl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    .line 307
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->b(Ljava/lang/String;)Z

    .line 311
    :cond_0
    new-instance v0, Lcom/millennialmedia/android/HandShake$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/HandShake$1;-><init>(Lcom/millennialmedia/android/HandShake;Z)V

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 413
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->p:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->g(Landroid/content/Context;)V

    return-void
.end method

.method static declared-synchronized b(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 149
    const-class v1, Lcom/millennialmedia/android/HandShake;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 159
    :goto_0
    monitor-exit v1

    return v0

    .line 153
    :cond_0
    :try_start_1
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const-string v0, "http://"

    const-string v2, "https://"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 157
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?apid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/HandShake;->l:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/millennialmedia/android/HandShake;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->z:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic d(Lcom/millennialmedia/android/HandShake;)J
    .locals 2
    .parameter

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/millennialmedia/android/HandShake;->x:J

    return-wide v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/millennialmedia/android/HandShake;->l:Ljava/lang/String;

    return-object v0
.end method

.method private d(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 422
    if-nez p1, :cond_0

    .line 427
    :goto_0
    return v0

    .line 425
    :cond_0
    const-string v1, "MillennialMediaSettings"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 427
    const-string v1, "firstlaunchHandshake"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/millennialmedia/android/HandShake;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->q:Landroid/os/Handler;

    return-object v0
.end method

.method private e(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 432
    if-eqz p1, :cond_0

    .line 433
    const-string v0, "MillennialMediaSettings"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 435
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 436
    const-string v1, "firstlaunchHandshake"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 437
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 439
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/millennialmedia/android/HandShake;)J
    .locals 2
    .parameter

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/millennialmedia/android/HandShake;->w:J

    return-wide v0
.end method

.method static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 43
    sput-object p0, Lcom/millennialmedia/android/HandShake;->l:Ljava/lang/String;

    return-object p0
.end method

.method private f(Landroid/content/Context;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 841
    .line 842
    const-string v0, "MillennialMediaSettings"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 845
    if-nez v4, :cond_1

    .line 958
    :cond_0
    :goto_0
    return v2

    .line 849
    :cond_1
    const-string v0, "handshake_deferredviewtimeout"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 850
    const-string v0, "handshake_deferredviewtimeout"

    iget-wide v5, p0, Lcom/millennialmedia/android/HandShake;->w:J

    invoke-interface {v4, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/millennialmedia/android/HandShake;->w:J

    move v0, v1

    .line 854
    :goto_1
    const-string v3, "handshake_baseUrl"

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 855
    const-string v0, "handshake_baseUrl"

    sget-object v3, Lcom/millennialmedia/android/HandShake;->y:Ljava/lang/String;

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/HandShake;->y:Ljava/lang/String;

    move v0, v1

    .line 858
    :cond_2
    const-string v3, "handshake_callback"

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 859
    const-string v0, "handshake_callback"

    iget-wide v5, p0, Lcom/millennialmedia/android/HandShake;->x:J

    invoke-interface {v4, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/millennialmedia/android/HandShake;->x:J

    move v0, v1

    .line 863
    :cond_3
    const-string v3, "handshake_hardwareAccelerationEnabled"

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 864
    const-string v0, "handshake_hardwareAccelerationEnabled"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/HandShake;->e:Z

    move v0, v1

    .line 868
    :cond_4
    const-string v3, "handshake_startSessionURL"

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 869
    const-string v0, "handshake_startSessionURL"

    const-string v3, ""

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->f:Ljava/lang/String;

    move v0, v1

    .line 873
    :cond_5
    const-string v3, "handshake_endSessionURL"

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 874
    const-string v0, "handshake_endSessionURL"

    const-string v3, ""

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->g:Ljava/lang/String;

    move v0, v1

    .line 878
    :cond_6
    const-string v3, "handshake_nuanceCredentials"

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 879
    const-string v0, "handshake_nuanceCredentials"

    const-string v3, ""

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 881
    new-instance v3, Lcom/millennialmedia/a/a/e;

    invoke-direct {v3}, Lcom/millennialmedia/a/a/e;-><init>()V

    const-class v5, Lcom/millennialmedia/android/HandShake$NuanceCredentials;

    invoke-virtual {v3, v0, v5}, Lcom/millennialmedia/a/a/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$NuanceCredentials;

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->j:Lcom/millennialmedia/android/HandShake$NuanceCredentials;

    move v0, v1

    .line 885
    :cond_7
    const-string v3, "handshake_mmdid"

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 886
    const-string v0, "handshake_mmdid"

    iget-object v3, p0, Lcom/millennialmedia/android/HandShake;->c:Ljava/lang/String;

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    move v0, v1

    .line 890
    :cond_8
    const-string v3, "handshake_creativecachetimeout"

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 891
    const-string v0, "handshake_creativecachetimeout"

    iget-wide v5, p0, Lcom/millennialmedia/android/HandShake;->d:J

    invoke-interface {v4, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/millennialmedia/android/HandShake;->d:J

    move v0, v1

    .line 895
    :cond_9
    const-string v3, "handshake_mmjs"

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 896
    const-string v0, "handshake_mmjs"

    iget-object v3, p0, Lcom/millennialmedia/android/HandShake;->i:Ljava/lang/String;

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->i:Ljava/lang/String;

    move v0, v1

    .line 900
    :cond_a
    invoke-static {}, Lcom/millennialmedia/android/MMAdImpl;->l()[Ljava/lang/String;

    move-result-object v5

    move v3, v0

    move v0, v2

    .line 901
    :goto_2
    array-length v6, v5

    if-ge v0, v6, :cond_c

    .line 902
    new-instance v6, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    invoke-direct {v6, p0}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;-><init>(Lcom/millennialmedia/android/HandShake;)V

    .line 903
    aget-object v7, v5, v0

    invoke-virtual {v6, v4, v7}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 905
    iget-object v3, p0, Lcom/millennialmedia/android/HandShake;->t:Ljava/util/LinkedHashMap;

    aget-object v7, v5, v0

    invoke-virtual {v3, v7, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v1

    .line 901
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 909
    :cond_c
    monitor-enter p0

    .line 910
    :try_start_0
    const-string v0, "handshake_schemes"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 911
    const-string v0, "handshake_schemes"

    const-string v5, ""

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 913
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_12

    .line 914
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 915
    array-length v3, v0

    :goto_3
    if-ge v2, v3, :cond_e

    aget-object v5, v0, v2

    .line 916
    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 917
    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_d

    .line 918
    new-instance v6, Lcom/millennialmedia/android/HandShake$Scheme;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const/4 v8, 0x1

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v6, p0, v7, v5}, Lcom/millennialmedia/android/HandShake$Scheme;-><init>(Lcom/millennialmedia/android/HandShake;Ljava/lang/String;I)V

    .line 920
    iget-object v5, p0, Lcom/millennialmedia/android/HandShake;->u:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    move v2, v1

    .line 926
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    const-string v0, "handshake_cachedvideos5.0"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 929
    const-string v0, "handshake_cachedvideos5.0"

    const-string v3, ""

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 931
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    .line 932
    new-instance v3, Lcom/millennialmedia/a/a/e;

    invoke-direct {v3}, Lcom/millennialmedia/a/a/e;-><init>()V

    const-class v5, [Lcom/millennialmedia/android/DTOCachedVideo;

    invoke-virtual {v3, v0, v5}, Lcom/millennialmedia/a/a/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/android/DTOCachedVideo;

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->k:[Lcom/millennialmedia/android/DTOCachedVideo;

    .line 938
    :cond_f
    const-string v0, "handshake_lasthandshake"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 939
    const-string v0, "handshake_lasthandshake"

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake;->r:J

    invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/HandShake;->r:J

    move v2, v1

    .line 944
    :cond_10
    if-eqz v2, :cond_0

    .line 945
    const-string v0, "HandShake"

    const-string v1, "Handshake successfully loaded from shared preferences."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/millennialmedia/android/HandShake;->r:J

    sub-long/2addr v0, v5

    iget-wide v5, p0, Lcom/millennialmedia/android/HandShake;->x:J

    cmp-long v0, v0, v5

    if-gez v0, :cond_11

    .line 949
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->z:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/millennialmedia/android/HandShake;->x:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/millennialmedia/android/HandShake;->r:J

    sub-long/2addr v7, v9

    sub-long/2addr v5, v7

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 952
    :cond_11
    const-string v0, "handshake_novideostocacheurl"

    const-string v1, ""

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->s:Ljava/lang/String;

    .line 954
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->k:[Lcom/millennialmedia/android/DTOCachedVideo;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->k:[Lcom/millennialmedia/android/DTOCachedVideo;

    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->s:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/millennialmedia/android/PreCacheWorker;->a([Lcom/millennialmedia/android/DTOCachedVideo;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 926
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_12
    move v2, v3

    goto :goto_4

    :cond_13
    move v0, v2

    goto/16 :goto_1
.end method

.method private g(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .parameter

    .prologue
    .line 659
    const-string v0, "HandShake"

    const-string v1, "JSON String: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    if-eqz p1, :cond_0

    .line 662
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 663
    const-string v1, "HandShake"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v1, "mmishake"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    const-string v1, "mmishake"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 670
    :goto_0
    return-object v0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    const-string v1, "HandShake"

    const-string v2, "Error parsing json"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 670
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 965
    const-string v0, "MillennialMediaSettings"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 967
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 970
    const-string v0, "handshake_deferredviewtimeout"

    iget-wide v4, p0, Lcom/millennialmedia/android/HandShake;->w:J

    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 971
    const-string v0, "handshake_kill"

    iget-boolean v1, p0, Lcom/millennialmedia/android/HandShake;->b:Z

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 972
    const-string v0, "handshake_baseUrl"

    sget-object v1, Lcom/millennialmedia/android/HandShake;->y:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 973
    const-string v0, "handshake_callback"

    iget-wide v4, p0, Lcom/millennialmedia/android/HandShake;->x:J

    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 974
    const-string v0, "handshake_hardwareAccelerationEnabled"

    iget-boolean v1, p0, Lcom/millennialmedia/android/HandShake;->e:Z

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 976
    const-string v0, "handshake_startSessionURL"

    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->f:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 977
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->j:Lcom/millennialmedia/android/HandShake$NuanceCredentials;

    if-eqz v0, :cond_0

    .line 978
    const-string v0, "handshake_nuanceCredentials"

    new-instance v1, Lcom/millennialmedia/a/a/e;

    invoke-direct {v1}, Lcom/millennialmedia/a/a/e;-><init>()V

    iget-object v4, p0, Lcom/millennialmedia/android/HandShake;->j:Lcom/millennialmedia/android/HandShake$NuanceCredentials;

    invoke-virtual {v1, v4}, Lcom/millennialmedia/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 981
    :cond_0
    const-string v0, "handshake_endSessionURL"

    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->g:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 982
    const-string v0, "handshake_creativecaetimeout"

    iget-wide v4, p0, Lcom/millennialmedia/android/HandShake;->d:J

    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 983
    const-string v0, "handshake_mmjs"

    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->i:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 986
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 987
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 988
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_0

    .line 992
    :cond_1
    monitor-enter p0

    .line 993
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 994
    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 995
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$Scheme;

    .line 996
    if-lez v1, :cond_2

    .line 997
    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/millennialmedia/android/HandShake$Scheme;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\t"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/millennialmedia/android/HandShake$Scheme;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1000
    :cond_3
    const-string v0, "handshake_schemes"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1001
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->k:[Lcom/millennialmedia/android/DTOCachedVideo;

    if-eqz v0, :cond_4

    .line 1003
    const-string v0, "handshake_cachedvideos5.0"

    new-instance v1, Lcom/millennialmedia/a/a/e;

    invoke-direct {v1}, Lcom/millennialmedia/a/a/e;-><init>()V

    iget-object v2, p0, Lcom/millennialmedia/android/HandShake;->k:[Lcom/millennialmedia/android/DTOCachedVideo;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1005
    :cond_4
    const-string v0, "handshake_novideostocacheurl"

    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->s:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1007
    const-string v0, "handshake_lasthandshake"

    iget-wide v1, p0, Lcom/millennialmedia/android/HandShake;->r:J

    invoke-interface {v3, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1009
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1010
    return-void

    .line 1001
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    monitor-enter p0

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NULL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->c:Ljava/lang/String;

    .line 265
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->a(Ljava/lang/String;)V

    .line 267
    if-eqz p3, :cond_1

    .line 268
    const-string v0, "MillennialMediaSettings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 271
    const-string v1, "handshake_mmdid"

    iget-object v2, p0, Lcom/millennialmedia/android/HandShake;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_1
    monitor-exit p0

    return-void

    .line 263
    :cond_2
    :try_start_1
    iput-object p2, p0, Lcom/millennialmedia/android/HandShake;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 177
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->a(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 182
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;J)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p2, p3}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->a(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 203
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->v:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 458
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$Scheme;

    .line 461
    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/HandShake$Scheme;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/millennialmedia/android/HandShake$Scheme;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 465
    :cond_1
    :try_start_1
    iget v0, v0, Lcom/millennialmedia/android/HandShake$Scheme;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 468
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 469
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->v:Ljava/lang/String;

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->v:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/HandShake;->a(Z)V

    .line 418
    return-void
.end method

.method declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 220
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_0
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 6
    .parameter

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 478
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$Scheme;

    .line 480
    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/HandShake$Scheme;->a(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 482
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 483
    const-string v4, "scheme"

    iget-object v5, v0, Lcom/millennialmedia/android/HandShake$Scheme;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    const-string v4, "schemeid"

    iget v0, v0, Lcom/millennialmedia/android/HandShake$Scheme;->b:I

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 485
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    :try_start_2
    const-string v3, "HandShake"

    const-string v4, "Json error getting scheme"

    invoke-static {v3, v4, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 492
    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method c()V
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$HttpUtils;->a(Ljava/lang/String;)V

    .line 1017
    :cond_0
    return-void
.end method

.method c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 254
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 255
    return-void
.end method

.method declared-synchronized c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 229
    if-eqz v0, :cond_0

    .line 230
    iget-boolean v0, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 239
    if-eqz v0, :cond_0

    .line 240
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :cond_0
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 248
    if-eqz v0, :cond_0

    .line 249
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :cond_0
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
