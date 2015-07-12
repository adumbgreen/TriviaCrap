.class public Lcom/mopub/common/event/MoPubEvents;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/mopub/common/event/MoPubEvents$EventDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private static a()Lcom/mopub/common/event/MoPubEvents$EventDispatcher;
    .locals 4

    .prologue
    .line 21
    sget-object v0, Lcom/mopub/common/event/MoPubEvents;->a:Lcom/mopub/common/event/MoPubEvents$EventDispatcher;

    .line 22
    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/mopub/common/event/MoPubEvents;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/mopub/common/event/MoPubEvents;->a:Lcom/mopub/common/event/MoPubEvents$EventDispatcher;

    .line 25
    if-nez v0, :cond_0

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v0, Lcom/mopub/common/event/a;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/mopub/common/event/a;-><init>(Lcom/mopub/common/event/MoPubEvents$1;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v3, Landroid/os/HandlerThread;

    const-string v0, "mopub_event_queue"

    invoke-direct {v3, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/mopub/common/event/MoPubEvents$EventDispatcher;

    invoke-direct {v0, v2, v3}, Lcom/mopub/common/event/MoPubEvents$EventDispatcher;-><init>(Ljava/lang/Iterable;Landroid/os/HandlerThread;)V

    sput-object v0, Lcom/mopub/common/event/MoPubEvents;->a:Lcom/mopub/common/event/MoPubEvents$EventDispatcher;

    .line 31
    :cond_0
    monitor-exit v1

    .line 33
    :cond_1
    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static event(Lcom/mopub/common/event/BaseEvent$Type;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static {}, Lcom/mopub/common/event/MoPubEvents;->a()Lcom/mopub/common/event/MoPubEvents$EventDispatcher;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/mopub/common/event/Event;

    invoke-static {}, Lcom/mopub/common/ClientMetadata;->getInstance()Lcom/mopub/common/ClientMetadata;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/mopub/common/event/Event;-><init>(Lcom/mopub/common/event/BaseEvent$Type;Ljava/lang/String;Lcom/mopub/common/ClientMetadata;)V

    .line 48
    invoke-static {v0, v1}, Lcom/mopub/common/event/MoPubEvents$EventDispatcher;->a(Lcom/mopub/common/event/MoPubEvents$EventDispatcher;Lcom/mopub/common/event/BaseEvent;)V

    .line 49
    return-void
.end method

.method public static setEventDispatcher(Lcom/mopub/common/event/MoPubEvents$EventDispatcher;)V
    .locals 0
    .parameter
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 38
    sput-object p0, Lcom/mopub/common/event/MoPubEvents;->a:Lcom/mopub/common/event/MoPubEvents$EventDispatcher;

    .line 39
    return-void
.end method

.method public static timedEvent(Lcom/mopub/common/event/BaseEvent$Type;Ljava/lang/String;)Lcom/mopub/common/event/TimedEvent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-static {}, Lcom/mopub/common/event/MoPubEvents;->a()Lcom/mopub/common/event/MoPubEvents$EventDispatcher;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/mopub/common/event/TimedEvent;

    invoke-static {}, Lcom/mopub/common/ClientMetadata;->getInstance()Lcom/mopub/common/ClientMetadata;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/mopub/common/event/TimedEvent;-><init>(Lcom/mopub/common/event/BaseEvent$Type;Ljava/lang/String;Lcom/mopub/common/ClientMetadata;Lcom/mopub/common/event/b;)V

    .line 60
    return-object v1
.end method
