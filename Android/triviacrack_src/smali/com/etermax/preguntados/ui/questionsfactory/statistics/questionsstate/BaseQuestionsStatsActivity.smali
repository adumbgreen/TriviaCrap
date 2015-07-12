.class public abstract Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/c;
.implements Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/g;
.implements Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/k;
.implements Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/s;
.implements Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/w;


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/etermax/o;->no_questions_state:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 75
    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->b()I

    move-result v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v;->a(ILcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    invoke-static {p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->a(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 81
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 82
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-static {p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->a(Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 88
    const-string v1, "fragment_edit_rejected_question"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 89
    return-void
.end method

.method protected abstract b()I
.end method

.method protected abstract c()Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;
.end method

.method protected abstract d()I
.end method

.method protected abstract e()I
.end method

.method protected abstract f()I
.end method

.method protected abstract h()I
.end method

.method protected abstract i()I
.end method

.method protected abstract j()I
.end method

.method public k()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;->getInRate()I

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->c()Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->e()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/f;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;II)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 47
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->o()V

    goto :goto_0
.end method

.method public l()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;->getApproved()I

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->c()Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->h()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/b;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;II)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 57
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->o()V

    goto :goto_0
.end method

.method public m()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;->getRejected()I

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->c()Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->i()I

    move-result v1

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->j()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;II)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 67
    const/4 v1, 0x1

    const-string v2, "fragment_rejected_questions"

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->a(Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->o()V

    goto :goto_0
.end method

.method public n()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 95
    const-string v1, "fragment_edit_rejected_question"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 98
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;->v()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 101
    instance-of v1, v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;

    if-eqz v1, :cond_1

    .line 102
    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->e()V

    .line 104
    :cond_1
    return-void
.end method
