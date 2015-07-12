.class public Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/m;->a:Landroid/os/Bundle;

    .line 174
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l$1;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/j;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;-><init>()V

    .line 178
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/m;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/l;->setArguments(Landroid/os/Bundle;)V

    .line 179
    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/m;
    .locals 2
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/m;->a:Landroid/os/Bundle;

    const-string v1, "mQuestionDTO"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 189
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/m;
    .locals 2
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/m;->a:Landroid/os/Bundle;

    const-string v1, "mConfigDTO"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 184
    return-object p0
.end method
