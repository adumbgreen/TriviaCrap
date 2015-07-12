.class public Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/b;
.super Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;
.source "SourceFile"


# instance fields
.field private c:I


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;

    invoke-direct {p0, v0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 15
    iput p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/b;->c:I

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;Landroid/widget/BaseAdapter;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    if-nez p2, :cond_0

    .line 22
    invoke-static {p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/c;

    move-result-object p2

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/b;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    iget v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/b;->c:I

    invoke-virtual {p2, v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/c;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;I)V

    .line 27
    return-object p2

    .line 24
    :cond_0
    check-cast p2, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/c;

    goto :goto_0
.end method
