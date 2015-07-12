.class public Lcom/etermax/preguntados/ui/dashboard/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/etermax/preguntados/ui/dashboard/widget/f;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->a:Landroid/content/Context;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->b:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/dashboard/widget/d;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/dashboard/widget/d;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/widget/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/dashboard/widget/e;-><init>(Lcom/etermax/preguntados/ui/dashboard/widget/d;Lcom/etermax/preguntados/ui/dashboard/widget/d$1;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->d:Ljava/lang/Runnable;

    .line 63
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/dashboard/widget/d;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->d:Ljava/lang/Runnable;

    .line 69
    return-void
.end method

.method static synthetic d(Lcom/etermax/preguntados/ui/dashboard/widget/d;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/widget/d;->c()V

    .line 73
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 74
    return-void
.end method

.method public a(Lcom/etermax/preguntados/ui/dashboard/widget/f;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 38
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/widget/d;->c()V

    .line 42
    :cond_0
    return-void
.end method

.method public a(Lcom/etermax/preguntados/ui/dashboard/widget/f;Ljava/util/Date;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 29
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 30
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/widget/d;->b()V

    .line 33
    :cond_0
    return-void
.end method
