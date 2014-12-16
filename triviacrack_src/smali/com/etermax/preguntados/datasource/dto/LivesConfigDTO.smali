.class public Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private increment_interval:I

.field private increment_quantity:I


# virtual methods
.method public getIncrement_interval()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;->increment_interval:I

    return v0
.end method

.method public getIncrement_quantity()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;->increment_quantity:I

    return v0
.end method
