.class public Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;
.super Ljava/util/Vector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<",
        "Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue; = null

.field private static final serialVersionUID:J = -0x11ede335fd646d66L


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->a(Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;)V

    return-void
.end method

.method private a(Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;->processFunction()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    .line 64
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->a:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->a:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    .line 28
    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->a:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized isEmpty()Z
    .locals 3

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit p0

    return v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized processFunctions()V
    .locals 2

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue$a;

    invoke-direct {v0, p0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue$a;-><init>(Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;)V

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue$a;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
