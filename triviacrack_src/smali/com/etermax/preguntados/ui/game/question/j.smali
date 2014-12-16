.class public Lcom/etermax/preguntados/ui/game/question/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/j;->a:Landroid/os/Bundle;

    .line 234
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/game/question/i$1;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/question/h;
    .locals 2

    .prologue
    .line 237
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/i;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/game/question/i;-><init>()V

    .line 238
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/j;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/question/i;->setArguments(Landroid/os/Bundle;)V

    .line 239
    return-object v0
.end method

.method public a(I)Lcom/etermax/preguntados/ui/game/question/j;
    .locals 2
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/j;->a:Landroid/os/Bundle;

    const-string v1, "mHeaderColor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    return-object p0
.end method

.method public a(J)Lcom/etermax/preguntados/ui/game/question/j;
    .locals 2
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/j;->a:Landroid/os/Bundle;

    const-string v1, "mGameId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 249
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)Lcom/etermax/preguntados/ui/game/question/j;
    .locals 2
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/j;->a:Landroid/os/Bundle;

    const-string v1, "mQuestion"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 294
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/ui/game/question/j;
    .locals 2
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/j;->a:Landroid/os/Bundle;

    const-string v1, "mSpinType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 264
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/game/question/j;
    .locals 2
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/j;->a:Landroid/os/Bundle;

    const-string v1, "mTitle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-object p0
.end method

.method public a(Ljava/util/ArrayList;)Lcom/etermax/preguntados/ui/game/question/j;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;)",
            "Lcom/etermax/preguntados/ui/game/question/j;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/j;->a:Landroid/os/Bundle;

    const-string v1, "mUsedPowerUps"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 259
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/etermax/preguntados/ui/game/question/j;
    .locals 2
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/j;->a:Landroid/os/Bundle;

    const-string v1, "mUsername"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/etermax/preguntados/ui/game/question/j;
    .locals 2
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/j;->a:Landroid/os/Bundle;

    const-string v1, "mFacebookId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-object p0
.end method
