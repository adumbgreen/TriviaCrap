.class Lcom/etermax/preguntados/ui/game/duelmode/adapter/d$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->a(J)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d$1;->a:Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d$1;->a:Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->b(Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/e;

    .line 56
    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/e;->b()V

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d$1;->a:Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->a(Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/f;

    .line 45
    invoke-interface {v0, p1, p2}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/f;->a(J)V

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d$1;->a()V

    .line 52
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d$1;->a(J)V

    .line 41
    return-void
.end method
