.class public Lcom/etermax/preguntados/datasource/dto/SpinDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private performance:I

.field private questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;",
            ">;"
        }
    .end annotation
.end field

.field private tie_break_question:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

.field private type:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

.field private worst:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPerformance()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->performance:I

    return v0
.end method

.method public getQuestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->questions:Ljava/util/List;

    return-object v0
.end method

.method public getTieBreakQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->tie_break_question:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    return-object v0
.end method

.method public getType()Lcom/etermax/preguntados/datasource/dto/enums/SpinType;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->type:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    return-object v0
.end method

.method public isWorst()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->worst:Z

    return v0
.end method
