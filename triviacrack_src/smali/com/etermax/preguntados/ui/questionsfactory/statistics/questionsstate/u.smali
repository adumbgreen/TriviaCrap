.class public Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;->a:Landroid/os/Bundle;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t$1;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;-><init>()V

    .line 105
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/t;->setArguments(Landroid/os/Bundle;)V

    .line 106
    return-object v0
.end method

.method public a(I)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;
    .locals 2
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;->a:Landroid/os/Bundle;

    const-string v1, "mSubtitleResourceId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;
    .locals 2
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;->a:Landroid/os/Bundle;

    const-string v1, "mQuestionType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 111
    return-object p0
.end method

.method public b(I)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;
    .locals 2
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/u;->a:Landroid/os/Bundle;

    const-string v1, "mTitleResourceId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    return-object p0
.end method
