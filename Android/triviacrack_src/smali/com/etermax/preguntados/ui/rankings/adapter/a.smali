.class public Lcom/etermax/preguntados/ui/rankings/adapter/a;
.super Lcom/etermax/preguntados/ui/rankings/adapter/c;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/game/duelmode/adapter/e;


# instance fields
.field private c:Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/ui/rankings/a;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/rankings/adapter/c;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/ui/rankings/b;)V

    .line 20
    new-instance v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;

    invoke-direct {v0, p1, p3, p4}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/a;->c:Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;

    .line 21
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/a;->c:Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->a(Lcom/etermax/preguntados/ui/game/duelmode/adapter/e;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 26
    invoke-static {p1}, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/rankings/adapter/view/a;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/a;->c:Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->a(Lcom/etermax/preguntados/ui/game/duelmode/adapter/f;)V

    .line 28
    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/a;->c:Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->a()V

    .line 39
    return-void
.end method

.method public a(Lcom/etermax/preguntados/ui/rankings/adapter/view/e;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/rankings/adapter/c;->a(Lcom/etermax/preguntados/ui/rankings/adapter/view/e;I)V

    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/a;->a:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->answers_correct_plural:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/e;->setRightTitle(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/a;->b:Lcom/etermax/preguntados/ui/rankings/b;

    check-cast v0, Lcom/etermax/preguntados/ui/rankings/a;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/rankings/a;->a()V

    .line 45
    return-void
.end method
