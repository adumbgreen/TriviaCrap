.class public Lcom/mopub/common/event/TimedEvent;
.super Lcom/mopub/common/event/BaseEvent;
.source "SourceFile"


# static fields
.field public static final SC_NOT_RELEVANT:I = 0x0

.field public static final SC_NO_RESPONSE:I = -0x1


# instance fields
.field private final a:J

.field private b:Lcom/mopub/common/event/c;

.field private final c:Lcom/mopub/common/event/b;

.field private d:J

.field private e:I


# direct methods
.method constructor <init>(Lcom/mopub/common/event/BaseEvent$Type;Ljava/lang/String;Lcom/mopub/common/ClientMetadata;Lcom/mopub/common/event/b;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/common/event/BaseEvent;-><init>(Lcom/mopub/common/event/BaseEvent$Type;Ljava/lang/String;Lcom/mopub/common/ClientMetadata;)V

    .line 42
    sget-object v0, Lcom/mopub/common/event/c;->WAITING:Lcom/mopub/common/event/c;

    iput-object v0, p0, Lcom/mopub/common/event/TimedEvent;->b:Lcom/mopub/common/event/c;

    .line 43
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/common/event/TimedEvent;->a:J

    .line 44
    iput-object p4, p0, Lcom/mopub/common/event/TimedEvent;->c:Lcom/mopub/common/event/b;

    .line 45
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/event/TimedEvent;->b:Lcom/mopub/common/event/c;

    sget-object v1, Lcom/mopub/common/event/c;->WAITING:Lcom/mopub/common/event/c;

    if-ne v0, v1, :cond_0

    .line 62
    sget-object v0, Lcom/mopub/common/event/c;->CANCELLED:Lcom/mopub/common/event/c;

    iput-object v0, p0, Lcom/mopub/common/event/TimedEvent;->b:Lcom/mopub/common/event/c;

    .line 63
    iget-object v0, p0, Lcom/mopub/common/event/TimedEvent;->c:Lcom/mopub/common/event/b;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/mopub/common/event/TimedEvent;->c:Lcom/mopub/common/event/b;

    invoke-interface {v0, p0}, Lcom/mopub/common/event/b;->onCancelled(Lcom/mopub/common/event/TimedEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getDurationMillis()J
    .locals 2

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mopub/common/event/TimedEvent;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getHttpStatusCode()I
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mopub/common/event/TimedEvent;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop(I)V
    .locals 5
    .parameter

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/event/TimedEvent;->b:Lcom/mopub/common/event/c;

    sget-object v1, Lcom/mopub/common/event/c;->WAITING:Lcom/mopub/common/event/c;

    if-ne v0, v1, :cond_0

    .line 49
    sget-object v0, Lcom/mopub/common/event/c;->STOPPED:Lcom/mopub/common/event/c;

    iput-object v0, p0, Lcom/mopub/common/event/TimedEvent;->b:Lcom/mopub/common/event/c;

    .line 50
    iput p1, p0, Lcom/mopub/common/event/TimedEvent;->e:I

    .line 51
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 52
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/mopub/common/event/TimedEvent;->a:J

    sub-long/2addr v0, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/common/event/TimedEvent;->d:J

    .line 54
    iget-object v0, p0, Lcom/mopub/common/event/TimedEvent;->c:Lcom/mopub/common/event/b;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/mopub/common/event/TimedEvent;->c:Lcom/mopub/common/event/b;

    invoke-interface {v0, p0}, Lcom/mopub/common/event/b;->onStopped(Lcom/mopub/common/event/TimedEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
