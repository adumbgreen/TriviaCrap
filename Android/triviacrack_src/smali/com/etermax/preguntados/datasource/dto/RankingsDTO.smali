.class public Lcom/etermax/preguntados/datasource/dto/RankingsDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private historical_ranking:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

.field private periodical_ranking:Lcom/etermax/preguntados/datasource/dto/RanksDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHistoricalRanking()Lcom/etermax/preguntados/datasource/dto/RanksDTO;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/RankingsDTO;->historical_ranking:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    return-object v0
.end method

.method public getPeriodicalRanking()Lcom/etermax/preguntados/datasource/dto/RanksDTO;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/RankingsDTO;->periodical_ranking:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    return-object v0
.end method
