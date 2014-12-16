.class final Lcom/etermax/preguntados/datasource/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/datasource/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/GameDTO;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 31
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isFirstTurn()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isFirstTurn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isFirstTurn()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isFirstTurn()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isSecondTurn()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isSecondTurn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    :cond_3
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isSecondTurn()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isSecondTurn()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 38
    goto :goto_0

    .line 40
    :cond_4
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 41
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto :goto_0

    .line 42
    :cond_5
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 43
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getCreated()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto :goto_0

    .line 44
    :cond_6
    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 45
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getCreated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto :goto_0

    .line 47
    :cond_7
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getCreated()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getCreated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    check-cast p1, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/datasource/a$2;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/GameDTO;)I

    move-result v0

    return v0
.end method
