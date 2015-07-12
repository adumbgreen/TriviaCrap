.class public Lcom/etermax/preguntados/datasource/dto/GameUserDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private charges:I

.field private crowns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public getCharges()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->charges:I

    return v0
.end method

.method public getCrowns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->crowns:Ljava/util/List;

    return-object v0
.end method
