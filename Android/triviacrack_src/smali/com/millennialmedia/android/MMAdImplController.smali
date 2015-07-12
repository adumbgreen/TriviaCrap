.class Lcom/millennialmedia/android/MMAdImplController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;


# static fields
.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/millennialmedia/android/MMAdImplController;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMAdImplController;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field volatile a:J

.field volatile b:Lcom/millennialmedia/android/MMWebView;

.field volatile c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMAdImpl;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/MMAdImplController;->e:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/MMAdImplController;->f:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 4
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "MMAdImplController"

    const-string v1, "**************** creating new controller."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    .line 72
    iget-wide v0, p1, Lcom/millennialmedia/android/MMAdImpl;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMAdImplController;->a(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 76
    invoke-static {p1}, Lcom/millennialmedia/android/MMAdImplController;->d(Lcom/millennialmedia/android/MMAdImpl;)Lcom/millennialmedia/android/MMWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    instance-of v0, p1, Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->isBanner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    new-instance v0, Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMWebView;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    .line 83
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/MMWebView;->g:Z

    goto :goto_0

    .line 85
    :cond_2
    new-instance v0, Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMWebView;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    goto :goto_0
.end method

.method static declared-synchronized a(J)Lcom/millennialmedia/android/MMAdImpl;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 237
    const-class v3, Lcom/millennialmedia/android/MMAdImplController;

    monitor-enter v3

    const-wide/16 v0, -0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    move-object v0, v2

    .line 249
    :goto_0
    monitor-exit v3

    return-object v0

    .line 239
    :cond_0
    :try_start_0
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->e:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImplController;

    .line 241
    if-nez v0, :cond_1

    .line 242
    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->f:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 244
    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImplController;

    .line 247
    :cond_1
    if-eqz v0, :cond_2

    .line 248
    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 249
    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 909
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 911
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImplController;

    .line 912
    if-eqz v0, :cond_0

    .line 913
    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 914
    if-eqz v0, :cond_0

    .line 915
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->d()Lcom/millennialmedia/android/MMAd;

    move-result-object v0

    .line 916
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/millennialmedia/android/MMLayout;

    if-eqz v2, :cond_0

    .line 917
    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    .line 918
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->m()V

    goto :goto_0

    .line 924
    :cond_1
    return-void
.end method

.method static declared-synchronized b(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 5
    .parameter

    .prologue
    .line 108
    const-class v2, Lcom/millennialmedia/android/MMAdImplController;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_3

    .line 109
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->e:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->f:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->f:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    :goto_0
    const-string v0, "MMAdImplController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - Has a controller"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_1
    :goto_1
    monitor-exit v2

    return-void

    .line 118
    :cond_2
    :try_start_1
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->f:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->f:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 128
    :cond_3
    :try_start_2
    const-string v0, "MMAdImplController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*****************************************assignAdViewController for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->e:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImplController;

    .line 133
    if-nez v0, :cond_5

    .line 134
    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->f:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 136
    if-eqz v1, :cond_4

    .line 137
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImplController;

    .line 138
    :cond_4
    if-nez v0, :cond_5

    .line 139
    new-instance v0, Lcom/millennialmedia/android/MMAdImplController;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdImplController;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 140
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->q()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 141
    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->e:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_5
    :goto_2
    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    .line 152
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    .line 154
    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;

    if-nez v0, :cond_1

    .line 156
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdImplController;->h(Lcom/millennialmedia/android/MMAdImpl;)V

    goto/16 :goto_1

    .line 144
    :cond_6
    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->f:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->f:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SAVED:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->e:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized c(Lcom/millennialmedia/android/MMAdImpl;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 189
    const-class v1, Lcom/millennialmedia/android/MMAdImplController;

    monitor-enter v1

    if-nez p0, :cond_1

    .line 217
    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    .line 191
    :cond_1
    :try_start_0
    const-string v2, "MMAdImplController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachWebViewFromOverlay with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-eqz v2, :cond_2

    .line 194
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->d()V

    .line 196
    :cond_2
    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->n:J

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdImplController;->a(J)Lcom/millennialmedia/android/MMAdImpl;

    move-result-object v2

    .line 198
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, v2, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-nez v3, :cond_3

    .line 200
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-eqz v3, :cond_0

    .line 205
    iget-object v0, v2, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    iput-object v3, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    .line 206
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdImpl;->removeView(Lcom/millennialmedia/android/MMWebView;)V

    .line 207
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    .line 211
    :cond_3
    iget-object v0, v2, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->n()V

    .line 212
    iget-object v0, v2, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMAdImpl;->c()Lcom/millennialmedia/android/MMWebViewClient;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    const/4 v0, 0x1

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized d(Lcom/millennialmedia/android/MMAdImpl;)Lcom/millennialmedia/android/MMWebView;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 223
    const-class v1, Lcom/millennialmedia/android/MMAdImplController;

    monitor-enter v1

    :try_start_0
    const-string v2, "MMAdImplController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWebViewFromExistingLayout("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " taking from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->n:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->n:J

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdImplController;->a(J)Lcom/millennialmedia/android/MMAdImpl;

    move-result-object v2

    .line 228
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v3, :cond_0

    .line 229
    iget-object v0, v2, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    .line 230
    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :cond_0
    monitor-exit v1

    return-object v0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized e(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 6
    .parameter

    .prologue
    .line 265
    const-class v1, Lcom/millennialmedia/android/MMAdImplController;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 267
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 271
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->e:Ljava/util/Map;

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->f:Ljava/util/Map;

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 274
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->f:Ljava/util/Map;

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_2
    :goto_1
    const-string v0, "MMAdImplController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****************RemoveAdviewcontroller - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdImpl;->i:Z

    if-eqz v0, :cond_3

    .line 285
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->e:Ljava/util/Map;

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->f:Ljava/util/Map;

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    .line 290
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    .line 292
    const-string v2, "MMAdImplController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "****************RemoveAdviewcontroller - controllers "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/millennialmedia/android/MMAdImplController;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-eqz v2, :cond_0

    .line 297
    const-string v2, "MMAdImplController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "****************RemoveAdviewcontroller - controller!=null, expanding="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    iget-boolean v4, v4, Lcom/millennialmedia/android/MMWebView;->b:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/MMAdImpl;->removeView(Lcom/millennialmedia/android/MMWebView;)V

    .line 301
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/millennialmedia/android/MMWebView;->b:Z

    .line 306
    iget-boolean v2, p0, Lcom/millennialmedia/android/MMAdImpl;->i:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->n:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 307
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    const-string v3, "<html></html>"

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    invoke-virtual {v2, v3, v4, v5}, Lcom/millennialmedia/android/MMWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->d()V

    .line 310
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 277
    :cond_4
    :try_start_2
    sget-object v0, Lcom/millennialmedia/android/MMAdImplController;->f:Ljava/util/Map;

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private static declared-synchronized h(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 5
    .parameter

    .prologue
    .line 162
    const-class v1, Lcom/millennialmedia/android/MMAdImplController;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    .line 163
    iget-object v0, v2, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, v2, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->c()Lcom/millennialmedia/android/MMWebViewClient;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/millennialmedia/android/MMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 165
    iget-object v0, v2, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-virtual {v0, v3, v4}, Lcom/millennialmedia/android/MMWebView;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->isBanner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 171
    iget-object v3, v2, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/MMWebView;->w()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, v2, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v3, p0}, Lcom/millennialmedia/android/MMWebView;->b(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 179
    :cond_0
    :goto_0
    iget-object v3, v2, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/MMWebView;->v()V

    .line 180
    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p0, v2, v0}, Lcom/millennialmedia/android/MMAdImpl;->addView(Lcom/millennialmedia/android/MMWebView;Landroid/widget/RelativeLayout$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_1
    monitor-exit v1

    return-void

    .line 175
    :cond_2
    :try_start_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private i(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 3
    .parameter

    .prologue
    .line 360
    iget-object v0, p1, Lcom/millennialmedia/android/MMAdImpl;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 361
    new-instance v0, Lcom/millennialmedia/android/MMException;

    const-string v1, "MMAdView found with a null apid. New ad requests on this MMAdView are disabled until an apid has been assigned."

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    .line 364
    const-string v1, "MMAdImplController"

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {p1, v0}, Lcom/millennialmedia/android/MMSDK$Event;->a(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->isBanner()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImplController;->j(Lcom/millennialmedia/android/MMAdImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    :cond_2
    monitor-enter p0

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->d:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    if-eqz v0, :cond_3

    .line 374
    const-string v0, "MMAdImplController"

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/millennialmedia/android/MMException;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v0, Lcom/millennialmedia/android/MMException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {p1, v0}, Lcom/millennialmedia/android/MMSDK$Event;->a(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    .line 378
    monitor-exit p0

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 380
    :cond_3
    :try_start_1
    new-instance v0, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;-><init>(Lcom/millennialmedia/android/MMAdImplController;Lcom/millennialmedia/android/MMAdImplController$1;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->d:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    .line 381
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->d:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 382
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized j(Lcom/millennialmedia/android/MMAdImpl;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 387
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v1

    .line 389
    invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/HandShake;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    const-string v1, "MMAdImplController"

    const-string v2, "There is a download in progress. Defering call for new ad"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    new-instance v1, Lcom/millennialmedia/android/MMException;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {p1, v1}, Lcom/millennialmedia/android/MMSDK$Event;->a(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :goto_0
    monitor-exit p0

    return v0

    .line 397
    :cond_0
    :try_start_1
    const-string v2, "MMAdImplController"

    const-string v3, "No download in progress."

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/AdCache;->f(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v2

    .line 403
    if-eqz v2, :cond_1

    .line 406
    const-string v3, "MMAdImplController"

    const-string v4, "Last ad wasn\'t fully downloaded. Download again."

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK$Event;->b(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 408
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2, p0}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 412
    :cond_1
    :try_start_2
    const-string v0, "MMAdImplController"

    const-string v1, "No incomplete downloads."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 414
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/CachedAd;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 444
    invoke-virtual {p2}, Lcom/millennialmedia/android/CachedAd;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const-string v0, "MMAdImplController"

    const-string v1, "%s is expired."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/millennialmedia/android/CachedAd;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const/16 v0, 0x15

    .line 458
    :goto_0
    return v0

    .line 448
    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/millennialmedia/android/CachedAd;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 449
    const-string v0, "MMAdImplController"

    const-string v1, "%s is not on disk."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/millennialmedia/android/CachedAd;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/16 v0, 0x16

    goto :goto_0

    .line 452
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    iget-object v1, p1, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    iget-wide v2, p2, Lcom/millennialmedia/android/CachedAd;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/HandShake;->a(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 454
    const-string v0, "MMAdImplController"

    const-string v1, "%s cannot be shown at this time."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/millennialmedia/android/CachedAd;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/16 v0, 0x18

    goto :goto_0

    .line 458
    :cond_2
    const/16 v0, 0x64

    goto :goto_0
.end method

.method a()V
    .locals 6

    .prologue
    const/16 v5, 0x19

    const/16 v4, 0x10

    const/4 v3, 0x3

    .line 317
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 319
    if-nez v0, :cond_0

    .line 320
    const-string v1, "MMAdImplController"

    invoke-static {v5}, Lcom/millennialmedia/android/MMException;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v1, Lcom/millennialmedia/android/MMException;

    invoke-direct {v1, v5}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->a(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    .line 355
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    new-instance v1, Lcom/millennialmedia/android/MMException;

    invoke-direct {v1, v4}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->a(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    goto :goto_0

    .line 333
    :cond_1
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 334
    const-string v1, "MMAdImplController"

    invoke-static {v3}, Lcom/millennialmedia/android/MMException;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v1, Lcom/millennialmedia/android/MMException;

    invoke-direct {v1, v3}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->a(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    iget-boolean v1, v1, Lcom/millennialmedia/android/HandShake;->b:Z

    if-eqz v1, :cond_3

    .line 342
    const-string v1, "MMAdImplController"

    const-string v2, "The server is no longer allowing ads."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v1, Lcom/millennialmedia/android/MMException;

    invoke-direct {v1, v4}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->a(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    goto :goto_0

    .line 348
    :cond_3
    :try_start_0
    const-string v1, "MMAdImplController"

    const-string v2, "adLayout - requestAd"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdImplController;->i(Lcom/millennialmedia/android/MMAdImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    const-string v1, "MMAdImplController"

    const-string v2, "There was an exception with the ad request. "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method a(Lcom/millennialmedia/android/HttpMMHeaders;)V
    .locals 1
    .parameter

    .prologue
    .line 829
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMWebView;->a(Lcom/millennialmedia/android/HttpMMHeaders;)V

    .line 831
    :cond_0
    return-void
.end method

.method a(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 4
    .parameter

    .prologue
    .line 92
    iget-wide v0, p1, Lcom/millennialmedia/android/MMAdImpl;->n:J

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdImplController;->a(J)Lcom/millennialmedia/android/MMAdImpl;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    iget-wide v1, p1, Lcom/millennialmedia/android/MMAdImpl;->n:J

    iput-wide v1, p0, Lcom/millennialmedia/android/MMAdImplController;->a:J

    .line 95
    iget-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-wide v2, p1, Lcom/millennialmedia/android/MMAdImpl;->h:J

    iput-wide v2, v1, Lcom/millennialmedia/android/MMAdImplController;->a:J

    .line 96
    iget-wide v1, p1, Lcom/millennialmedia/android/MMAdImpl;->h:J

    iput-wide v1, v0, Lcom/millennialmedia/android/MMAdImpl;->n:J

    .line 98
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 419
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 421
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 822
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    .line 823
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1, p1, p2, v0}, Lcom/millennialmedia/android/MMWebView;->a(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdImpl;)V

    .line 825
    :cond_0
    return-void
.end method

.method b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 847
    const/4 v1, 0x0

    .line 848
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 849
    if-eqz v0, :cond_1

    .line 850
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v0

    .line 851
    if-eqz v0, :cond_1

    .line 852
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdImplController;->getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 855
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 856
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 858
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 896
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 897
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-eqz v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1, p1, p2, v0}, Lcom/millennialmedia/android/MMWebView;->a(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdImpl;)V

    .line 900
    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    .line 890
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMWebView;->b(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 892
    :cond_0
    return-void
.end method

.method public downloadCompleted(Lcom/millennialmedia/android/CachedAd;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 427
    if-nez v0, :cond_0

    .line 428
    const-string v0, "MMAdImplController"

    const/16 v1, 0x19

    invoke-static {v1}, Lcom/millennialmedia/android/MMException;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :goto_0
    return-void

    .line 432
    :cond_0
    if-eqz p2, :cond_1

    .line 433
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_1
    if-eqz p2, :cond_2

    .line 436
    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->f(Lcom/millennialmedia/android/MMAdImpl;)V

    goto :goto_0

    .line 438
    :cond_2
    new-instance v1, Lcom/millennialmedia/android/MMException;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->a(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    goto :goto_0
.end method

.method public downloadStart(Lcom/millennialmedia/android/CachedAd;)V
    .locals 0
    .parameter

    .prologue
    .line 885
    return-void
.end method

.method f(Lcom/millennialmedia/android/MMAdImpl;)I
    .locals 3
    .parameter

    .prologue
    .line 463
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/AdCache;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    .line 465
    if-eqz v0, :cond_1

    .line 466
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/millennialmedia/android/CachedAd;->a(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const/4 v0, 0x0

    .line 473
    :goto_0
    return v0

    .line 469
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/android/MMAdImplController;->a(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/CachedAd;)I

    move-result v0

    goto :goto_0

    .line 471
    :cond_1
    const-string v0, "MMAdImplController"

    const-string v1, "No next ad."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/16 v0, 0x14

    goto :goto_0
.end method

.method g(Lcom/millennialmedia/android/MMAdImpl;)I
    .locals 4
    .parameter

    .prologue
    .line 479
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/AdCache;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/millennialmedia/android/CachedAd;->a(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK$Event;->c(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 484
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->k()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/millennialmedia/android/MMAdImpl;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/CachedAd;->a(Landroid/content/Context;J)V

    .line 489
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/android/HandShake;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 492
    const/4 v0, 0x0

    .line 497
    :goto_0
    return v0

    .line 494
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/android/MMAdImplController;->a(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/CachedAd;)I

    move-result v0

    goto :goto_0

    .line 497
    :cond_1
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 842
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 872
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 874
    if-eqz v0, :cond_0

    .line 875
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-LinkInC="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImplController;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " w/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
