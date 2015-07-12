.class public Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private answers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/AnswerDTO;",
            ">;"
        }
    .end annotation
.end field

.field private finish_time:Ljava/lang/Long;

.field private offered_crown:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field private requested_crown:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field private type:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnswers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/AnswerDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->answers:Ljava/util/List;

    return-object v0
.end method

.method public setAnswers(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/AnswerDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->answers:Ljava/util/List;

    .line 30
    return-void
.end method

.method public setFinishTime(Ljava/lang/Long;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->finish_time:Ljava/lang/Long;

    .line 50
    return-void
.end method

.method public setOfferedCrown(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->offered_crown:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 38
    return-void
.end method

.method public setRequestedCrown(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->requested_crown:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 46
    return-void
.end method

.method public setType(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->type:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    .line 22
    return-void
.end method
