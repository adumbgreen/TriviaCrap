.class public Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/d;->a:Landroid/os/Bundle;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/c$1;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/c;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/d;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/c;->setArguments(Landroid/os/Bundle;)V

    .line 90
    return-object v0
.end method
