.class Lcom/etermax/tools/widget/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/widget/b/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/widget/b/a;


# direct methods
.method constructor <init>(Lcom/etermax/tools/widget/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/etermax/tools/widget/b/a$1;->a:Lcom/etermax/tools/widget/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/etermax/tools/widget/b/a$1;->a:Lcom/etermax/tools/widget/b/a;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/a;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/tools/widget/b/b;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/etermax/tools/widget/b/a$1;->a:Lcom/etermax/tools/widget/b/a;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/a;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/b/b;

    .line 103
    iget-object v1, p0, Lcom/etermax/tools/widget/b/a$1;->a:Lcom/etermax/tools/widget/b/a;

    invoke-virtual {v1}, Lcom/etermax/tools/widget/b/a;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "info_string"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/tools/widget/b/b;->a(Landroid/os/Bundle;)V

    .line 111
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/etermax/tools/widget/b/a$1;->a:Lcom/etermax/tools/widget/b/a;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/etermax/tools/widget/b/a$1;->a:Lcom/etermax/tools/widget/b/a;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/a;->dismiss()V

    .line 114
    :cond_1
    return-void

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/etermax/tools/widget/b/a$1;->a:Lcom/etermax/tools/widget/b/a;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/etermax/tools/widget/b/b;

    if-eqz v1, :cond_0

    .line 108
    check-cast v0, Lcom/etermax/tools/widget/b/b;

    iget-object v1, p0, Lcom/etermax/tools/widget/b/a$1;->a:Lcom/etermax/tools/widget/b/a;

    invoke-virtual {v1}, Lcom/etermax/tools/widget/b/a;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "info_string"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/tools/widget/b/b;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method
