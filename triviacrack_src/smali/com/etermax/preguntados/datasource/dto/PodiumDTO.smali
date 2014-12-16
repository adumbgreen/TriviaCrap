.class public Lcom/etermax/preguntados/datasource/dto/PodiumDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private first_place:I

.field private second_place:I

.field private third_place:I


# virtual methods
.method public getFirstPlace()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/PodiumDTO;->first_place:I

    return v0
.end method

.method public getSecondPlace()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/PodiumDTO;->second_place:I

    return v0
.end method

.method public getThirdPlace()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/PodiumDTO;->third_place:I

    return v0
.end method
