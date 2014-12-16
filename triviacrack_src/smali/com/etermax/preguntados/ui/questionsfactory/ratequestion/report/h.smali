.class public Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/h;->a:Landroid/os/Bundle;

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g$1;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/e;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/h;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/g;->setArguments(Landroid/os/Bundle;)V

    .line 109
    return-object v0
.end method
