.class Lcom/etermax/preguntados/ui/newgame/a;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/newgame/NewGameActivity;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/newgame/NewGameActivity;

.field private b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field private c:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/ui/newgame/NewGameActivity;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/a;->a:Lcom/etermax/preguntados/ui/newgame/NewGameActivity;

    .line 263
    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    .line 264
    iput-object p3, p0, Lcom/etermax/preguntados/ui/newgame/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 265
    iput-object p4, p0, Lcom/etermax/preguntados/ui/newgame/a;->c:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    .line 266
    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/a;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/newgame/NewGameActivity;Ljava/lang/Void;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 277
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/g;->a:Lcom/etermax/preguntados/ui/game/duelmode/g;

    .line 280
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/a;->a:Lcom/etermax/preguntados/ui/newgame/NewGameActivity;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/newgame/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-static {v1, v2, v0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/ui/game/duelmode/g;)Landroid/content/Intent;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/a;->a:Lcom/etermax/preguntados/ui/newgame/NewGameActivity;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->startActivity(Landroid/content/Intent;)V

    .line 282
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a;->a:Lcom/etermax/preguntados/ui/newgame/NewGameActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->finish()V

    .line 283
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    check-cast p1, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/a;->a(Lcom/etermax/preguntados/ui/newgame/NewGameActivity;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a;->a:Lcom/etermax/preguntados/ui/newgame/NewGameActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->c:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/newgame/a;->c:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/preguntados/datasource/d;->a(JLcom/etermax/preguntados/datasource/dto/AnswerListDTO;)Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 271
    const/4 v0, 0x0

    return-object v0
.end method
