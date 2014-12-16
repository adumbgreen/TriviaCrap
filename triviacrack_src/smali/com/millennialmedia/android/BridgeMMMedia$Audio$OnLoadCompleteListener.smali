.class abstract Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

.field private c:Ljava/util/Timer;

.field private d:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/BridgeMMMedia$Audio;Landroid/media/SoundPool;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 940
    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->b:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->a:Ljava/util/ArrayList;

    .line 941
    iput-object p2, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->d:Landroid/media/SoundPool;

    .line 942
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 909
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;)Landroid/media/SoundPool;
    .locals 1
    .parameter

    .prologue
    .line 909
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->d:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic c(Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 909
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->c:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 1

    .prologue
    .line 983
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 985
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    :cond_0
    monitor-exit p0

    return-void

    .line 983
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(I)V
    .locals 6
    .parameter

    .prologue
    .line 953
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 955
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->c:Ljava/util/Timer;

    .line 956
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->c:Ljava/util/Timer;

    new-instance v1, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener$1;-><init>(Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    :cond_0
    monitor-exit p0

    return-void

    .line 953
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method abstract onLoadComplete(Landroid/media/SoundPool;II)V
.end method
