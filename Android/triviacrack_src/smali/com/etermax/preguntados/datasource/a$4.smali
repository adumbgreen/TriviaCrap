.class final Lcom/etermax/preguntados/datasource/a$4;
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
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/GameDTO;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 70
    :goto_0
    return v0

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getCreated()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLast_turn()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getCreated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto :goto_0

    .line 70
    :cond_2
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
    .line 60
    check-cast p1, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/datasource/a$4;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/GameDTO;)I

    move-result v0

    return v0
.end method
