.class public Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/questionsfactory/b;
.implements Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/g;
.implements Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/k;


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity$1;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity$1;->a(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity$2;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity$2;->a(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method private m()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 116
    const-string v3, "firstSuggestQuestion"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "firstSuggestQuestion"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private n()Z
    .locals 3

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    const-string v1, "under_age"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private o()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 157
    const-string v3, "first_rate"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "first_rate"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/a;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/l;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 52
    const-string v1, "fragment_suggest_warning"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/f;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 63
    const-string v1, "fragment_rate_warning"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->k()V

    goto :goto_0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->l()V

    .line 72
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/StatisticsActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->onBackPressed()V

    .line 128
    invoke-static {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->onBackPressed()V

    .line 135
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->onBackPressed()V

    .line 141
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "under_age"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->k()V

    .line 143
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->onBackPressed()V

    .line 148
    return-void
.end method
