.class public Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/i;->a:Landroid/os/Bundle;

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h$1;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/i;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;->setArguments(Landroid/os/Bundle;)V

    .line 95
    return-object v0
.end method
