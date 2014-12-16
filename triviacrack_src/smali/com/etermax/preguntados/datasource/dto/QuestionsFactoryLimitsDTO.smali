.class public Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private answers_max_size:I

.field private answers_min_size:I

.field private question_max_size:I

.field private question_min_size:I


# virtual methods
.method public getAnswersMaxSize()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->answers_max_size:I

    return v0
.end method

.method public getAnswersMinSize()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->answers_min_size:I

    return v0
.end method

.method public getQuestionMaxSize()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->question_max_size:I

    return v0
.end method

.method public getQuestionMinSize()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/QuestionsFactoryLimitsDTO;->question_min_size:I

    return v0
.end method
