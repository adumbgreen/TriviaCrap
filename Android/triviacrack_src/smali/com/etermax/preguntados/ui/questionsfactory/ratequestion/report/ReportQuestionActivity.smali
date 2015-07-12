.class public Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/b;
.implements Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/f;


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;

.field b:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

.field c:Lcom/etermax/gamescommon/language/Language;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Lcom/etermax/gamescommon/language/Language;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mQuestion"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mSelectedLanguage"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity$1;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity$1;->a(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;

    invoke-direct {v0}, Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;->b:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;->setId(I)V

    .line 50
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;->c:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;->setLanguage(Lcom/etermax/gamescommon/language/Language;)V

    .line 51
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;->setErrorType(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;)V

    .line 52
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;->a(Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;)V

    .line 53
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;

    invoke-direct {v0}, Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;->b:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;->setId(I)V

    .line 60
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;->c:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;->setLanguage(Lcom/etermax/gamescommon/language/Language;)V

    .line 61
    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->OTHER:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;->setErrorType(Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;)V

    .line 62
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;->setComment(Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;->a(Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;)V

    .line 64
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 43
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 44
    return-void
.end method
