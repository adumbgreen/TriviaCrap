.class public Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/SuggestedQuestionsStatsActivity;
.super Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/BaseQuestionsStatsActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/SuggestedQuestionsStatsActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mQuestionsStatsCountDTO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected b()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/etermax/o;->suggested_questions:I

    return v0
.end method

.method protected c()Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;->ORIGINAL:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    return-object v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/etermax/o;->suggested_in_rate:I

    return v0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/etermax/o;->suggested_in_rate_txt:I

    return v0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/etermax/o;->suggested_approved:I

    return v0
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/etermax/o;->suggested_approved_txt:I

    return v0
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/etermax/o;->suggested_disapproved:I

    return v0
.end method

.method protected j()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/etermax/o;->suggested_disapproved_txt:I

    return v0
.end method
