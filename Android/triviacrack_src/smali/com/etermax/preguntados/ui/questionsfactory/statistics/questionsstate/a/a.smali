.class public abstract Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;

.field protected b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;

    .line 18
    iput-object p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 19
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/view/View;Landroid/widget/BaseAdapter;)Landroid/view/View;
.end method

.method public a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;

    return-object v0
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    return-object v0
.end method
