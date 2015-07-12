.class Lcom/etermax/preguntados/ui/dashboard/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/widget/d;


# direct methods
.method private constructor <init>(Lcom/etermax/preguntados/ui/dashboard/widget/d;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/e;->a:Lcom/etermax/preguntados/ui/dashboard/widget/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/dashboard/widget/d;Lcom/etermax/preguntados/ui/dashboard/widget/d$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/widget/e;-><init>(Lcom/etermax/preguntados/ui/dashboard/widget/d;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/e;->a:Lcom/etermax/preguntados/ui/dashboard/widget/d;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/widget/d;->a(Lcom/etermax/preguntados/ui/dashboard/widget/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/j/h;->a(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v2

    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/e;->a:Lcom/etermax/preguntados/ui/dashboard/widget/d;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/widget/d;->b(Lcom/etermax/preguntados/ui/dashboard/widget/d;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/widget/f;

    .line 49
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/e;->a:Lcom/etermax/preguntados/ui/dashboard/widget/d;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/dashboard/widget/d;->b(Lcom/etermax/preguntados/ui/dashboard/widget/d;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 50
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    .line 51
    invoke-interface {v0, v4, v5}, Lcom/etermax/preguntados/ui/dashboard/widget/f;->a(J)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {v0}, Lcom/etermax/preguntados/ui/dashboard/widget/f;->a()V

    .line 54
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/e;->a:Lcom/etermax/preguntados/ui/dashboard/widget/d;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/ui/dashboard/widget/d;->a(Lcom/etermax/preguntados/ui/dashboard/widget/f;)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/e;->a:Lcom/etermax/preguntados/ui/dashboard/widget/d;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/widget/d;->d(Lcom/etermax/preguntados/ui/dashboard/widget/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/e;->a:Lcom/etermax/preguntados/ui/dashboard/widget/d;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/dashboard/widget/d;->c(Lcom/etermax/preguntados/ui/dashboard/widget/d;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    return-void
.end method
