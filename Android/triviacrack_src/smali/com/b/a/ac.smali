.class Lcom/b/a/ac;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<*>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 423
    iput-object p1, p0, Lcom/b/a/ac;->a:Ljava/lang/ref/ReferenceQueue;

    .line 424
    iput-object p2, p0, Lcom/b/a/ac;->b:Landroid/os/Handler;

    .line 425
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/b/a/ac;->setDaemon(Z)V

    .line 426
    const-string v0, "Picasso-refQueue"

    invoke-virtual {p0, v0}, Lcom/b/a/ac;->setName(Ljava/lang/String;)V

    .line 427
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 430
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 433
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/b/a/ac;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/b/a/b;

    .line 434
    iget-object v1, p0, Lcom/b/a/ac;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/b/a/ac;->b:Landroid/os/Handler;

    const/4 v3, 0x3

    iget-object v0, v0, Lcom/b/a/b;->a:Lcom/b/a/a;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 446
    :goto_1
    return-void

    .line 437
    :catch_1
    move-exception v0

    .line 438
    iget-object v1, p0, Lcom/b/a/ac;->b:Landroid/os/Handler;

    new-instance v2, Lcom/b/a/ac$1;

    invoke-direct {v2, p0, v0}, Lcom/b/a/ac$1;-><init>(Lcom/b/a/ac;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
