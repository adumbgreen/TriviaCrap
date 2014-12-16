.class Lcom/etermax/tools/widget/b/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/widget/b/i;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/widget/b/i;


# direct methods
.method constructor <init>(Lcom/etermax/tools/widget/b/i;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/etermax/tools/widget/b/i$1;->a:Lcom/etermax/tools/widget/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/etermax/tools/widget/b/i$1;->a:Lcom/etermax/tools/widget/b/i;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/i;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/tools/widget/b/j;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/etermax/tools/widget/b/i$1;->a:Lcom/etermax/tools/widget/b/i;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/i;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/b/j;

    .line 92
    iget-object v1, p0, Lcom/etermax/tools/widget/b/i$1;->a:Lcom/etermax/tools/widget/b/i;

    invoke-virtual {v1}, Lcom/etermax/tools/widget/b/i;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "info"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/tools/widget/b/j;->a(Landroid/os/Bundle;)V

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/etermax/tools/widget/b/i$1;->a:Lcom/etermax/tools/widget/b/i;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/i;->dismiss()V

    .line 98
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/widget/b/i$1;->a:Lcom/etermax/tools/widget/b/i;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/tools/widget/b/j;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/etermax/tools/widget/b/i$1;->a:Lcom/etermax/tools/widget/b/i;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/b/j;

    .line 95
    iget-object v1, p0, Lcom/etermax/tools/widget/b/i$1;->a:Lcom/etermax/tools/widget/b/i;

    invoke-virtual {v1}, Lcom/etermax/tools/widget/b/i;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "info"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/tools/widget/b/j;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method
