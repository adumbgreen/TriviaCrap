.class public Lcom/mologiq/analytics/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/mologiq/analytics/s;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mologiq/analytics/s;->a:Ljava/lang/ref/WeakReference;

    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mologiq/analytics/s;
    .locals 1
    .parameter

    .prologue
    .line 44
    sget-object v0, Lcom/mologiq/analytics/s;->b:Lcom/mologiq/analytics/s;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/mologiq/analytics/s;

    invoke-direct {v0, p0}, Lcom/mologiq/analytics/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mologiq/analytics/s;->b:Lcom/mologiq/analytics/s;

    .line 49
    :cond_0
    sget-object v0, Lcom/mologiq/analytics/s;->b:Lcom/mologiq/analytics/s;

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mologiq/analytics/k;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 356
    const/4 v1, 0x0

    .line 358
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    return-object v1

    .line 358
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mologiq/analytics/k;

    .line 360
    const/4 v2, 0x1

    .line 362
    invoke-virtual {v0}, Lcom/mologiq/analytics/k;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 364
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 366
    invoke-virtual {v0}, Lcom/mologiq/analytics/k;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 370
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 376
    :cond_2
    invoke-virtual {v0}, Lcom/mologiq/analytics/k;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 378
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 380
    invoke-virtual {v0}, Lcom/mologiq/analytics/k;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 384
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v3

    .line 390
    :cond_3
    if-eqz v2, :cond_0

    .line 392
    if-nez v1, :cond_4

    .line 394
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 397
    :cond_4
    invoke-virtual {v0}, Lcom/mologiq/analytics/k;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mologiq/analytics/aa;

    .line 399
    invoke-virtual {v0}, Lcom/mologiq/analytics/aa;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mologiq/analytics/aa;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/mologiq/analytics/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 228
    if-nez v3, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 343
    :goto_0
    return-object v0

    .line 231
    :cond_0
    invoke-static {v3}, Lcom/mologiq/analytics/ac;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ac;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Lcom/mologiq/analytics/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const/4 v0, 0x0

    goto :goto_0

    .line 238
    :cond_1
    if-nez p2, :cond_a

    .line 240
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 243
    :goto_1
    invoke-static {}, Lcom/mologiq/analytics/ad;->c()Lcom/mologiq/analytics/ad;

    move-result-object v1

    .line 244
    invoke-virtual {v1, v3}, Lcom/mologiq/analytics/ad;->a(Landroid/content/Context;)V

    .line 246
    invoke-virtual {v2}, Lcom/mologiq/analytics/ac;->s()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/mologiq/analytics/ac;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 250
    invoke-virtual {v2}, Lcom/mologiq/analytics/ac;->s()Ljava/util/List;

    move-result-object v0

    .line 251
    invoke-virtual {v1}, Lcom/mologiq/analytics/ad;->A()Ljava/util/List;

    move-result-object v4

    .line 249
    invoke-direct {p0, v0, v4}, Lcom/mologiq/analytics/s;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_2

    .line 254
    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 259
    :cond_2
    invoke-static {}, Lcom/mologiq/analytics/y;->b()Lcom/mologiq/analytics/y;

    move-result-object v8

    .line 260
    invoke-virtual {v8, v3}, Lcom/mologiq/analytics/y;->a(Landroid/content/Context;)V

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 265
    invoke-virtual {v8}, Lcom/mologiq/analytics/y;->d()J

    move-result-wide v4

    .line 264
    sub-long v4, v9, v4

    .line 266
    invoke-virtual {v2}, Lcom/mologiq/analytics/ac;->l()J

    move-result-wide v11

    cmp-long v0, v4, v11

    if-lez v0, :cond_6

    .line 269
    new-instance v0, Lcom/mologiq/analytics/ag;

    invoke-direct {v0, v3}, Lcom/mologiq/analytics/ag;-><init>(Landroid/content/Context;)V

    .line 271
    new-instance v4, Lcom/mologiq/analytics/ab;

    invoke-direct {v4}, Lcom/mologiq/analytics/ab;-><init>()V

    .line 274
    invoke-virtual {v1}, Lcom/mologiq/analytics/ad;->n()Ljava/lang/String;

    move-result-object v5

    .line 273
    invoke-virtual {v4, v5}, Lcom/mologiq/analytics/ab;->e(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1}, Lcom/mologiq/analytics/ad;->o()Z

    move-result v5

    .line 276
    invoke-virtual {v4, v5}, Lcom/mologiq/analytics/ab;->a(Z)V

    .line 279
    invoke-virtual {v1}, Lcom/mologiq/analytics/ad;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/mologiq/analytics/ab;->f(Ljava/lang/String;)V

    .line 281
    const-string v1, "1.2.9"

    invoke-virtual {v4, v1}, Lcom/mologiq/analytics/ab;->b(Ljava/lang/String;)V

    .line 282
    const-string v1, "2014-07-08"

    invoke-virtual {v4, v1}, Lcom/mologiq/analytics/ab;->c(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, ""

    :goto_2
    invoke-virtual {v4, v1}, Lcom/mologiq/analytics/ab;->a(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v4, p1}, Lcom/mologiq/analytics/ab;->d(Ljava/lang/String;)V

    .line 290
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 292
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 294
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    .line 306
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 308
    invoke-virtual {v4, v5}, Lcom/mologiq/analytics/ab;->a(Ljava/util/List;)V

    .line 313
    :cond_4
    invoke-virtual {v2}, Lcom/mologiq/analytics/ac;->g()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-virtual {v4}, Lcom/mologiq/analytics/ab;->a()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1f4

    .line 315
    const/16 v5, 0x3e8

    const/4 v6, 0x1

    .line 312
    invoke-virtual/range {v0 .. v6}, Lcom/mologiq/analytics/ag;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 319
    invoke-virtual {v8, v0}, Lcom/mologiq/analytics/y;->b(Ljava/lang/String;)V

    .line 323
    :cond_5
    invoke-virtual {v8, v9, v10}, Lcom/mologiq/analytics/y;->a(J)V

    .line 324
    invoke-virtual {v8, v3}, Lcom/mologiq/analytics/y;->b(Landroid/content/Context;)Z

    .line 328
    :cond_6
    invoke-virtual {v8}, Lcom/mologiq/analytics/y;->c()Ljava/util/Map;

    move-result-object v0

    .line 330
    if-eqz v7, :cond_7

    if-eqz v0, :cond_7

    .line 332
    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_7
    move-object v0, v7

    .line 335
    goto/16 :goto_0

    .line 286
    :cond_8
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 294
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 296
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 298
    new-instance v11, Lcom/mologiq/analytics/aa;

    invoke-direct {v11}, Lcom/mologiq/analytics/aa;-><init>()V

    .line 299
    invoke-virtual {v11, v1}, Lcom/mologiq/analytics/aa;->a(Ljava/lang/String;)V

    .line 301
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 300
    invoke-virtual {v11, v1}, Lcom/mologiq/analytics/aa;->b(Ljava/lang/String;)V

    .line 302
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 338
    :catch_0
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mologiq/analytics/ag;->a(Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    move-object v7, p2

    goto/16 :goto_1
.end method

.method public a()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/mologiq/analytics/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 119
    if-nez v1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    sget-object v0, Lcom/mologiq/analytics/x;->a:Lcom/mologiq/analytics/x;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/mologiq/analytics/w;

    move-object v3, p3

    move-object v4, p1

    move v5, p2

    move-object v6, p4

    .line 126
    invoke-direct/range {v0 .. v6}, Lcom/mologiq/analytics/w;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 125
    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 128
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mologiq/analytics/ag;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/mologiq/analytics/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 195
    if-nez v1, :cond_0

    .line 212
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    sget-object v0, Lcom/mologiq/analytics/x;->c:Lcom/mologiq/analytics/x;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/mologiq/analytics/w;

    move-object v3, p3

    move-object v4, p1

    move v5, p2

    move-object v6, p5

    .line 202
    invoke-direct/range {v0 .. v6}, Lcom/mologiq/analytics/w;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 201
    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 204
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mologiq/analytics/ag;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public b(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/mologiq/analytics/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 156
    if-nez v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    sget-object v0, Lcom/mologiq/analytics/x;->a:Lcom/mologiq/analytics/x;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/mologiq/analytics/x;->b:Lcom/mologiq/analytics/x;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/mologiq/analytics/w;

    move-object v3, p3

    move-object v4, p1

    move v5, p2

    move-object v6, p4

    .line 164
    invoke-direct/range {v0 .. v6}, Lcom/mologiq/analytics/w;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 166
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mologiq/analytics/ag;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/mologiq/analytics/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 68
    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mologiq/analytics/t;

    invoke-direct {v2, v0}, Lcom/mologiq/analytics/t;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 72
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MologiqAnalytics"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mologiq/analytics/ag;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/mologiq/analytics/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 88
    invoke-static {}, Lcom/mologiq/analytics/f;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    if-nez v0, :cond_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mologiq/analytics/ag;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
