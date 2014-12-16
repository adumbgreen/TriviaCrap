.class public Lcom/etermax/preguntados/datasource/dto/InboxDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private news:I

.field private total:I


# virtual methods
.method public getNews()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/InboxDTO;->news:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/InboxDTO;->total:I

    return v0
.end method

.method public setNews(I)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput p1, p0, Lcom/etermax/preguntados/datasource/dto/InboxDTO;->news:I

    .line 20
    return-void
.end method
