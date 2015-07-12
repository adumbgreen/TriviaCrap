.class public Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private approved:I

.field private in_rate:I

.field private rejected:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApproved()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;->approved:I

    return v0
.end method

.method public getInRate()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;->in_rate:I

    return v0
.end method

.method public getRejected()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;->rejected:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;->total:I

    return v0
.end method
