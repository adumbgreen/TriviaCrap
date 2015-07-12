.class public Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/d;->a:Landroid/os/Bundle;

    .line 172
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/c$1;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/c;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/d;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/c;->setArguments(Landroid/os/Bundle;)V

    .line 177
    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;)Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/d;
    .locals 2
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/d;->a:Landroid/os/Bundle;

    const-string v1, "mConfig"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 182
    return-object p0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/d;
    .locals 2
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/d;->a:Landroid/os/Bundle;

    const-string v1, "mSelectedCategory"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 187
    return-object p0
.end method
