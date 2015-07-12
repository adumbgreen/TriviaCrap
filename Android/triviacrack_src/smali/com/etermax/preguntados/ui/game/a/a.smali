.class public Lcom/etermax/preguntados/ui/game/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;

.field b:Lcom/etermax/gamescommon/datasource/j;

.field c:Lcom/etermax/gamescommon/login/datasource/a;

.field d:Lcom/etermax/gamescommon/e;

.field e:Lcom/etermax/preguntados/c/a/b;

.field protected f:Lcom/etermax/preguntados/ui/game/a/c;

.field private g:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->g:Lcom/google/gson/Gson;

    .line 69
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/a/a;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 2

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/a/a;->q()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    :cond_0
    const/4 v0, 0x0

    .line 322
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public B()I
    .locals 4

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 344
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/a/a;->f:Lcom/etermax/preguntados/ui/game/a/c;

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/a/a;->f:Lcom/etermax/preguntados/ui/game/a/c;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/c;->g()Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->getAnswers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

    .line 346
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->getPowerUps()Ljava/util/List;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 349
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/a/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_0
    move v0, v1

    move v1, v0

    .line 352
    goto :goto_0

    :cond_1
    move v1, v0

    .line 354
    :cond_2
    return v1
.end method

.method protected a(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)I
    .locals 3
    .parameter

    .prologue
    .line 358
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getPowerUps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/PowerUpDTO;

    .line 359
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PowerUpDTO;->getName()Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PowerUpDTO;->getCost()I

    move-result v0

    .line 363
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 74
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "question_time_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 76
    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 77
    :goto_0
    return-wide v0

    .line 76
    :cond_0
    sub-long v0, v2, v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "answer_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;J)V

    .line 174
    return-void
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "is_pending_game_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;J)V

    .line 218
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 327
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/a/a;->w()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isEnded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/a/a;->f:Lcom/etermax/preguntados/ui/game/a/c;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/game/a/c;->b()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getStatusVersion()J

    move-result-wide v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/a/a;->f:Lcom/etermax/preguntados/ui/game/a/c;

    invoke-virtual {v3}, Lcom/etermax/preguntados/ui/game/a/c;->i()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelQuestions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/a/a;->B()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->a(I)I

    .line 330
    invoke-static {p1, p2}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;)Landroid/content/Intent;

    move-result-object v0

    .line 331
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 332
    const/4 v0, 0x1

    .line 336
    :cond_0
    if-nez v0, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/a/a;->t()V

    .line 338
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/a/a;->s()V

    .line 340
    :cond_1
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;)V
    .locals 3
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "answer_list_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/a/a;->g:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 7
    .parameter

    .prologue
    .line 289
    sget-object v0, Lcom/etermax/preguntados/ui/game/a/a$2;->a:[I

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 299
    :goto_0
    :pswitch_0
    return-void

    .line 291
    :pswitch_1
    new-instance v0, Lcom/etermax/preguntados/ui/game/a/c;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v1

    sget-object v3, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getStatusVersion()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelQuestions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/etermax/preguntados/ui/game/a/c;-><init>(JLcom/etermax/preguntados/datasource/dto/enums/GameType;JI)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->f:Lcom/etermax/preguntados/ui/game/a/c;

    .line 292
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->f:Lcom/etermax/preguntados/ui/game/a/c;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/c;->b()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/a/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/GameType;)V

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/GameType;)V
    .locals 3
    .parameter

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    sget-object p1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "pending_game_type_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 3
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "requested_crown_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)V
    .locals 3
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "spin_type_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "power_ups_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/a/a;->g:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "is_challenged_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;Z)V

    .line 194
    return-void
.end method

.method public b()I
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "answer_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public b(I)V
    .locals 4
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "coins_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;J)V

    .line 190
    return-void
.end method

.method public b(J)V
    .locals 2
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "progress_bar_elapsed_time_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;J)V

    .line 226
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "is_tie_break_question_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;Z)V

    .line 214
    return-void
.end method

.method public c()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "power_ups_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/a/a;->g:Lcom/google/gson/Gson;

    new-instance v2, Lcom/etermax/preguntados/ui/game/a/a$1;

    invoke-direct {v2, p0}, Lcom/etermax/preguntados/ui/game/a/a$1;-><init>(Lcom/etermax/preguntados/ui/game/a/a;)V

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/game/a/a$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 87
    return-object v0
.end method

.method public c(I)V
    .locals 4
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "current_question_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;J)V

    .line 202
    return-void
.end method

.method public c(J)V
    .locals 2
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "status_version_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;J)V

    .line 230
    return-void
.end method

.method public d()Lcom/etermax/preguntados/datasource/dto/enums/SpinType;
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "spin_type_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->CROWN:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 93
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->CROWN:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    .line 105
    :goto_0
    return-object v0

    .line 95
    :cond_0
    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 96
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    goto :goto_0

    .line 98
    :cond_1
    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->FINAL_DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 99
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->FINAL_DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    goto :goto_0

    .line 101
    :cond_2
    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 102
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    goto :goto_0

    .line 105
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)V
    .locals 4
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "correct_answers_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;J)V

    .line 206
    return-void
.end method

.method public e()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "requested_crown_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/a/a;->e:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/c/a/b;->a(Ljava/lang/String;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/a/a;->e:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/c/a/b;->a(Ljava/lang/String;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/g;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    goto :goto_0
.end method

.method public e(I)V
    .locals 4
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "opponent_correct_answers_count_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;J)V

    .line 210
    return-void
.end method

.method public f()I
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "coins_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public f(I)V
    .locals 4
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "progress_bar_max_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;J)V

    .line 222
    return-void
.end method

.method public g()Z
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "is_challenged_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h()Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "answer_list_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/a/a;->g:Lcom/google/gson/Gson;

    const-class v2, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    return-object v0
.end method

.method public i()I
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "current_question_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public j()I
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "correct_answers_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public k()I
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "opponent_correct_answers_count_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public l()Z
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "is_tie_break_question_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m()I
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "is_pending_game_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public n()I
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "progress_bar_max_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public o()J
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "progress_bar_elapsed_time_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public p()J
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "status_version_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public q()Lcom/etermax/preguntados/datasource/dto/enums/GameType;
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "pending_game_type_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->getByString(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    .line 164
    return-object v0
.end method

.method public r()V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "question_time_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;J)V

    .line 170
    return-void
.end method

.method public s()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "answer_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "power_ups_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "spin_type_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "requested_crown_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "coins_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "is_challenged_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "answer_list_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "current_question_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "correct_answers_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "opponent_correct_answers_count_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "is_tie_break_question_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "has_answered_question_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "is_pending_game_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "progress_bar_max_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "progress_bar_elapsed_time_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "status_version_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "pending_game_type_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->b:Lcom/etermax/gamescommon/datasource/j;

    const-string v1, "game_status_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/j;->a(Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->f:Lcom/etermax/preguntados/ui/game/a/c;

    .line 260
    return-void
.end method

.method public t()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->d:Lcom/etermax/gamescommon/e;

    const-string v1, "question_time_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public u()Z
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/a/a;->m()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->b:Lcom/etermax/gamescommon/datasource/j;

    const-string v1, "game_status_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/etermax/preguntados/ui/game/a/c;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/a/c;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->f:Lcom/etermax/preguntados/ui/game/a/c;

    .line 278
    return-void
.end method

.method public w()Z
    .locals 2

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 282
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/a/a;->f:Lcom/etermax/preguntados/ui/game/a/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/a/a;->f:Lcom/etermax/preguntados/ui/game/a/c;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/c;->b()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v1

    if-nez v1, :cond_1

    .line 283
    :cond_0
    const/4 v0, 0x1

    .line 285
    :cond_1
    return v0
.end method

.method public x()Lcom/etermax/preguntados/ui/game/a/c;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->f:Lcom/etermax/preguntados/ui/game/a/c;

    return-object v0
.end method

.method public y()V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->b:Lcom/etermax/gamescommon/datasource/j;

    const-string v1, "game_status_key"

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/a/a;->f:Lcom/etermax/preguntados/ui/game/a/c;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/j;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    return-void
.end method

.method public z()V
    .locals 5

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/a/a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/a/a;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getQuestionTime()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/a;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getQuestionTime()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/a/a;->f:Lcom/etermax/preguntados/ui/game/a/c;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/ui/game/a/c;->a(Ljava/lang/Long;)V

    .line 315
    return-void
.end method
