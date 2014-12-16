.class public Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/e;->a:Landroid/os/Bundle;

    .line 212
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d$1;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;-><init>()V

    .line 216
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/e;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/d;->setArguments(Landroid/os/Bundle;)V

    .line 217
    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;)Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/e;
    .locals 2
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/e;->a:Landroid/os/Bundle;

    const-string v1, "mConfig"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 222
    return-object p0
.end method
