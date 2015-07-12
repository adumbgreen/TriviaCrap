.class public Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field player_one_statistics:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

.field player_two_statistics:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayerOneStatistics()Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;->player_one_statistics:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    return-object v0
.end method

.method public getPlayerTwoStatistics()Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;->player_two_statistics:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    return-object v0
.end method
