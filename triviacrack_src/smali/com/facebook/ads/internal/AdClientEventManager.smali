.class public Lcom/facebook/ads/internal/AdClientEventManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static clientEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/AdClientEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/AdClientEventManager;->clientEvents:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addClientEvent(Lcom/facebook/ads/internal/AdClientEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    sget-object v1, Lcom/facebook/ads/internal/AdClientEventManager;->clientEvents:Ljava/util/List;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/facebook/ads/internal/AdClientEventManager;->clientEvents:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    monitor-exit v1

    .line 36
    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static dumpClientEventToJson()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    sget-object v1, Lcom/facebook/ads/internal/AdClientEventManager;->clientEvents:Ljava/util/List;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/facebook/ads/internal/AdClientEventManager;->clientEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, ""

    monitor-exit v1

    .line 51
    :goto_0
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/ads/internal/AdClientEventManager;->clientEvents:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    sget-object v2, Lcom/facebook/ads/internal/AdClientEventManager;->clientEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 46
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/AdClientEvent;

    .line 49
    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdClientEvent;->getClientEventJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 51
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
