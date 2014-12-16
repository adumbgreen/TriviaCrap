.class public Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/o;
.super Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;
.source "SourceFile"


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 1
    .parameter

    .prologue
    .line 14
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;->c:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;

    invoke-direct {p0, v0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;Landroid/widget/BaseAdapter;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    if-nez p2, :cond_0

    .line 21
    invoke-static {p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/q;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/p;

    move-result-object p2

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/o;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/p;->b()V

    .line 30
    :goto_1
    return-object p2

    .line 23
    :cond_0
    check-cast p2, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/p;

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/p;->a()V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/o;->c:Z

    .line 39
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/o;->c:Z

    return v0
.end method
