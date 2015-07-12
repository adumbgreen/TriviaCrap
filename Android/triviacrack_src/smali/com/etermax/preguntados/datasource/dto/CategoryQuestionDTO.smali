.class public Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field private correct:I

.field private incorrect:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;->category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    return-object v0
.end method

.method public getCorrect()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;->correct:I

    return v0
.end method

.method public getIncorrect()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;->incorrect:I

    return v0
.end method
