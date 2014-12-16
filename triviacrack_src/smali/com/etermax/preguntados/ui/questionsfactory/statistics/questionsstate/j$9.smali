.class Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$9;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->o()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;

.field final synthetic b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$9;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$9;->a:Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$9;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;Ljava/lang/Void;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 374
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 375
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$9;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->g(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/k;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/k;->n()V

    .line 376
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 365
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$9;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$9;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->d:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$9;->a:Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;)V

    .line 369
    const/4 v0, 0x0

    return-object v0
.end method
