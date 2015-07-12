.class public Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/d;->a:Landroid/os/Bundle;

    .line 109
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c$1;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/d;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/c;->setArguments(Landroid/os/Bundle;)V

    .line 114
    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;)Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/d;
    .locals 2
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/d;->a:Landroid/os/Bundle;

    const-string v1, "mUserTranslationDTO"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 124
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/d;
    .locals 2
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/d;->a:Landroid/os/Bundle;

    const-string v1, "mQuestionCategory"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 119
    return-object p0
.end method
