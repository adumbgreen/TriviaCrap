.class public Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/c;


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;

.field b:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

.field c:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mConfigDTO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 57
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity$1;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity$1;->a(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->b:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->a(Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Lcom/etermax/gamescommon/language/Language;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-static {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Lcom/etermax/gamescommon/language/Language;)Landroid/content/Intent;

    move-result-object v0

    .line 86
    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 87
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->b(Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;)V

    .line 81
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 106
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->v()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 93
    instance-of v1, v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;

    if-eqz v1, :cond_0

    .line 94
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 95
    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;->b()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;->c()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->v()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    const-string v1, "answer_fragment_tag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->finish()V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method
