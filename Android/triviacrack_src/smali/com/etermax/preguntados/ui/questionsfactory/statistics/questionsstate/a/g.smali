.class public Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/g;
.super Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/f;-><init>(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V

    .line 13
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;Landroid/widget/BaseAdapter;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    if-nez p2, :cond_0

    .line 19
    invoke-static {p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/m;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/l;

    move-result-object p2

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/g;->c:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-virtual {p2, v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/l;->a(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V

    .line 24
    return-object p2

    .line 21
    :cond_0
    check-cast p2, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/l;

    goto :goto_0
.end method
