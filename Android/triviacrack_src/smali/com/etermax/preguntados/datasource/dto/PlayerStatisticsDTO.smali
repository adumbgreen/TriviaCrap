.class public Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field category_questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;",
            ">;"
        }
    .end annotation
.end field

.field challenges_won:I

.field correct_answers:I

.field crowns_won:I

.field incorrect_answers:I

.field questions_answered:I


# virtual methods
.method public getCategoryQuestions()Ljava/util/List;
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
    .line 33
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->category_questions:Ljava/util/List;

    return-object v0
.end method

.method public getChallengesWon()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->challenges_won:I

    return v0
.end method

.method public getCorrectAnswers()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->correct_answers:I

    return v0
.end method

.method public getCrownsWon()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->crowns_won:I

    return v0
.end method

.method public getIncorrectAnswers()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->incorrect_answers:I

    return v0
.end method

.method public getQuestionsAnswered()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->questions_answered:I

    return v0
.end method
