.class public Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/CountDownTimer;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/etermax/preguntados/ui/game/duelmode/adapter/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/etermax/preguntados/ui/game/duelmode/adapter/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->b:Ljava/util/Set;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->c:Ljava/util/Set;

    .line 32
    invoke-direct {p0, p2, p3}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->a(J)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Date;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->b:Ljava/util/Set;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->c:Ljava/util/Set;

    .line 22
    if-eqz p2, :cond_0

    .line 23
    invoke-static {p1}, Lcom/etermax/tools/j/h;->a(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v0

    .line 24
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v0, v1, v3

    .line 25
    invoke-direct {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->a(J)V

    .line 27
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->b:Ljava/util/Set;

    return-object v0
.end method

.method private a(J)V
    .locals 6
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d$1;

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d$1;-><init>(Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;JJ)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->a:Landroid/os/CountDownTimer;

    .line 60
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 61
    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->c:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 66
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 67
    return-void
.end method

.method public a(Lcom/etermax/preguntados/ui/game/duelmode/adapter/e;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->c:Ljava/util/Set;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    return-void
.end method

.method public a(Lcom/etermax/preguntados/ui/game/duelmode/adapter/f;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->b:Ljava/util/Set;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    return-void
.end method

.method public b(Lcom/etermax/preguntados/ui/game/duelmode/adapter/f;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->b:Ljava/util/Set;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return-void
.end method
