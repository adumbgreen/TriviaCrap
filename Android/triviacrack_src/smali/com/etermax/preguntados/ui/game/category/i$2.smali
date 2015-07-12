.class Lcom/etermax/preguntados/ui/game/category/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/game/category/widget/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/ui/game/category/i;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/game/category/i;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/category/i;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/i$2;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 283
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$2;->a:Lcom/etermax/preguntados/ui/game/category/i;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isMyTurn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$2;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/game/category/i;->a(Lcom/etermax/preguntados/ui/game/category/i;Z)V

    .line 286
    :cond_0
    const/4 v0, 0x0

    .line 287
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/i$2;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-static {v2, p1}, Lcom/etermax/preguntados/ui/game/category/i;->a(Lcom/etermax/preguntados/ui/game/category/i;I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/i$2;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-static {v2}, Lcom/etermax/preguntados/ui/game/category/i;->a(Lcom/etermax/preguntados/ui/game/category/i;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 295
    :goto_0
    if-nez v1, :cond_2

    .line 296
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$2;->a:Lcom/etermax/preguntados/ui/game/category/i;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isLevelUp()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/etermax/preguntados/ui/game/category/i;->q:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$2;->a:Lcom/etermax/preguntados/ui/game/category/i;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCharges()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 297
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$2;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/i;->b(Lcom/etermax/preguntados/ui/game/category/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/category/j;->j()V

    .line 302
    :cond_2
    :goto_1
    return-void

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$2;->a:Lcom/etermax/preguntados/ui/game/category/i;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->hasNewAchievements()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$2;->a:Lcom/etermax/preguntados/ui/game/category/i;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCharges()I

    move-result v0

    if-eq v0, v3, :cond_2

    sget-boolean v0, Lcom/etermax/preguntados/ui/game/category/i;->q:Z

    if-nez v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$2;->a:Lcom/etermax/preguntados/ui/game/category/i;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/category/i;->k:Lcom/etermax/gamescommon/achievements/ui/k;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/achievements/ui/k;->a()V

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_0
.end method
