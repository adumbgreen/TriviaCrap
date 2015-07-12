.class public Lcom/smartadserver/android/library/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/smartadserver/android/library/b/e;

.field private static m:J


# instance fields
.field private d:Lorg/apache/http/client/HttpClient;

.field private e:Landroid/content/Context;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/http/client/methods/HttpGet;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lorg/apache/http/client/methods/HttpGet;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Ljava/util/Timer;

.field private l:Ljava/util/TimerTask;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-class v0, Lcom/smartadserver/android/library/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/b/e;->a:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/smartadserver/android/library/b/e;->b:Ljava/lang/Object;

    .line 51
    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/smartadserver/android/library/b/e;->m:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/smartadserver/android/library/b/e;->j:I

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/b/e;->g:Ljava/util/Vector;

    .line 99
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/b/e;->h:Ljava/util/Vector;

    .line 101
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/b/e;->i:Ljava/util/Hashtable;

    .line 102
    invoke-static {p1}, Lcom/smartadserver/android/library/h/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/b/e;->n:Ljava/lang/String;

    .line 103
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/b/e;->b(Landroid/content/Context;)V

    .line 107
    sget-object v1, Lcom/smartadserver/android/library/b/e;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->e:Landroid/content/Context;

    const-string v2, "SmartAdServerCache"

    const-string v3, "pendingURLCalls.bin"

    invoke-static {v0, v2, v3}, Lcom/smartadserver/android/library/h/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 111
    iget-object v2, p0, Lcom/smartadserver/android/library/b/e;->e:Landroid/content/Context;

    const-string v3, "SmartAdServerCache"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 112
    new-instance v3, Ljava/io/File;

    const-string v4, "pendingURLCalls.bin"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    invoke-static {v3}, Lcom/smartadserver/android/library/h/b;->a(Ljava/io/File;)V

    .line 114
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/smartadserver/android/library/b/e;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 123
    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/smartadserver/android/library/b/e;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 56
    const-class v2, Lcom/smartadserver/android/library/b/e;

    monitor-enter v2

    if-eqz p0, :cond_0

    .line 57
    const/4 v1, 0x0

    .line 58
    :try_start_0
    sget-object v3, Lcom/smartadserver/android/library/b/e;->c:Lcom/smartadserver/android/library/b/e;

    if-nez v3, :cond_1

    .line 59
    new-instance v1, Lcom/smartadserver/android/library/b/e;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/b/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/smartadserver/android/library/b/e;->c:Lcom/smartadserver/android/library/b/e;

    .line 66
    :goto_0
    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smartadserver/android/library/b/e$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/b/e$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    :cond_0
    sget-object v0, Lcom/smartadserver/android/library/b/e;->c:Lcom/smartadserver/android/library/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 61
    :cond_1
    :try_start_1
    sget-object v3, Lcom/smartadserver/android/library/b/e;->c:Lcom/smartadserver/android/library/b/e;

    iget-object v3, v3, Lcom/smartadserver/android/library/b/e;->e:Landroid/content/Context;

    if-nez v3, :cond_2

    .line 62
    sget-object v1, Lcom/smartadserver/android/library/b/e;->c:Lcom/smartadserver/android/library/b/e;

    invoke-virtual {v1, p0}, Lcom/smartadserver/android/library/b/e;->b(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/b/e;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/smartadserver/android/library/b/e;->b()V

    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/b/e;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/b/e;->a(Lorg/apache/http/client/methods/HttpGet;)V

    return-void
.end method

.method private a(Lorg/apache/http/client/methods/HttpGet;)V
    .locals 5
    .parameter

    .prologue
    .line 184
    sget-object v1, Lcom/smartadserver/android/library/b/e;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->g:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->h:Ljava/util/Vector;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/smartadserver/android/library/b/e;->h:Ljava/util/Vector;

    const-string v3, "SmartAdServerCache"

    const-string v4, "pendingURLCalls.bin"

    invoke-static {v0, v2, v3, v4}, Lcom/smartadserver/android/library/h/b;->a(Landroid/content/Context;Ljava/io/Serializable;Ljava/lang/String;Ljava/lang/String;)Z

    .line 188
    monitor-exit v1

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lorg/apache/http/client/methods/HttpGet;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 240
    new-instance v0, Lcom/smartadserver/android/library/b/a;

    iget-object v1, p0, Lcom/smartadserver/android/library/b/e;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/b/a;-><init>(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/smartadserver/android/library/b/e;->d:Lorg/apache/http/client/HttpClient;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/smartadserver/android/library/b/e;->d:Lorg/apache/http/client/HttpClient;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/b/a;->a(Lorg/apache/http/client/HttpClient;)V

    .line 246
    :cond_0
    new-instance v1, Lcom/smartadserver/android/library/b/e$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/smartadserver/android/library/b/e$3;-><init>(Lcom/smartadserver/android/library/b/e;Lorg/apache/http/client/methods/HttpGet;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/smartadserver/android/library/b/a;->a(Lorg/apache/http/client/methods/HttpGet;Lcom/smartadserver/android/library/b/d;)V

    .line 282
    return-void
.end method

.method static synthetic b(Lcom/smartadserver/android/library/b/e;)Ljava/util/Hashtable;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->i:Ljava/util/Hashtable;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 2

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->e:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartadserver/android/library/h/c;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/smartadserver/android/library/b/e;->c()Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 176
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/smartadserver/android/library/b/e;->a(Lorg/apache/http/client/methods/HttpGet;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()Lorg/apache/http/client/methods/HttpGet;
    .locals 6

    .prologue
    .line 192
    .line 193
    sget-object v1, Lcom/smartadserver/android/library/b/e;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->g:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpGet;

    .line 195
    iget-object v2, p0, Lcom/smartadserver/android/library/b/e;->h:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 196
    iget-object v2, p0, Lcom/smartadserver/android/library/b/e;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/smartadserver/android/library/b/e;->h:Ljava/util/Vector;

    const-string v4, "SmartAdServerCache"

    const-string v5, "pendingURLCalls.bin"

    invoke-static {v2, v3, v4, v5}, Lcom/smartadserver/android/library/h/b;->a(Landroid/content/Context;Ljava/io/Serializable;Ljava/lang/String;Ljava/lang/String;)Z

    .line 197
    monitor-exit v1

    .line 198
    return-object v0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected declared-synchronized a()V
    .locals 4

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->k:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/util/Timer;

    const-string v1, "DelayedURLCallTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/b/e;->k:Ljava/util/Timer;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->l:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->l:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 295
    :cond_1
    new-instance v0, Lcom/smartadserver/android/library/b/e$4;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/b/e$4;-><init>(Lcom/smartadserver/android/library/b/e;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/b/e;->l:Ljava/util/TimerTask;

    .line 300
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->k:Ljava/util/Timer;

    iget-object v1, p0, Lcom/smartadserver/android/library/b/e;->l:Ljava/util/TimerTask;

    sget-wide v2, Lcom/smartadserver/android/library/b/e;->m:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    const-string v0, "["

    const-string v1, "%5B"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v2, "%5D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 210
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->e:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 215
    :cond_1
    const/4 v1, 0x0

    .line 217
    :try_start_1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    :goto_1
    if-eqz v0, :cond_0

    .line 225
    if-eqz p2, :cond_2

    .line 226
    :try_start_2
    iget-object v1, p0, Lcom/smartadserver/android/library/b/e;->i:Ljava/util/Hashtable;

    iget v2, p0, Lcom/smartadserver/android/library/b/e;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/smartadserver/android/library/b/e;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/smartadserver/android/library/h/c;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    invoke-direct {p0, v0, p2}, Lcom/smartadserver/android/library/b/e;->a(Lorg/apache/http/client/methods/HttpGet;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 218
    :catch_0
    move-exception v0

    .line 220
    :try_start_3
    iget-object v3, p0, Lcom/smartadserver/android/library/b/e;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/smartadserver/android/library/b/e;->n:Ljava/lang/String;

    sget-object v5, Lcom/smartadserver/android/library/b/e;->a:Ljava/lang/String;

    invoke-static {v3, v2, v0, v4, v5}, Lcom/smartadserver/android/library/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 231
    :cond_3
    if-eqz p2, :cond_0

    .line 232
    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/b/e;->a(Lorg/apache/http/client/methods/HttpGet;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->e:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->e:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->f:Landroid/content/BroadcastReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 134
    :try_start_2
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/smartadserver/android/library/b/e;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    const-string v0, "SASHttpRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UN-REGISTER for context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/b/e;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    :cond_2
    :goto_1
    :try_start_3
    iput-object p1, p0, Lcom/smartadserver/android/library/b/e;->e:Landroid/content/Context;

    .line 143
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->f:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    .line 144
    new-instance v0, Lcom/smartadserver/android/library/b/e$2;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/b/e$2;-><init>(Lcom/smartadserver/android/library/b/e;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/b/e;->f:Landroid/content/BroadcastReceiver;

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->e:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/smartadserver/android/library/b/e;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/smartadserver/android/library/b/e;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    const-string v0, "SASHttpRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach to context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/b/e;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 159
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->k:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/b/e;->k:Ljava/util/Timer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    goto :goto_1
.end method
