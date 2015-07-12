.class Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$4;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->l()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;",
        "Lcom/etermax/preguntados/datasource/dto/QuestionDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$4;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$4;->b()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$4;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    iput-object p2, v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    .line 136
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$4;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$4;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V

    .line 137
    return-void
.end method

.method protected a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 141
    check-cast p2, Lcom/etermax/preguntados/datasource/a/b;

    .line 142
    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/a/b;->c()I

    move-result v0

    const/16 v1, 0x1a0

    if-ne v0, v1, :cond_0

    .line 143
    invoke-static {p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a;->a(Landroid/content/Context;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 145
    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$4;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;Z)V

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$4;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->b(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V

    .line 151
    return-void

    .line 148
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$4;->a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$4;->a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$4;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->a:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$4;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->i:Lcom/etermax/gamescommon/language/Language;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$4;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->j:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/gamescommon/language/Language;Lcom/etermax/preguntados/datasource/dto/enums/Country;)Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    return-object v0
.end method
