.class public Lcom/etermax/preguntados/ui/d/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/m;->a:Landroid/os/Bundle;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/d/l$1;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/d/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/d/k;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/etermax/preguntados/ui/d/l;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/d/l;-><init>()V

    .line 114
    iget-object v1, p0, Lcom/etermax/preguntados/ui/d/m;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/d/l;->setArguments(Landroid/os/Bundle;)V

    .line 115
    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/ui/d/m;
    .locals 2
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/m;->a:Landroid/os/Bundle;

    const-string v1, "mSelectedCrown"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 120
    return-object p0
.end method
