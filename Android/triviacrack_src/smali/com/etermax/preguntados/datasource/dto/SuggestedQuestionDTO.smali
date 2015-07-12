.class public Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private answers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field private correct_answer:I

.field private country:Lcom/etermax/preguntados/datasource/dto/enums/Country;

.field private language:Lcom/etermax/gamescommon/language/Language;

.field private question:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAnswers(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;->answers:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;->category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 27
    return-void
.end method

.method public setCorrectAnswer(I)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;->correct_answer:I

    .line 51
    return-void
.end method

.method public setCountry(Lcom/etermax/preguntados/datasource/dto/enums/Country;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;->country:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    .line 59
    return-void
.end method

.method public setLanguage(Lcom/etermax/gamescommon/language/Language;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;->language:Lcom/etermax/gamescommon/language/Language;

    .line 67
    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;->question:Ljava/lang/String;

    .line 35
    return-void
.end method
