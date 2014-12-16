.class public Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private category_questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;",
            ">;"
        }
    .end annotation
.end field

.field private challenges:Lcom/etermax/preguntados/datasource/dto/ChallengeDTO;

.field private duel_games_lost:I

.field private duel_games_won:I

.field private games_lost:I

.field private games_resigned:I

.field private games_won:I

.field private language_games:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/LanguageGameDTO;",
            ">;"
        }
    .end annotation
.end field

.field private rankings:Lcom/etermax/preguntados/datasource/dto/ProfileRankingsDTO;


# virtual methods
.method public getCategory_question()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->category_questions:Ljava/util/List;

    return-object v0
.end method

.method public getChallenges()Lcom/etermax/preguntados/datasource/dto/ChallengeDTO;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->challenges:Lcom/etermax/preguntados/datasource/dto/ChallengeDTO;

    return-object v0
.end method

.method public getDuelGamesLost()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->duel_games_lost:I

    return v0
.end method

.method public getDuelGamesWon()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->duel_games_won:I

    return v0
.end method

.method public getGames_lost()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->games_lost:I

    return v0
.end method

.method public getGames_resigned()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->games_resigned:I

    return v0
.end method

.method public getGames_won()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->games_won:I

    return v0
.end method

.method public getLanguageGames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/LanguageGameDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->language_games:Ljava/util/List;

    return-object v0
.end method

.method public getRankings()Lcom/etermax/preguntados/datasource/dto/ProfileRankingsDTO;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->rankings:Lcom/etermax/preguntados/datasource/dto/ProfileRankingsDTO;

    return-object v0
.end method
