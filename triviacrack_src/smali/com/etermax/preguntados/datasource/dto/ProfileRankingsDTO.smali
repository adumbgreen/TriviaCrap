.class public Lcom/etermax/preguntados/datasource/dto/ProfileRankingsDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private podium:Lcom/etermax/preguntados/datasource/dto/PodiumDTO;


# virtual methods
.method public getPodium()Lcom/etermax/preguntados/datasource/dto/PodiumDTO;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileRankingsDTO;->podium:Lcom/etermax/preguntados/datasource/dto/PodiumDTO;

    return-object v0
.end method
