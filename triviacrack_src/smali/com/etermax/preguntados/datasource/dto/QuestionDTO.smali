.class public Lcom/etermax/preguntados/datasource/dto/QuestionDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/sharing/p;
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

.field private author:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

.field private base_url:Ljava/lang/String;

.field private category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field private correct_answer:I

.field private id:I

.field private media_type:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

.field private player_answer:I

.field private text:Ljava/lang/String;

.field private translator:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->answers:Ljava/util/List;

    return-object v0
.end method

.method public getAuthor()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->author:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    return-object v0
.end method

.method public getBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->base_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    return-object v0
.end method

.method public getCorrectAnswer()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->correct_answer:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->id:I

    return v0
.end method

.method public getOpponentAnswer()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->player_answer:I

    return v0
.end method

.method public getQuestionType()Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->media_type:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslator()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->translator:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    return-object v0
.end method

.method public setMediaType(Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->media_type:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    .line 72
    return-void
.end method
