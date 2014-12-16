.class Lcom/etermax/tools/widget/b/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/widget/b/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/widget/b/c;


# direct methods
.method constructor <init>(Lcom/etermax/tools/widget/b/c;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/etermax/tools/widget/b/c$1;->a:Lcom/etermax/tools/widget/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/etermax/tools/widget/b/c$1;->a:Lcom/etermax/tools/widget/b/c;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/c;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/tools/widget/b/d;

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/etermax/tools/widget/b/c$1;->a:Lcom/etermax/tools/widget/b/c;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/c;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/b/d;

    .line 109
    iget-object v1, p0, Lcom/etermax/tools/widget/b/c$1;->a:Lcom/etermax/tools/widget/b/c;

    invoke-virtual {v1}, Lcom/etermax/tools/widget/b/c;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "info_string"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/tools/widget/b/d;->onAccept(Landroid/os/Bundle;)V

    .line 118
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/etermax/tools/widget/b/c$1;->a:Lcom/etermax/tools/widget/b/c;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/etermax/tools/widget/b/c$1;->a:Lcom/etermax/tools/widget/b/c;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/c;->dismiss()V

    .line 121
    :cond_1
    return-void

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/etermax/tools/widget/b/c$1;->a:Lcom/etermax/tools/widget/b/c;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/etermax/tools/widget/b/d;

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Lcom/etermax/tools/widget/b/d;

    iget-object v1, p0, Lcom/etermax/tools/widget/b/c$1;->a:Lcom/etermax/tools/widget/b/c;

    invoke-virtual {v1}, Lcom/etermax/tools/widget/b/c;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "info_string"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/tools/widget/b/d;->onAccept(Landroid/os/Bundle;)V

    goto :goto_0
.end method
