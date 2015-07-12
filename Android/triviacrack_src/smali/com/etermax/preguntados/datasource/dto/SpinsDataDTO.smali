.class public Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field spins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/SpinDTO;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public getSpins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/SpinDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;->spins:Ljava/util/List;

    return-object v0
.end method
