.class Lcom/etermax/tools/widget/b/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/widget/b/g;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/widget/b/g;


# direct methods
.method constructor <init>(Lcom/etermax/tools/widget/b/g;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/etermax/tools/widget/b/g$1;->a:Lcom/etermax/tools/widget/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/etermax/tools/widget/b/g$1;->a:Lcom/etermax/tools/widget/b/g;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/g;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/tools/widget/b/h;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/etermax/tools/widget/b/g$1;->a:Lcom/etermax/tools/widget/b/g;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/g;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/b/h;

    .line 66
    iget-object v1, p0, Lcom/etermax/tools/widget/b/g$1;->a:Lcom/etermax/tools/widget/b/g;

    invoke-virtual {v1}, Lcom/etermax/tools/widget/b/g;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "info"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/tools/widget/b/h;->c(Landroid/os/Bundle;)V

    .line 71
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/etermax/tools/widget/b/g$1;->a:Lcom/etermax/tools/widget/b/g;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/g;->dismiss()V

    .line 72
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/widget/b/g$1;->a:Lcom/etermax/tools/widget/b/g;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/tools/widget/b/h;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/etermax/tools/widget/b/g$1;->a:Lcom/etermax/tools/widget/b/g;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/b/h;

    .line 69
    iget-object v1, p0, Lcom/etermax/tools/widget/b/g$1;->a:Lcom/etermax/tools/widget/b/g;

    invoke-virtual {v1}, Lcom/etermax/tools/widget/b/g;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "info"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/tools/widget/b/h;->c(Landroid/os/Bundle;)V

    goto :goto_0
.end method
