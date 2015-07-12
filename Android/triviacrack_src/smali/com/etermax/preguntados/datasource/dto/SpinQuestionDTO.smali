.class public Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private backup_question:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

.field private powerup_question:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

.field private question:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackupQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->backup_question:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    return-object v0
.end method

.method public getPowerup_question()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->powerup_question:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    return-object v0
.end method

.method public getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->question:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    return-object v0
.end method
