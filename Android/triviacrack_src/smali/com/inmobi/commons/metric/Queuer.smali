.class public Lcom/inmobi/commons/metric/Queuer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/StringBuffer;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/metric/Queuer;->a:Ljava/lang/StringBuffer;

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/commons/metric/Queuer;->b:J

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    .prologue
    .line 12
    iget-wide v0, p0, Lcom/inmobi/commons/metric/Queuer;->b:J

    return-wide v0
.end method

.method public get()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    const-string v0, "[InMobi]-4.3.0"

    const-string v1, "Reading from queue"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/inmobi/commons/metric/Queuer;->a:Ljava/lang/StringBuffer;

    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/metric/Queuer;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public log(Lcom/inmobi/commons/metric/EventLog;)V
    .locals 6
    .parameter

    .prologue
    .line 16
    iget-object v1, p0, Lcom/inmobi/commons/metric/Queuer;->a:Ljava/lang/StringBuffer;

    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/metric/Queuer;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/inmobi/commons/metric/EventLog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 18
    iget-wide v2, p0, Lcom/inmobi/commons/metric/Queuer;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/inmobi/commons/metric/Queuer;->b:J

    .line 19
    monitor-exit v1

    .line 20
    return-void

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 30
    const-string v0, "[InMobi]-4.3.0"

    const-string v1, "Resetting queue"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/inmobi/commons/metric/Queuer;->a:Ljava/lang/StringBuffer;

    monitor-enter v1

    .line 32
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/metric/Queuer;->a:Ljava/lang/StringBuffer;

    .line 33
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/inmobi/commons/metric/Queuer;->b:J

    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
