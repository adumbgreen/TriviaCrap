.class public Lcom/etermax/preguntados/datasource/dto/ChallengeDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lost:I

.field private won:I


# virtual methods
.method public getLost()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/ChallengeDTO;->lost:I

    return v0
.end method

.method public getWon()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/ChallengeDTO;->won:I

    return v0
.end method
