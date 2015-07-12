.class public Lcom/mobileapptracker/h;
.super Ljava/lang/Object;


# static fields
.field private static volatile t:Lcom/mobileapptracker/h;


# instance fields
.field protected a:Lcom/mobileapptracker/f;

.field protected b:Lcom/mobileapptracker/g;

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Z

.field protected h:Z

.field protected i:Landroid/content/BroadcastReceiver;

.field protected j:Lcom/mobileapptracker/i;

.field protected k:Landroid/content/Context;

.field protected l:Ljava/util/concurrent/ExecutorService;

.field protected m:Ljava/util/concurrent/ExecutorService;

.field protected n:Lcom/mobileapptracker/c;

.field private final o:Ljava/lang/String;

.field private p:Lcom/mobileapptracker/t;

.field private q:Lcom/mobileapptracker/a;

.field private r:Z

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mobileapptracker/h;->t:Lcom/mobileapptracker/h;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "heF9BATUfWuISyO8"

    iput-object v0, p0, Lcom/mobileapptracker/h;->o:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Lcom/mobileapptracker/h;
    .locals 2

    const-class v0, Lcom/mobileapptracker/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mobileapptracker/h;->t:Lcom/mobileapptracker/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/mobileapptracker/h;

    invoke-direct {v0}, Lcom/mobileapptracker/h;-><init>()V

    sput-object v0, Lcom/mobileapptracker/h;->t:Lcom/mobileapptracker/h;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/mobileapptracker/h;->k:Landroid/content/Context;

    sget-object v0, Lcom/mobileapptracker/h;->t:Lcom/mobileapptracker/h;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/mobileapptracker/h;->m:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/mobileapptracker/h;->t:Lcom/mobileapptracker/h;

    invoke-virtual {v0, p1, p2}, Lcom/mobileapptracker/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mobileapptracker/h;Ljava/lang/Object;Lorg/json/JSONArray;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/mobileapptracker/h;->a(Ljava/lang/Object;Lorg/json/JSONArray;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/Object;Lorg/json/JSONArray;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mobileapptracker/h;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/mobileapptracker/h;->b()V

    iget-object v0, p0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    const-string v1, "conversion"

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/i;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, "close"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "open"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "install"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "update"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "session"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    iget-object v1, p0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    const-string v2, "session"

    invoke-virtual {v1, v2}, Lcom/mobileapptracker/i;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_1
    iget-object v0, p0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/i;->T(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/i;->H(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    invoke-virtual {v0, p5}, Lcom/mobileapptracker/i;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    invoke-virtual {v0, p6}, Lcom/mobileapptracker/i;->S(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mobileapptracker/h;->r:Z

    iget-boolean v1, p0, Lcom/mobileapptracker/h;->s:Z

    invoke-static {v0, v1}, Lcom/mobileapptracker/n;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mobileapptracker/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p7, p8}, Lcom/mobileapptracker/n;->a(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/mobileapptracker/h;->b:Lcom/mobileapptracker/g;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mobileapptracker/h;->b:Lcom/mobileapptracker/g;

    invoke-interface {v3, v0, v1, v2}, Lcom/mobileapptracker/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_4
    iget-boolean v3, p0, Lcom/mobileapptracker/h;->g:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mobileapptracker/h;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobileapptracker/h;->g:Z

    invoke-virtual {p0}, Lcom/mobileapptracker/h;->b()V

    iget-object v0, p0, Lcom/mobileapptracker/h;->a:Lcom/mobileapptracker/f;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mobileapptracker/h;->a:Lcom/mobileapptracker/f;

    invoke-interface {v0, p6}, Lcom/mobileapptracker/f;->a(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    invoke-virtual {v0}, Lcom/mobileapptracker/i;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/mobileapptracker/i;->x(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/i;->v(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v0, "MobileAppTracker"

    const-string v1, "Received invalid event name or id value, not measuring event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/h;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mobileapptracker/o;

    invoke-direct {v1, p0, p1}, Lcom/mobileapptracker/o;-><init>(Lcom/mobileapptracker/h;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/h;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mobileapptracker/x;

    invoke-direct {v1, p0, p1}, Lcom/mobileapptracker/x;-><init>(Lcom/mobileapptracker/h;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/mobileapptracker/h;->k:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/mobileapptracker/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mobileapptracker/i;->a()Lcom/mobileapptracker/i;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/h;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/mobileapptracker/t;

    invoke-direct {v0}, Lcom/mobileapptracker/t;-><init>()V

    iput-object v0, p0, Lcom/mobileapptracker/h;->p:Lcom/mobileapptracker/t;

    new-instance v0, Lcom/mobileapptracker/a;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "heF9BATUfWuISyO8"

    invoke-direct {v0, v1, v2}, Lcom/mobileapptracker/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mobileapptracker/h;->q:Lcom/mobileapptracker/a;

    iput-boolean v4, p0, Lcom/mobileapptracker/h;->g:Z

    iput-boolean v3, p0, Lcom/mobileapptracker/h;->d:Z

    iput-boolean v3, p0, Lcom/mobileapptracker/h;->c:Z

    iput-boolean v3, p0, Lcom/mobileapptracker/h;->r:Z

    iput-boolean v3, p0, Lcom/mobileapptracker/h;->s:Z

    new-instance v0, Lcom/mobileapptracker/c;

    iget-object v1, p0, Lcom/mobileapptracker/h;->k:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/mobileapptracker/c;-><init>(Landroid/content/Context;Lcom/mobileapptracker/h;)V

    iput-object v0, p0, Lcom/mobileapptracker/h;->n:Lcom/mobileapptracker/c;

    invoke-virtual {p0}, Lcom/mobileapptracker/h;->b()V

    new-instance v0, Lcom/mobileapptracker/u;

    invoke-direct {v0, p0}, Lcom/mobileapptracker/u;-><init>(Lcom/mobileapptracker/h;)V

    iput-object v0, p0, Lcom/mobileapptracker/h;->i:Landroid/content/BroadcastReceiver;

    iget-boolean v0, p0, Lcom/mobileapptracker/h;->c:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mobileapptracker/h;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobileapptracker/h;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v3, p0, Lcom/mobileapptracker/h;->c:Z

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobileapptracker/h;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobileapptracker/h;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/mobileapptracker/h;->c:Z

    iput-boolean v4, p0, Lcom/mobileapptracker/h;->d:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 7

    iget-object v6, p0, Lcom/mobileapptracker/h;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/mobileapptracker/d;

    iget-object v1, p0, Lcom/mobileapptracker/h;->n:Lcom/mobileapptracker/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mobileapptracker/d;-><init>(Lcom/mobileapptracker/c;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;DLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/mobileapptracker/h;->a(Ljava/lang/String;Ljava/util/List;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobileapptracker/b;

    invoke-virtual {v0}, Lcom/mobileapptracker/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v10, p0, Lcom/mobileapptracker/h;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/mobileapptracker/m;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/mobileapptracker/m;-><init>(Lcom/mobileapptracker/h;Ljava/lang/String;Lorg/json/JSONArray;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/mobileapptracker/h;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/mobileapptracker/l;

    invoke-direct {v2, p0, p1, v0}, Lcom/mobileapptracker/l;-><init>(Lcom/mobileapptracker/h;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/h;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mobileapptracker/j;

    invoke-direct {v1, p0, p1}, Lcom/mobileapptracker/j;-><init>(Lcom/mobileapptracker/h;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/mobileapptracker/h;->r:Z

    if-eqz v2, :cond_0

    const-string v2, "MobileAppTracker"

    const-string v3, "Sending event to server..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/mobileapptracker/h;->q:Lcom/mobileapptracker/a;

    invoke-static {p2, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/String;Lcom/mobileapptracker/a;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mobileapptracker/h;->p:Lcom/mobileapptracker/t;

    iget-boolean v4, p0, Lcom/mobileapptracker/h;->r:Z

    invoke-virtual {v3, v2, p3, v4}, Lcom/mobileapptracker/t;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/mobileapptracker/h;->a:Lcom/mobileapptracker/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobileapptracker/h;->a:Lcom/mobileapptracker/f;

    invoke-interface {v0, v2}, Lcom/mobileapptracker/f;->b(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    const-string v3, "success"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v1, p0, Lcom/mobileapptracker/h;->r:Z

    if-eqz v1, :cond_3

    const-string v1, "MobileAppTracker"

    const-string v2, "Request failed, event will remain in queue"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/mobileapptracker/h;->a:Lcom/mobileapptracker/f;

    if-eqz v3, :cond_6

    :try_start_0
    const-string v3, "success"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    :cond_5
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mobileapptracker/h;->a:Lcom/mobileapptracker/f;

    invoke-interface {v0, v2}, Lcom/mobileapptracker/f;->a(Lorg/json/JSONObject;)V

    :cond_6
    :goto_1
    :try_start_1
    const-string v0, "site_event_type"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "open"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "log_id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobileapptracker/h;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    invoke-virtual {v2, v0}, Lcom/mobileapptracker/i;->N(Ljava/lang/String;)V

    :cond_7
    iget-object v2, p0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    invoke-virtual {v2, v0}, Lcom/mobileapptracker/i;->J(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move v1, v0

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/mobileapptracker/h;->a:Lcom/mobileapptracker/f;

    invoke-interface {v0, v2}, Lcom/mobileapptracker/f;->b(Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lcom/mobileapptracker/h;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobileapptracker/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mobileapptracker/h;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mobileapptracker/e;

    iget-object v2, p0, Lcom/mobileapptracker/h;->n:Lcom/mobileapptracker/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/mobileapptracker/e;-><init>(Lcom/mobileapptracker/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/h;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mobileapptracker/v;

    invoke-direct {v1, p0, p1}, Lcom/mobileapptracker/v;-><init>(Lcom/mobileapptracker/h;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/h;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mobileapptracker/w;

    invoke-direct {v1, p0}, Lcom/mobileapptracker/w;-><init>(Lcom/mobileapptracker/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/h;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mobileapptracker/k;

    invoke-direct {v1, p0, p1}, Lcom/mobileapptracker/k;-><init>(Lcom/mobileapptracker/h;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    invoke-virtual {v0}, Lcom/mobileapptracker/i;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/h;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mobileapptracker/p;

    invoke-direct {v1, p0, p1}, Lcom/mobileapptracker/p;-><init>(Lcom/mobileapptracker/h;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    invoke-virtual {v0}, Lcom/mobileapptracker/i;->af()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/h;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mobileapptracker/q;

    invoke-direct {v1, p0, p1}, Lcom/mobileapptracker/q;-><init>(Lcom/mobileapptracker/h;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    invoke-virtual {v0}, Lcom/mobileapptracker/i;->am()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/h;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mobileapptracker/r;

    invoke-direct {v1, p0, p1}, Lcom/mobileapptracker/r;-><init>(Lcom/mobileapptracker/h;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
