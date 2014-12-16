.class Lcom/etermax/preguntados/f/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/f/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/f/b;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/f/b;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/etermax/preguntados/f/b$2;->a:Lcom/etermax/preguntados/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 130
    invoke-static {}, Lcom/etermax/preguntados/f/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/f/a;->c(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/etermax/preguntados/f/b$2;->a:Lcom/etermax/preguntados/f/b;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/f/b;->a(Landroid/os/Bundle;)V

    .line 132
    iget-object v0, p0, Lcom/etermax/preguntados/f/b$2;->a:Lcom/etermax/preguntados/f/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/f/b;->dismiss()V

    .line 133
    return-void
.end method
