.class public Lcom/etermax/preguntados/datasource/dto/LivesDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private max:I

.field private next_increment:I

.field private quantity:I

.field private unlimited:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->max:I

    return v0
.end method

.method public getNextIncrement()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->next_increment:I

    return v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->quantity:I

    return v0
.end method

.method public isUnlimited()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->unlimited:Z

    return v0
.end method

.method public setNextIncrement(I)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->next_increment:I

    .line 32
    return-void
.end method

.method public setQuantity(I)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->quantity:I

    .line 28
    return-void
.end method
