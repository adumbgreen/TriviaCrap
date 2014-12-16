.class public Lcom/etermax/preguntados/ui/game/question/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/g;->a:Landroid/os/Bundle;

    .line 226
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/game/question/f$1;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/question/c;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/f;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/game/question/f;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/g;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/question/f;->setArguments(Landroid/os/Bundle;)V

    .line 231
    return-object v0
.end method

.method public a(I)Lcom/etermax/preguntados/ui/game/question/g;
    .locals 2
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/g;->a:Landroid/os/Bundle;

    const-string v1, "mQuestionsCount"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    return-object p0
.end method

.method public a(J)Lcom/etermax/preguntados/ui/game/question/g;
    .locals 2
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/g;->a:Landroid/os/Bundle;

    const-string v1, "mCountDownElapsedTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 236
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)Lcom/etermax/preguntados/ui/game/question/g;
    .locals 2
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/g;->a:Landroid/os/Bundle;

    const-string v1, "mQuestion"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 281
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/GameType;)Lcom/etermax/preguntados/ui/game/question/g;
    .locals 2
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/g;->a:Landroid/os/Bundle;

    const-string v1, "mGameType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 261
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Lcom/etermax/preguntados/ui/game/question/g;
    .locals 2
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/g;->a:Landroid/os/Bundle;

    const-string v1, "mPowerUpFree"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 251
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/ui/game/question/g;
    .locals 2
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/g;->a:Landroid/os/Bundle;

    const-string v1, "mSpinType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 276
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/game/question/g;
    .locals 2
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/g;->a:Landroid/os/Bundle;

    const-string v1, "mDuelModeTheme"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 241
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/game/question/g;
    .locals 2
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/g;->a:Landroid/os/Bundle;

    const-string v1, "mTitle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-object p0
.end method

.method public a(Ljava/util/ArrayList;)Lcom/etermax/preguntados/ui/game/question/g;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;)",
            "Lcom/etermax/preguntados/ui/game/question/g;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/g;->a:Landroid/os/Bundle;

    const-string v1, "mUsedPowerUps"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 271
    return-object p0
.end method

.method public b(I)Lcom/etermax/preguntados/ui/game/question/g;
    .locals 2
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/g;->a:Landroid/os/Bundle;

    const-string v1, "mHeaderColor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    return-object p0
.end method

.method public b(J)Lcom/etermax/preguntados/ui/game/question/g;
    .locals 2
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/g;->a:Landroid/os/Bundle;

    const-string v1, "mGameId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 246
    return-object p0
.end method
