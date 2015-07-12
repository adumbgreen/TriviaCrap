.class public Lcom/etermax/preguntados/ui/questionsfactory/statistics/StatisticsActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/questionsfactory/statistics/b;


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/StatisticsActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/StatisticsActivity;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;

    .line 36
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/StatisticsActivity;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/StatisticsActivity;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;->getSuggested()Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/SuggestedQuestionsStatsActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;)Landroid/content/Intent;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/StatisticsActivity;->startActivity(Landroid/content/Intent;)V

    .line 44
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/StatisticsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/etermax/o;->only_count_rate:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/StatisticsActivity;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/StatisticsActivity;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;->getTranslated()Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/TranslatedQuestionsStatsActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/StatisticsActivity;->startActivity(Landroid/content/Intent;)V

    .line 57
    :cond_0
    return-void
.end method
