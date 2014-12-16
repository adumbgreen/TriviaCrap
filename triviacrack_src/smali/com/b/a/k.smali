.class Lcom/b/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/b/a/m;

.field final b:Landroid/content/Context;

.field final c:Ljava/util/concurrent/ExecutorService;

.field final d:Lcom/b/a/o;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/b/a/d;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field final g:Landroid/os/Handler;

.field final h:Landroid/os/Handler;

.field final i:Lcom/b/a/e;

.field final j:Lcom/b/a/am;

.field final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/d;",
            ">;"
        }
    .end annotation
.end field

.field final l:Lcom/b/a/n;

.field final m:Z

.field n:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/b/a/o;Lcom/b/a/e;Lcom/b/a/am;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/b/a/m;

    invoke-direct {v0}, Lcom/b/a/m;-><init>()V

    iput-object v0, p0, Lcom/b/a/k;->a:Lcom/b/a/m;

    .line 93
    iget-object v0, p0, Lcom/b/a/k;->a:Lcom/b/a/m;

    invoke-virtual {v0}, Lcom/b/a/m;->start()V

    .line 94
    iput-object p1, p0, Lcom/b/a/k;->b:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/b/a/k;->c:Ljava/util/concurrent/ExecutorService;

    .line 96
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/k;->e:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/k;->f:Ljava/util/Map;

    .line 98
    new-instance v0, Lcom/b/a/l;

    iget-object v1, p0, Lcom/b/a/k;->a:Lcom/b/a/m;

    invoke-virtual {v1}, Lcom/b/a/m;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/b/a/l;-><init>(Landroid/os/Looper;Lcom/b/a/k;)V

    iput-object v0, p0, Lcom/b/a/k;->g:Landroid/os/Handler;

    .line 99
    iput-object p4, p0, Lcom/b/a/k;->d:Lcom/b/a/o;

    .line 100
    iput-object p3, p0, Lcom/b/a/k;->h:Landroid/os/Handler;

    .line 101
    iput-object p5, p0, Lcom/b/a/k;->i:Lcom/b/a/e;

    .line 102
    iput-object p6, p0, Lcom/b/a/k;->j:Lcom/b/a/am;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/k;->k:Ljava/util/List;

    .line 104
    iget-object v0, p0, Lcom/b/a/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/a/au;->d(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/k;->n:Z

    .line 105
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/b/a/au;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/k;->m:Z

    .line 106
    new-instance v0, Lcom/b/a/n;

    invoke-direct {v0, p0}, Lcom/b/a/n;-><init>(Lcom/b/a/k;)V

    iput-object v0, p0, Lcom/b/a/k;->l:Lcom/b/a/n;

    .line 107
    iget-object v0, p0, Lcom/b/a/k;->l:Lcom/b/a/n;

    invoke-virtual {v0}, Lcom/b/a/n;->a()V

    .line 108
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/d;

    .line 322
    invoke-virtual {v0}, Lcom/b/a/d;->k()Lcom/b/a/aa;

    move-result-object v0

    .line 323
    iget-boolean v0, v0, Lcom/b/a/aa;->k:Z

    if-eqz v0, :cond_0

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/d;

    .line 326
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_2
    invoke-static {v0}, Lcom/b/a/au;->a(Lcom/b/a/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 329
    :cond_3
    const-string v0, "Dispatcher"

    const-string v2, "delivered"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 273
    iget-object v0, p0, Lcom/b/a/k;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/b/a/k;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 275
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a;

    .line 277
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 278
    invoke-virtual {v0}, Lcom/b/a/a;->h()Lcom/b/a/aa;

    move-result-object v2

    iget-boolean v2, v2, Lcom/b/a/aa;->k:Z

    if-eqz v2, :cond_0

    .line 279
    const-string v2, "Dispatcher"

    const-string v3, "replaying"

    invoke-virtual {v0}, Lcom/b/a/a;->c()Lcom/b/a/ai;

    move-result-object v4

    invoke-virtual {v4}, Lcom/b/a/ai;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_0
    invoke-virtual {p0, v0}, Lcom/b/a/k;->c(Lcom/b/a/a;)V

    goto :goto_0

    .line 284
    :cond_1
    return-void
.end method

.method private e(Lcom/b/a/a;)V
    .locals 2
    .parameter

    .prologue
    .line 302
    invoke-virtual {p1}, Lcom/b/a/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_0

    .line 304
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/b/a/a;->i:Z

    .line 305
    iget-object v1, p0, Lcom/b/a/k;->f:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_0
    return-void
.end method

.method private f(Lcom/b/a/d;)V
    .locals 4
    .parameter

    .prologue
    .line 287
    invoke-virtual {p1}, Lcom/b/a/d;->j()Lcom/b/a/a;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0, v0}, Lcom/b/a/k;->e(Lcom/b/a/a;)V

    .line 291
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/d;->l()Ljava/util/List;

    move-result-object v2

    .line 292
    if-eqz v2, :cond_1

    .line 294
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 295
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a;

    .line 296
    invoke-direct {p0, v0}, Lcom/b/a/k;->e(Lcom/b/a/a;)V

    .line 294
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 299
    :cond_1
    return-void
.end method

.method private g(Lcom/b/a/d;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x7

    .line 310
    invoke-virtual {p1}, Lcom/b/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/b/a/k;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, p0, Lcom/b/a/k;->g:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/b/a/k;->g:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 243
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/k;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 244
    iget-object v1, p0, Lcom/b/a/k;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 245
    iget-object v1, p0, Lcom/b/a/k;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/b/a/k;->h:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 246
    invoke-direct {p0, v0}, Lcom/b/a/k;->a(Ljava/util/List;)V

    .line 247
    return-void
.end method

.method a(Landroid/net/NetworkInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/b/a/k;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/b/a/k;->g:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    return-void
.end method

.method a(Lcom/b/a/a;)V
    .locals 3
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/b/a/k;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/b/a/k;->g:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    return-void
.end method

.method a(Lcom/b/a/d;)V
    .locals 3
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/b/a/k;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/b/a/k;->g:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    return-void
.end method

.method a(Lcom/b/a/d;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/b/a/d;->k()Lcom/b/a/aa;

    move-result-object v0

    iget-boolean v0, v0, Lcom/b/a/aa;->k:Z

    if-eqz v0, :cond_0

    .line 251
    const-string v1, "Dispatcher"

    const-string v2, "batched"

    invoke-static {p1}, Lcom/b/a/au;->a(Lcom/b/a/d;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "for error"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_1

    const-string v0, " (will replay)"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/b/a/k;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/b/a/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-direct {p0, p1}, Lcom/b/a/k;->g(Lcom/b/a/d;)V

    .line 256
    return-void

    .line 251
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v2, p0, Lcom/b/a/k;->g:Landroid/os/Handler;

    iget-object v3, p0, Lcom/b/a/k;->g:Landroid/os/Handler;

    const/16 v4, 0xa

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    return-void

    :cond_0
    move v0, v1

    .line 141
    goto :goto_0
.end method

.method b(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/b/a/k;->c:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Lcom/b/a/ah;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/b/a/k;->c:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Lcom/b/a/ah;

    invoke-virtual {v0, p1}, Lcom/b/a/ah;->a(Landroid/net/NetworkInfo;)V

    .line 267
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/b/a/k;->b()V

    .line 270
    :cond_1
    return-void
.end method

.method b(Lcom/b/a/a;)V
    .locals 3
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/b/a/k;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/b/a/k;->g:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void
.end method

.method b(Lcom/b/a/d;)V
    .locals 4
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/b/a/k;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/b/a/k;->g:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 130
    return-void
.end method

.method b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/b/a/k;->n:Z

    .line 260
    return-void
.end method

.method c(Lcom/b/a/a;)V
    .locals 7
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/b/a/k;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/b/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/d;

    .line 147
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0, p1}, Lcom/b/a/d;->a(Lcom/b/a/a;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/b/a/k;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {p1}, Lcom/b/a/a;->h()Lcom/b/a/aa;

    move-result-object v0

    iget-boolean v0, v0, Lcom/b/a/aa;->k:Z

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "Dispatcher"

    const-string v1, "ignored"

    iget-object v2, p1, Lcom/b/a/a;->b:Lcom/b/a/ai;

    invoke-virtual {v2}, Lcom/b/a/ai;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "because shut down"

    invoke-static {v0, v1, v2, v3}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/b/a/k;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/b/a/a;->h()Lcom/b/a/aa;

    move-result-object v1

    iget-object v3, p0, Lcom/b/a/k;->i:Lcom/b/a/e;

    iget-object v4, p0, Lcom/b/a/k;->j:Lcom/b/a/am;

    iget-object v6, p0, Lcom/b/a/k;->d:Lcom/b/a/o;

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/b/a/d;->a(Landroid/content/Context;Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;Lcom/b/a/o;)Lcom/b/a/d;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/b/a/k;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/d;->k:Ljava/util/concurrent/Future;

    .line 161
    iget-object v1, p0, Lcom/b/a/k;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/b/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/b/a/k;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/b/a/a;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {p1}, Lcom/b/a/a;->h()Lcom/b/a/aa;

    move-result-object v0

    iget-boolean v0, v0, Lcom/b/a/aa;->k:Z

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "Dispatcher"

    const-string v1, "enqueued"

    iget-object v2, p1, Lcom/b/a/a;->b:Lcom/b/a/ai;

    invoke-virtual {v2}, Lcom/b/a/ai;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method c(Lcom/b/a/d;)V
    .locals 3
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/b/a/k;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/b/a/k;->g:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    return-void
.end method

.method d(Lcom/b/a/a;)V
    .locals 4
    .parameter

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/b/a/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 171
    iget-object v0, p0, Lcom/b/a/k;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/d;

    .line 172
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p1}, Lcom/b/a/d;->b(Lcom/b/a/a;)V

    .line 174
    invoke-virtual {v0}, Lcom/b/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/b/a/k;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {p1}, Lcom/b/a/a;->h()Lcom/b/a/aa;

    move-result-object v0

    iget-boolean v0, v0, Lcom/b/a/aa;->k:Z

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "Dispatcher"

    const-string v1, "canceled"

    invoke-virtual {p1}, Lcom/b/a/a;->c()Lcom/b/a/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/ai;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/b/a/k;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/b/a/a;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a;

    .line 182
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/b/a/a;->h()Lcom/b/a/aa;

    move-result-object v1

    iget-boolean v1, v1, Lcom/b/a/aa;->k:Z

    if-eqz v1, :cond_1

    .line 183
    const-string v1, "Dispatcher"

    const-string v2, "canceled"

    invoke-virtual {v0}, Lcom/b/a/a;->c()Lcom/b/a/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ai;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "from replaying"

    invoke-static {v1, v2, v0, v3}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_1
    return-void
.end method

.method d(Lcom/b/a/d;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    invoke-virtual {p1}, Lcom/b/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/b/a/k;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {p0, p1, v2}, Lcom/b/a/k;->a(Lcom/b/a/d;Z)V

    goto :goto_0

    .line 195
    :cond_2
    const/4 v0, 0x0

    .line 196
    iget-boolean v3, p0, Lcom/b/a/k;->m:Z

    if-eqz v3, :cond_9

    .line 197
    iget-object v0, p0, Lcom/b/a/k;->b:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-static {v0, v3}, Lcom/b/a/au;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 198
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    move-object v3, v0

    .line 201
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 202
    :goto_2
    iget-boolean v4, p0, Lcom/b/a/k;->n:Z

    invoke-virtual {p1, v4, v3}, Lcom/b/a/d;->a(ZLandroid/net/NetworkInfo;)Z

    move-result v3

    .line 203
    invoke-virtual {p1}, Lcom/b/a/d;->f()Z

    move-result v4

    .line 205
    if-nez v3, :cond_5

    .line 207
    iget-boolean v0, p0, Lcom/b/a/k;->m:Z

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 208
    :goto_3
    invoke-virtual {p0, p1, v1}, Lcom/b/a/k;->a(Lcom/b/a/d;Z)V

    .line 209
    if-eqz v1, :cond_0

    .line 210
    invoke-direct {p0, p1}, Lcom/b/a/k;->f(Lcom/b/a/d;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 201
    goto :goto_2

    :cond_4
    move v1, v2

    .line 207
    goto :goto_3

    .line 216
    :cond_5
    iget-boolean v1, p0, Lcom/b/a/k;->m:Z

    if-eqz v1, :cond_6

    if-eqz v0, :cond_8

    .line 217
    :cond_6
    invoke-virtual {p1}, Lcom/b/a/d;->k()Lcom/b/a/aa;

    move-result-object v0

    iget-boolean v0, v0, Lcom/b/a/aa;->k:Z

    if-eqz v0, :cond_7

    .line 218
    const-string v0, "Dispatcher"

    const-string v1, "retrying"

    invoke-static {p1}, Lcom/b/a/au;->a(Lcom/b/a/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_7
    iget-object v0, p0, Lcom/b/a/k;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lcom/b/a/d;->k:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 224
    :cond_8
    invoke-virtual {p0, p1, v4}, Lcom/b/a/k;->a(Lcom/b/a/d;Z)V

    .line 226
    if-eqz v4, :cond_0

    .line 227
    invoke-direct {p0, p1}, Lcom/b/a/k;->f(Lcom/b/a/d;)V

    goto :goto_0

    :cond_9
    move-object v3, v0

    goto :goto_1
.end method

.method e(Lcom/b/a/d;)V
    .locals 4
    .parameter

    .prologue
    .line 232
    invoke-virtual {p1}, Lcom/b/a/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/b/a/k;->i:Lcom/b/a/e;

    invoke-virtual {p1}, Lcom/b/a/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/b/a/d;->g()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/b/a/e;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/b/a/k;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/b/a/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-direct {p0, p1}, Lcom/b/a/k;->g(Lcom/b/a/d;)V

    .line 237
    invoke-virtual {p1}, Lcom/b/a/d;->k()Lcom/b/a/aa;

    move-result-object v0

    iget-boolean v0, v0, Lcom/b/a/aa;->k:Z

    if-eqz v0, :cond_1

    .line 238
    const-string v0, "Dispatcher"

    const-string v1, "batched"

    invoke-static {p1}, Lcom/b/a/au;->a(Lcom/b/a/d;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "for completion"

    invoke-static {v0, v1, v2, v3}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_1
    return-void
.end method
