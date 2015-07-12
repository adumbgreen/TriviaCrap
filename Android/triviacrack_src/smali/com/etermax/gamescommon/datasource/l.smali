.class public Lcom/etermax/gamescommon/datasource/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field b:Lcom/etermax/gamescommon/f/a/c;

.field c:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/f/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/etermax/gamescommon/f/b/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/f/b/b;-><init>()V

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/b;->a(Ljava/lang/Integer;)Lcom/etermax/gamescommon/f/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/l;->b:Lcom/etermax/gamescommon/f/a/c;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/f/a/c;->a(Lcom/etermax/gamescommon/f/b/b;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    monitor-exit p0

    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/etermax/gamescommon/f/a/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/l;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/f/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/l;->b:Lcom/etermax/gamescommon/f/a/c;

    .line 30
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/l;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/l;->c:Landroid/app/NotificationManager;

    .line 31
    return-void
.end method

.method public declared-synchronized a(IJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/l;->c:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 105
    new-instance v0, Lcom/etermax/gamescommon/f/b/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/f/b/b;-><init>()V

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/b;->a(Ljava/lang/Integer;)Lcom/etermax/gamescommon/f/b/b;

    .line 107
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/b;->b(Ljava/lang/Long;)Lcom/etermax/gamescommon/f/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :try_start_1
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/l;->b:Lcom/etermax/gamescommon/f/a/c;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/f/a/c;->b(Lcom/etermax/gamescommon/f/b/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :goto_0
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/etermax/gamescommon/f/b/b;)V
    .locals 5
    .parameter

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    const-string v0, "Notification"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    new-instance v0, Lcom/etermax/gamescommon/f/b/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/f/b/b;-><init>()V

    .line 42
    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/b;->a(Ljava/lang/Integer;)Lcom/etermax/gamescommon/f/b/b;

    .line 43
    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/b;->a(Ljava/lang/Long;)Lcom/etermax/gamescommon/f/b/b;

    .line 44
    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/b;->b(Ljava/lang/Long;)Lcom/etermax/gamescommon/f/b/b;

    .line 45
    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->f()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/b;->b(Ljava/lang/Integer;)V

    .line 46
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/l;->b:Lcom/etermax/gamescommon/f/a/c;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->c()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Lcom/etermax/gamescommon/f/b/b;->f()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/etermax/gamescommon/f/a/c;->a(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/f/b/b;

    .line 49
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/f/b/b;->a(Lcom/etermax/gamescommon/f/b/b;)V

    .line 50
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/l;->b:Lcom/etermax/gamescommon/f/a/c;

    const-class v2, Lcom/etermax/gamescommon/f/b/b;

    invoke-virtual {v1, v2, v0}, Lcom/etermax/gamescommon/f/a/c;->a(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    :goto_0
    monitor-exit p0

    return-void

    .line 53
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/l;->b:Lcom/etermax/gamescommon/f/a/c;

    const-class v1, Lcom/etermax/gamescommon/f/b/b;

    invoke-virtual {v0, v1, p1}, Lcom/etermax/gamescommon/f/a/c;->b(Ljava/lang/Class;Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/l;->c:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 88
    new-instance v0, Lcom/etermax/gamescommon/f/b/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/f/b/b;-><init>()V

    .line 89
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/f/b/b;->a(Ljava/lang/Integer;)Lcom/etermax/gamescommon/f/b/b;

    .line 90
    invoke-virtual {v0, p2}, Lcom/etermax/gamescommon/f/b/b;->a(Ljava/lang/Long;)Lcom/etermax/gamescommon/f/b/b;

    .line 91
    invoke-virtual {v0, p3}, Lcom/etermax/gamescommon/f/b/b;->b(Ljava/lang/Long;)Lcom/etermax/gamescommon/f/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/l;->b:Lcom/etermax/gamescommon/f/a/c;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/f/a/c;->b(Lcom/etermax/gamescommon/f/b/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    :goto_0
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/l;->c:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/l;->b:Lcom/etermax/gamescommon/f/a/c;

    const-class v1, Lcom/etermax/gamescommon/f/b/b;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/a/c;->a(Ljava/lang/Class;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    :goto_0
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized b(I)V
    .locals 2
    .parameter

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/l;->c:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 120
    new-instance v0, Lcom/etermax/gamescommon/f/b/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/f/b/b;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/b;->a(Ljava/lang/Integer;)Lcom/etermax/gamescommon/f/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 122
    :try_start_1
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/l;->b:Lcom/etermax/gamescommon/f/a/c;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/f/a/c;->b(Lcom/etermax/gamescommon/f/b/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method
