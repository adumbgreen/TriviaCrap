.class public Lcom/etermax/gamescommon/dashboard/tabs/a;
.super Ljava/util/Observable;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/etermax/gamescommon/dashboard/tabs/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/dashboard/tabs/a;->a:Ljava/util/Map;

    .line 17
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/tabs/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/dashboard/tabs/b;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/dashboard/tabs/b;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
