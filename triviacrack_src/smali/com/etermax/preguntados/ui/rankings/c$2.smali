.class Lcom/etermax/preguntados/ui/rankings/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/rankings/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/rankings/c;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/rankings/c;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/etermax/preguntados/ui/rankings/c$2;->a:Lcom/etermax/preguntados/ui/rankings/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/c$2;->a:Lcom/etermax/preguntados/ui/rankings/c;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/rankings/c;->a(Lcom/etermax/preguntados/ui/rankings/c;)Lcom/etermax/tools/widget/b/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/etermax/tools/widget/b/b;->a(Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/c$2;->a:Lcom/etermax/preguntados/ui/rankings/c;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/rankings/c;->dismiss()V

    .line 52
    return-void
.end method
