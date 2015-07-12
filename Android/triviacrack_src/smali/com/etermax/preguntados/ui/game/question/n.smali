.class public Lcom/etermax/preguntados/ui/game/question/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/n;->a:Landroid/os/Bundle;

    .line 222
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/game/question/m$1;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/question/k;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/m;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/game/question/m;-><init>()V

    .line 226
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/n;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/question/m;->setArguments(Landroid/os/Bundle;)V

    .line 227
    return-object v0
.end method

.method public a(I)Lcom/etermax/preguntados/ui/game/question/n;
    .locals 2
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/n;->a:Landroid/os/Bundle;

    const-string v1, "mHeaderColor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)Lcom/etermax/preguntados/ui/game/question/n;
    .locals 2
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/n;->a:Landroid/os/Bundle;

    const-string v1, "mQuestion"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 232
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/GameType;)Lcom/etermax/preguntados/ui/game/question/n;
    .locals 2
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/n;->a:Landroid/os/Bundle;

    const-string v1, "mGameType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 262
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Lcom/etermax/preguntados/ui/game/question/n;
    .locals 2
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/n;->a:Landroid/os/Bundle;

    const-string v1, "mPowerUpFree"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 237
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/game/question/n;
    .locals 2
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/n;->a:Landroid/os/Bundle;

    const-string v1, "mDuelModeTheme"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 247
    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/etermax/preguntados/ui/game/question/n;
    .locals 2
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/n;->a:Landroid/os/Bundle;

    const-string v1, "mSelectedAnswer"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 252
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/game/question/n;
    .locals 2
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/n;->a:Landroid/os/Bundle;

    const-string v1, "mTitle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-object p0
.end method

.method public a(Ljava/util/ArrayList;)Lcom/etermax/preguntados/ui/game/question/n;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;)",
            "Lcom/etermax/preguntados/ui/game/question/n;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/n;->a:Landroid/os/Bundle;

    const-string v1, "mUsedPowerUps"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 242
    return-object p0
.end method

.method public b(I)Lcom/etermax/preguntados/ui/game/question/n;
    .locals 2
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/n;->a:Landroid/os/Bundle;

    const-string v1, "mQuestionsCount"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    return-object p0
.end method
