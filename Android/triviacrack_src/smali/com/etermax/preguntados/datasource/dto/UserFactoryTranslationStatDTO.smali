.class public Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;
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

.field private category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field private correct_answer:I

.field private countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/Country;",
            ">;"
        }
    .end annotation
.end field

.field private disapproval_reason:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

.field private dislikes:J

.field private language:Lcom/etermax/gamescommon/language/Language;

.field private likes:J

.field private modification_date:Ljava/util/Date;

.field private origin:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

.field private question_id:I

.field private text:Ljava/lang/String;

.field private translation_id:J

.field private type:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
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
    .line 86
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->answers:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    return-object v0
.end method

.method public getCorrectAnswer()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->correct_answer:I

    return v0
.end method

.method public getCountries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/Country;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->countries:Ljava/util/List;

    return-object v0
.end method

.method public getDisapprovalReason()Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->disapproval_reason:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    return-object v0
.end method

.method public getDislikes()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->dislikes:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->question_id:I

    return v0
.end method

.method public getLanguage()Lcom/etermax/gamescommon/language/Language;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->language:Lcom/etermax/gamescommon/language/Language;

    return-object v0
.end method

.method public getLikes()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->likes:J

    return-wide v0
.end method

.method public getModificationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->modification_date:Ljava/util/Date;

    return-object v0
.end method

.method public getOrigin()Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->origin:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    return-object v0
.end method

.method public getQuestionType()Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->type:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslation_id()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->translation_id:J

    return-wide v0
.end method
