.class Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity$1;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;",
        "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

.field final synthetic b:Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity$1;->b:Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity$1;->a:Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity$1;->b()Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity$1;->b:Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->f:Lcom/etermax/gamescommon/c/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/c/a;->b()V

    .line 111
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity$1;->b:Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity$1;->b:Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->g:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->n()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;ILcom/etermax/tools/nationality/Nationality;)V

    .line 112
    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v0, v1, :cond_0

    .line 113
    invoke-static {p1, p2}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;)Landroid/content/Intent;

    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity$1;->b:Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->finish()V

    .line 117
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    check-cast p1, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity$1;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity$1;->b:Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->e:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity$1;->a:Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method
