.class public Lcom/etermax/preguntados/ui/newgame/duelmode/q;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Landroid/support/v4/app/Fragment;",
        "Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/newgame/duelmode/o;

.field private b:Ljava/lang/String;

.field private c:Lcom/etermax/preguntados/ui/newgame/duelmode/r;


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/ui/newgame/duelmode/o;Ljava/lang/String;Lcom/etermax/preguntados/ui/newgame/duelmode/r;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/q;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/o;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/q;->b:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/q;->c:Lcom/etermax/preguntados/ui/newgame/duelmode/r;

    .line 75
    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/q;->b()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v0}, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;->setList(Ljava/util/List;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/q;->c:Lcom/etermax/preguntados/ui/newgame/duelmode/r;

    invoke-interface {v0, p2}, Lcom/etermax/preguntados/ui/newgame/duelmode/r;->a(Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;)V

    .line 89
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    check-cast p1, Landroid/support/v4/app/Fragment;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/duelmode/q;->a(Landroid/support/v4/app/Fragment;Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/q;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/o;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->a:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->a(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    move-result-object v0

    return-object v0
.end method
