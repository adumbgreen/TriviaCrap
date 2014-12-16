.class public Lcom/mopub/common/event/MoPubEvents$EventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/event/b;


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation


# instance fields
.field a:Landroid/os/Handler$Callback;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/mopub/common/event/EventRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/HandlerThread;

.field private final d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Landroid/os/HandlerThread;)V
    .locals 3
    .parameter
    .parameter
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/mopub/common/event/EventRecorder;",
            ">;",
            "Landroid/os/HandlerThread;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/mopub/common/event/MoPubEvents$EventDispatcher;->b:Ljava/lang/Iterable;

    .line 87
    new-instance v0, Lcom/mopub/common/event/MoPubEvents$EventDispatcher$1;

    invoke-direct {v0, p0}, Lcom/mopub/common/event/MoPubEvents$EventDispatcher$1;-><init>(Lcom/mopub/common/event/MoPubEvents$EventDispatcher;)V

    iput-object v0, p0, Lcom/mopub/common/event/MoPubEvents$EventDispatcher;->a:Landroid/os/Handler$Callback;

    .line 105
    iput-object p2, p0, Lcom/mopub/common/event/MoPubEvents$EventDispatcher;->c:Landroid/os/HandlerThread;

    .line 106
    iget-object v0, p0, Lcom/mopub/common/event/MoPubEvents$EventDispatcher;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 107
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/common/event/MoPubEvents$EventDispatcher;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/common/event/MoPubEvents$EventDispatcher;->a:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mopub/common/event/MoPubEvents$EventDispatcher;->d:Landroid/os/Handler;

    .line 108
    return-void
.end method

.method static synthetic a(Lcom/mopub/common/event/MoPubEvents$EventDispatcher;)Ljava/lang/Iterable;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mopub/common/event/MoPubEvents$EventDispatcher;->b:Ljava/lang/Iterable;

    return-object v0
.end method

.method private a(Lcom/mopub/common/event/BaseEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mopub/common/event/MoPubEvents$EventDispatcher;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/mopub/common/event/MoPubEvents$EventDispatcher;Lcom/mopub/common/event/BaseEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mopub/common/event/MoPubEvents$EventDispatcher;->a(Lcom/mopub/common/event/BaseEvent;)V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/mopub/common/event/TimedEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    return-void
.end method

.method public onStopped(Lcom/mopub/common/event/TimedEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/mopub/common/event/MoPubEvents$EventDispatcher;->a(Lcom/mopub/common/event/BaseEvent;)V

    .line 118
    return-void
.end method
