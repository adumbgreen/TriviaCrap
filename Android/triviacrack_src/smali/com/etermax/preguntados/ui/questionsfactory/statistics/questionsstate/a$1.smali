.class Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$1;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a",
        "<TT;>;",
        "Ljava/util/Map",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
        "Lcom/etermax/preguntados/datasource/dto/UserQuestionStatsDTO;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$1;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$1;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Ljava/lang/Exception;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a",
            "<TT;>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 107
    instance-of v0, p2, Lcom/etermax/preguntados/datasource/a/b;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 108
    check-cast v0, Lcom/etermax/preguntados/datasource/a/b;

    .line 109
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/a/b;->c()I

    move-result v0

    const/16 v1, 0x1a0

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$1;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$1;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    sget v2, Lcom/etermax/o;->no_more_questions:I

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$1;->b(Z)V

    .line 112
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$1;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->b(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/r;->a()V

    .line 115
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 116
    return-void
.end method

.method public a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            "Lcom/etermax/preguntados/datasource/dto/UserQuestionStatsDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    invoke-static {p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Ljava/util/Map;)V

    .line 103
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$1;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$1;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Ljava/util/Map;)V

    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            "Lcom/etermax/preguntados/datasource/dto/UserQuestionStatsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$1;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->a:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$1;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$1;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
