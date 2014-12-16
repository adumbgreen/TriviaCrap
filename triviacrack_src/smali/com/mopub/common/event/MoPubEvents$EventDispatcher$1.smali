.class Lcom/mopub/common/event/MoPubEvents$EventDispatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/event/MoPubEvents$EventDispatcher;-><init>(Ljava/lang/Iterable;Landroid/os/HandlerThread;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/common/event/MoPubEvents$EventDispatcher;


# direct methods
.method constructor <init>(Lcom/mopub/common/event/MoPubEvents$EventDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mopub/common/event/MoPubEvents$EventDispatcher$1;->a:Lcom/mopub/common/event/MoPubEvents$EventDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter

    .prologue
    .line 90
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/mopub/common/event/TimedEvent;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mopub/common/event/TimedEvent;

    .line 92
    iget-object v1, p0, Lcom/mopub/common/event/MoPubEvents$EventDispatcher$1;->a:Lcom/mopub/common/event/MoPubEvents$EventDispatcher;

    invoke-static {v1}, Lcom/mopub/common/event/MoPubEvents$EventDispatcher;->a(Lcom/mopub/common/event/MoPubEvents$EventDispatcher;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/event/EventRecorder;

    .line 93
    invoke-interface {v1, v0}, Lcom/mopub/common/event/EventRecorder;->recordTimedEvent(Lcom/mopub/common/event/TimedEvent;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/mopub/common/event/Event;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mopub/common/event/Event;

    .line 98
    iget-object v1, p0, Lcom/mopub/common/event/MoPubEvents$EventDispatcher$1;->a:Lcom/mopub/common/event/MoPubEvents$EventDispatcher;

    invoke-static {v1}, Lcom/mopub/common/event/MoPubEvents$EventDispatcher;->a(Lcom/mopub/common/event/MoPubEvents$EventDispatcher;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/event/EventRecorder;

    .line 99
    invoke-interface {v1, v0}, Lcom/mopub/common/event/EventRecorder;->recordEvent(Lcom/mopub/common/event/Event;)V

    goto :goto_1

    .line 102
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
