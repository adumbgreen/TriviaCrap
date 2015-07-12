.class public Lcom/etermax/preguntados/ui/questionsfactory/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/d;->a:Landroid/os/Bundle;

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/c$1;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/a;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/questionsfactory/c;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/d;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/c;->setArguments(Landroid/os/Bundle;)V

    .line 135
    return-object v0
.end method
