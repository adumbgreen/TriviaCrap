.class Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a(Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;",
        "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

.field final synthetic b:Z

.field final synthetic c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->a:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    iput-boolean p4, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->b:Z

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->b()Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/32 v7, 0x36ee80

    .line 166
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->t()V

    .line 168
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->s()V

    .line 169
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 170
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long v1, v0, v7

    .line 171
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iget-object v3, v3, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->i:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelCreator()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v5

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;JJLcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/util/List;)V

    .line 174
    :cond_0
    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_reason()Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    if-ne v0, v1, :cond_1

    .line 176
    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v0, v1, :cond_4

    .line 177
    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v7

    .line 178
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    const-string v3, "completed"

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getRound_number()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4, v0, v1}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;Ljava/lang/String;Ljava/lang/Integer;J)V

    .line 187
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->b:Z

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->finish()V

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/preguntados/ui/game/question/k;

    if-eqz v0, :cond_5

    .line 192
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->b(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/question/k;

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/game/question/k;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 196
    :cond_3
    :goto_1
    return-void

    .line 182
    :cond_4
    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long v2, v0, v7

    .line 183
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getExpiration_date()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_date()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelCreator()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v6

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    invoke-static/range {v0 .. v7}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;IJLjava/util/Date;Ljava/util/Date;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;)V

    goto :goto_0

    .line 193
    :cond_5
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->c(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/preguntados/ui/game/question/c;

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    goto :goto_1
.end method

.method protected a(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 200
    instance-of v0, p2, Lcom/etermax/preguntados/datasource/a/b;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 201
    check-cast v0, Lcom/etermax/preguntados/datasource/a/b;

    .line 202
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/a/b;->c()I

    move-result v0

    const/16 v1, 0x131

    if-ne v0, v1, :cond_0

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->b(Z)V

    .line 204
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    sget v1, Lcom/etermax/o;->opponent_removed_game:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->t()V

    .line 206
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->s()V

    .line 207
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->finish()V

    .line 214
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a(JLjava/lang/Exception;)Z

    goto :goto_0

    .line 212
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    check-cast p1, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->a(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    check-cast p1, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->a(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->g:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$1;->a:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/preguntados/datasource/d;->a(JLcom/etermax/preguntados/datasource/dto/AnswerListDTO;)Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method
