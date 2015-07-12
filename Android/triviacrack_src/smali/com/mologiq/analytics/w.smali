.class public Lcom/mologiq/analytics/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mologiq/analytics/x;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
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

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mologiq/analytics/x;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mologiq/analytics/w;->f:Ljava/lang/ref/WeakReference;

    .line 33
    iput-object p2, p0, Lcom/mologiq/analytics/w;->a:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mologiq/analytics/w;->b:Ljava/util/Map;

    .line 36
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iput-object p4, p0, Lcom/mologiq/analytics/w;->c:Ljava/lang/String;

    .line 45
    int-to-long v0, p5

    iput-wide v0, p0, Lcom/mologiq/analytics/w;->d:J

    .line 46
    iput-object p6, p0, Lcom/mologiq/analytics/w;->e:Ljava/lang/String;

    .line 47
    return-void

    .line 36
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 40
    iget-object v3, p0, Lcom/mologiq/analytics/w;->b:Ljava/util/Map;

    .line 41
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 40
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a()V
    .locals 9

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/mologiq/analytics/w;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 82
    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static {v0}, Lcom/mologiq/analytics/ag;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 87
    const/4 v1, 0x1

    move v3, v1

    .line 90
    :goto_1
    invoke-static {}, Lcom/mologiq/analytics/ad;->c()Lcom/mologiq/analytics/ad;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v0}, Lcom/mologiq/analytics/ad;->a(Landroid/content/Context;)V

    .line 93
    new-instance v4, Lcom/mologiq/analytics/c;

    invoke-direct {v4}, Lcom/mologiq/analytics/c;-><init>()V

    .line 95
    invoke-virtual {v1}, Lcom/mologiq/analytics/ad;->n()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {v4, v2}, Lcom/mologiq/analytics/c;->e(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Lcom/mologiq/analytics/ad;->o()Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/mologiq/analytics/c;->a(Z)V

    .line 97
    invoke-virtual {v1}, Lcom/mologiq/analytics/ad;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/mologiq/analytics/c;->f(Ljava/lang/String;)V

    .line 99
    const-string v1, "1.2.9"

    invoke-virtual {v4, v1}, Lcom/mologiq/analytics/c;->a(Ljava/lang/String;)V

    .line 100
    const-string v1, "2014-07-08"

    invoke-virtual {v4, v1}, Lcom/mologiq/analytics/c;->b(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_2
    invoke-virtual {v4, v1}, Lcom/mologiq/analytics/c;->c(Ljava/lang/String;)V

    .line 105
    new-instance v5, Lcom/mologiq/analytics/d;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v4}, Lcom/mologiq/analytics/d;-><init>(Lcom/mologiq/analytics/c;)V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/mologiq/analytics/d;->a(Ljava/lang/Long;)V

    .line 107
    iget-object v1, p0, Lcom/mologiq/analytics/w;->c:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/mologiq/analytics/d;->a(Ljava/lang/String;)V

    .line 108
    iget-wide v1, p0, Lcom/mologiq/analytics/w;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/mologiq/analytics/d;->b(Ljava/lang/Long;)V

    .line 109
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/mologiq/analytics/d;->b(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/mologiq/analytics/w;->b:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mologiq/analytics/w;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 112
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/mologiq/analytics/w;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 122
    invoke-virtual {v5, v6}, Lcom/mologiq/analytics/d;->a(Ljava/util/List;)V

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/mologiq/analytics/w;->e:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/mologiq/analytics/c;->d(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v4, v3}, Lcom/mologiq/analytics/c;->a(I)V

    .line 128
    iget-object v1, p0, Lcom/mologiq/analytics/w;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 144
    invoke-virtual {v4}, Lcom/mologiq/analytics/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mologiq/analytics/w;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mologiq/analytics/ag;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 113
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lcom/mologiq/analytics/w;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    new-instance v8, Lcom/mologiq/analytics/e;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v8, v5}, Lcom/mologiq/analytics/e;-><init>(Lcom/mologiq/analytics/d;)V

    .line 117
    invoke-virtual {v8, v1}, Lcom/mologiq/analytics/e;->a(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v8, v2}, Lcom/mologiq/analytics/e;->b(Ljava/lang/String;)V

    .line 119
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 128
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mologiq/analytics/x;

    .line 130
    sget-object v3, Lcom/mologiq/analytics/x;->a:Lcom/mologiq/analytics/x;

    invoke-virtual {v1, v3}, Lcom/mologiq/analytics/x;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 132
    invoke-virtual {v4, v5}, Lcom/mologiq/analytics/c;->b(Lcom/mologiq/analytics/d;)V

    goto :goto_4

    .line 134
    :cond_6
    sget-object v3, Lcom/mologiq/analytics/x;->b:Lcom/mologiq/analytics/x;

    invoke-virtual {v1, v3}, Lcom/mologiq/analytics/x;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 136
    invoke-virtual {v4, v5}, Lcom/mologiq/analytics/c;->a(Lcom/mologiq/analytics/d;)V

    goto :goto_4

    .line 138
    :cond_7
    sget-object v3, Lcom/mologiq/analytics/x;->c:Lcom/mologiq/analytics/x;

    invoke-virtual {v1, v3}, Lcom/mologiq/analytics/x;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    invoke-virtual {v4, v5}, Lcom/mologiq/analytics/c;->c(Lcom/mologiq/analytics/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_8
    move v3, v1

    goto/16 :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 156
    new-instance v0, Lcom/mologiq/analytics/ag;

    invoke-direct {v0, p1}, Lcom/mologiq/analytics/ag;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-static {p1}, Lcom/mologiq/analytics/ac;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ac;

    move-result-object v7

    .line 160
    invoke-virtual {v7}, Lcom/mologiq/analytics/ac;->e()Ljava/lang/String;

    move-result-object v1

    .line 163
    const/16 v4, 0x1f4

    const/16 v5, 0x3e8

    const/4 v6, 0x1

    move-object v2, p2

    move-object v3, p1

    .line 162
    invoke-virtual/range {v0 .. v6}, Lcom/mologiq/analytics/ag;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 167
    invoke-virtual {v7, v0}, Lcom/mologiq/analytics/ac;->b(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v7, p1}, Lcom/mologiq/analytics/ac;->b(Landroid/content/Context;)Z

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/mologiq/analytics/w;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 56
    if-nez v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {v0}, Lcom/mologiq/analytics/ac;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ac;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/mologiq/analytics/ac;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/mologiq/analytics/w;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mologiq/analytics/ag;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
