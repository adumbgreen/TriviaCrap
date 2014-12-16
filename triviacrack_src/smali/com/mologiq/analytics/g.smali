.class final Lcom/mologiq/analytics/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field a:Z

.field private final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mologiq/analytics/g;->a:Z

    .line 219
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 220
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/mologiq/analytics/g;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 215
    return-void
.end method

.method synthetic constructor <init>(Lcom/mologiq/analytics/g;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/mologiq/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/mologiq/analytics/g;->a:Z

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 241
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mologiq/analytics/g;->a:Z

    .line 242
    iget-object v0, p0, Lcom/mologiq/analytics/g;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/mologiq/analytics/g;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    return-void
.end method
