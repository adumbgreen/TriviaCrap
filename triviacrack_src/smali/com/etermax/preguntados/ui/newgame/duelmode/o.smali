.class public Lcom/etermax/preguntados/ui/newgame/duelmode/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;

.field private b:Landroid/os/Handler;

.field private c:Lcom/etermax/preguntados/ui/newgame/duelmode/q;

.field private d:Lcom/etermax/preguntados/ui/newgame/duelmode/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/newgame/duelmode/o;)Lcom/etermax/preguntados/ui/newgame/duelmode/q;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->c:Lcom/etermax/preguntados/ui/newgame/duelmode/q;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/newgame/duelmode/o;Lcom/etermax/preguntados/ui/newgame/duelmode/q;)Lcom/etermax/preguntados/ui/newgame/duelmode/q;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->c:Lcom/etermax/preguntados/ui/newgame/duelmode/q;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->b:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/etermax/preguntados/ui/newgame/duelmode/r;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->d:Lcom/etermax/preguntados/ui/newgame/duelmode/p;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->d:Lcom/etermax/preguntados/ui/newgame/duelmode/p;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    iput-object v2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->d:Lcom/etermax/preguntados/ui/newgame/duelmode/p;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->c:Lcom/etermax/preguntados/ui/newgame/duelmode/q;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->c:Lcom/etermax/preguntados/ui/newgame/duelmode/q;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/q;->h()V

    .line 43
    iput-object v2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->c:Lcom/etermax/preguntados/ui/newgame/duelmode/q;

    .line 45
    :cond_1
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/duelmode/p;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/newgame/duelmode/p;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/o;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/etermax/preguntados/ui/newgame/duelmode/r;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->d:Lcom/etermax/preguntados/ui/newgame/duelmode/p;

    .line 46
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->d:Lcom/etermax/preguntados/ui/newgame/duelmode/p;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    return-void
.end method
