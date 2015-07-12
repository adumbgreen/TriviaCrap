.class public Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/w;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 24
    return-void
.end method

.method public static a(ILcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x;->e()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/y;->a(I)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/y;->a(Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/y;->a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/w;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v;)V

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/w;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/w;->k()V

    .line 61
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/w;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/w;->l()V

    .line 66
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/w;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/w;->m()V

    .line 71
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v;->a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/w;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    sget v0, Lcom/etermax/k;->statistics_questions_state_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 50
    sget v0, Lcom/etermax/i;->questions_factory_header_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v;->a:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    sget v0, Lcom/etermax/i;->statistics_state_rate_counter:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v;->b:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;->getInRate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    sget v0, Lcom/etermax/i;->statistics_state_approved_counter:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v;->b:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;->getApproved()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    sget v0, Lcom/etermax/i;->statistics_state_rejected_counter:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v;->b:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;->getRejected()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-object v1
.end method
