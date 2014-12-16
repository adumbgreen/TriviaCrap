.class Lcom/etermax/preguntados/ui/newgame/NewGameActivity$2;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/newgame/NewGameActivity;",
        "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

.field final synthetic b:Lcom/etermax/preguntados/ui/newgame/NewGameActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/newgame/NewGameActivity;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$2;->b:Lcom/etermax/preguntados/ui/newgame/NewGameActivity;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$2;->a:Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$2;->b()Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/newgame/NewGameActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$2;->b:Lcom/etermax/preguntados/ui/newgame/NewGameActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->g:Lcom/etermax/gamescommon/c/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/c/a;->b()V

    .line 135
    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v0, v1, :cond_1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$2;->b:Lcom/etermax/preguntados/ui/newgame/NewGameActivity;

    iget v0, v0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->a:I

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$2;->b:Lcom/etermax/preguntados/ui/newgame/NewGameActivity;

    iget v1, v1, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->b:I

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IIZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$2;->b:Lcom/etermax/preguntados/ui/newgame/NewGameActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->finish()V

    .line 139
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    check-cast p1, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$2;->a(Lcom/etermax/preguntados/ui/newgame/NewGameActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$2;->b:Lcom/etermax/preguntados/ui/newgame/NewGameActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->c:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$2;->a:Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method
