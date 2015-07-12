.class public Lcom/etermax/preguntados/ui/tvshow/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/etermax/preguntados/ui/tvshow/f;->a:Landroid/content/Context;

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/f;->b:Landroid/content/Intent;

    .line 119
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/f;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public a(I)Lcom/etermax/preguntados/ui/tvshow/f;
    .locals 2
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/f;->b:Landroid/content/Intent;

    const-string v1, "mPollingIntervalSeconds"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    return-object p0
.end method
