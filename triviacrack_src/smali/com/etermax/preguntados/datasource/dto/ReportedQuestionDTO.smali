.class public Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private comment:Ljava/lang/String;

.field private error_type:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

.field private id:I

.field private language:Lcom/etermax/gamescommon/language/Language;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setComment(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;->comment:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setErrorType(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;->error_type:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    .line 39
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;->id:I

    .line 23
    return-void
.end method

.method public setLanguage(Lcom/etermax/gamescommon/language/Language;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;->language:Lcom/etermax/gamescommon/language/Language;

    .line 31
    return-void
.end method
