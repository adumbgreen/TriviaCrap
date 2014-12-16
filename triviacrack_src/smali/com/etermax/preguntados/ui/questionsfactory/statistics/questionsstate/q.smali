.class public Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/q;->a:Landroid/os/Bundle;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p$1;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/q;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;->setArguments(Landroid/os/Bundle;)V

    .line 121
    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/q;
    .locals 2
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/q;->a:Landroid/os/Bundle;

    const-string v1, "mQuestion"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 126
    return-object p0
.end method
