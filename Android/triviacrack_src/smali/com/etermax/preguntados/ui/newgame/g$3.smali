.class Lcom/etermax/preguntados/ui/newgame/g$3;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/newgame/g;->d()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/newgame/g;",
        "Lcom/etermax/preguntados/datasource/dto/RoomDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/newgame/g;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/newgame/g;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/g$3;->a:Lcom/etermax/preguntados/ui/newgame/g;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/g$3;->a:Lcom/etermax/preguntados/ui/newgame/g;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/g;->a:Lcom/etermax/preguntados/datasource/dto/RoomDTO;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/newgame/g$3;->a:Lcom/etermax/preguntados/ui/newgame/g;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/newgame/g;->e:Lcom/etermax/gamescommon/language/Language;

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/gamescommon/language/Language;)V

    .line 117
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/g$3;->a:Lcom/etermax/preguntados/ui/newgame/g;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/newgame/g$3;->a:Lcom/etermax/preguntados/ui/newgame/g;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/newgame/g;->d:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v2, v0}, Lcom/etermax/preguntados/datasource/d;->b(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)Lcom/etermax/preguntados/datasource/dto/RoomDTO;

    move-result-object v0

    iput-object v0, v1, Lcom/etermax/preguntados/ui/newgame/g;->a:Lcom/etermax/preguntados/datasource/dto/RoomDTO;

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/g$3;->a:Lcom/etermax/preguntados/ui/newgame/g;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/g;->a:Lcom/etermax/preguntados/datasource/dto/RoomDTO;

    return-object v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/g$3;->a:Lcom/etermax/preguntados/ui/newgame/g;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/g$3;->a:Lcom/etermax/preguntados/ui/newgame/g;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/newgame/g;->d:Lcom/etermax/preguntados/datasource/d;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/newgame/g$3;->a:Lcom/etermax/preguntados/ui/newgame/g;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/newgame/g;->a:Lcom/etermax/preguntados/datasource/dto/RoomDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/RoomDTO;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/etermax/preguntados/datasource/d;->h(J)Lcom/etermax/preguntados/datasource/dto/RoomDTO;

    move-result-object v1

    iput-object v1, v0, Lcom/etermax/preguntados/ui/newgame/g;->a:Lcom/etermax/preguntados/datasource/dto/RoomDTO;

    goto :goto_0
.end method

.method protected a(Lcom/etermax/preguntados/ui/newgame/g;Lcom/etermax/preguntados/datasource/dto/RoomDTO;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/g$3;->a:Lcom/etermax/preguntados/ui/newgame/g;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/etermax/preguntados/ui/newgame/g;->c:Z

    .line 128
    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/RoomDTO;->getGame()Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/g$3;->a:Lcom/etermax/preguntados/ui/newgame/g;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/newgame/g;->b(Lcom/etermax/preguntados/ui/newgame/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/newgame/h;

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/RoomDTO;->getGame()Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/newgame/h;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/g$3;->a:Lcom/etermax/preguntados/ui/newgame/g;

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/RoomDTO;->getCountdown()I

    move-result v1

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/newgame/g;->a(Lcom/etermax/preguntados/ui/newgame/g;I)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    check-cast p1, Lcom/etermax/preguntados/ui/newgame/g;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/RoomDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/g$3;->a(Lcom/etermax/preguntados/ui/newgame/g;Lcom/etermax/preguntados/datasource/dto/RoomDTO;)V

    return-void
.end method
