.class final Ltwitter4j/DispatcherImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltwitter4j/Dispatcher;


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getAsyncNumThreads()I

    move-result v0

    new-instance v1, Ltwitter4j/DispatcherImpl$1;

    invoke-direct {v1, p0, p1}, Ltwitter4j/DispatcherImpl$1;-><init>(Ltwitter4j/DispatcherImpl;Ltwitter4j/conf/Configuration;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/DispatcherImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 45
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ltwitter4j/DispatcherImpl$2;

    invoke-direct {v1, p0}, Ltwitter4j/DispatcherImpl$2;-><init>(Ltwitter4j/DispatcherImpl;)V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Ltwitter4j/DispatcherImpl;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Ltwitter4j/DispatcherImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized invokeLater(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltwitter4j/DispatcherImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltwitter4j/DispatcherImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
