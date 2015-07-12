.class final Lcom/mobileapptracker/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/mobileapptracker/h;


# direct methods
.method constructor <init>(Lcom/mobileapptracker/h;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/mobileapptracker/l;->c:Lcom/mobileapptracker/h;

    iput-object p2, p0, Lcom/mobileapptracker/l;->a:Ljava/lang/String;

    iput p3, p0, Lcom/mobileapptracker/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/mobileapptracker/l;->c:Lcom/mobileapptracker/h;

    iget-object v0, v0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    iget-object v1, p0, Lcom/mobileapptracker/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/i;->D(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobileapptracker/l;->c:Lcom/mobileapptracker/h;

    iget-object v0, v0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    iget v1, p0, Lcom/mobileapptracker/l;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/i;->E(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobileapptracker/l;->c:Lcom/mobileapptracker/h;

    iput-boolean v2, v0, Lcom/mobileapptracker/h;->e:Z

    iget-object v0, p0, Lcom/mobileapptracker/l;->c:Lcom/mobileapptracker/h;

    iget-boolean v0, v0, Lcom/mobileapptracker/h;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobileapptracker/l;->c:Lcom/mobileapptracker/h;

    iget-boolean v0, v0, Lcom/mobileapptracker/h;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobileapptracker/l;->c:Lcom/mobileapptracker/h;

    iget-object v1, v0, Lcom/mobileapptracker/h;->l:Ljava/util/concurrent/ExecutorService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/mobileapptracker/l;->c:Lcom/mobileapptracker/h;

    iget-object v0, v0, Lcom/mobileapptracker/h;->l:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/mobileapptracker/l;->c:Lcom/mobileapptracker/h;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mobileapptracker/h;->h:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
