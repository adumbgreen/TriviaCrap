.class public Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/statistics/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 30
    return-void
.end method

.method public static a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/c;->g()Lcom/etermax/preguntados/ui/questionsfactory/statistics/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/d;->a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a$2;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a$2;->a(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method


# virtual methods
.method protected a(Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->statistics_panel_suggest_counter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;->getSuggested()Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;->getTotal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->statistics_panel_rate_counter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;->getRated()Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;->getTotal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->statistics_panel_translate_counter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;->getTranslated()Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;->getTotal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method

.method public b()Lcom/etermax/preguntados/ui/questionsfactory/statistics/b;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;)V

    return-object v0
.end method

.method c()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->g()V

    .line 50
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/b;->b()V

    .line 88
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/b;->c()V

    .line 93
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/b;->d()V

    .line 98
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->b()Lcom/etermax/preguntados/ui/questionsfactory/statistics/b;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    sget v0, Lcom/etermax/k;->statistics_panel_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 56
    sget v0, Lcom/etermax/i;->questions_factory_header_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/etermax/o;->my_questions:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-object v1
.end method
