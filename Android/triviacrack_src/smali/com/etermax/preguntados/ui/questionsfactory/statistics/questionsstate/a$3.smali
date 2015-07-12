.class Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$3;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
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
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field final synthetic b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$3;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$3;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$3;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Ljava/util/Map;)V
    .locals 1
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
    .line 166
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    invoke-static {p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Ljava/util/Map;)V

    .line 168
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$3;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-static {p1, v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->b(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 169
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$3;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Ljava/util/Map;)V

    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 5
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
    .line 161
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$3;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->a:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$3;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$3;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$3;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$3;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-static {v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v3

    iget-object v4, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a$3;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;ILcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
