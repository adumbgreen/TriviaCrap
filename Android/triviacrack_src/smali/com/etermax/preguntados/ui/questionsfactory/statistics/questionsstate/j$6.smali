.class Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->i()Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$6;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;)V
    .locals 2
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$6;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;

    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;->b()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    iput-object v1, v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->e:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 255
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$6;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;->f(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;)V

    .line 256
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;

    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j$6;->a(Lcom/etermax/preguntados/ui/questionsfactory/widget/a/e;)V

    return-void
.end method
