.class public Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;
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
            "Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO$TvShowAnswerDTO;",
            ">;"
        }
    .end annotation
.end field

.field private category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field private id:J

.field private remaining_seconds:I

.field private text:Ljava/lang/String;

.field private total_seconds:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
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
            "Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO$TvShowAnswerDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;->answers:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;->category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;->id:J

    return-wide v0
.end method

.method public getRemainingSeconds()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;->remaining_seconds:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSeconds()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;->total_seconds:I

    return v0
.end method
