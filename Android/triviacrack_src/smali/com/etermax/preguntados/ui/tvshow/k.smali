.class public Lcom/etermax/preguntados/ui/tvshow/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/k;->a:Landroid/os/Bundle;

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/tvshow/j$1;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/tvshow/g;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/j;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/tvshow/j;-><init>()V

    .line 131
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/k;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/tvshow/j;->setArguments(Landroid/os/Bundle;)V

    .line 132
    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;)Lcom/etermax/preguntados/ui/tvshow/k;
    .locals 2
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/k;->a:Landroid/os/Bundle;

    const-string v1, "mQuestion"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 137
    return-object p0
.end method
