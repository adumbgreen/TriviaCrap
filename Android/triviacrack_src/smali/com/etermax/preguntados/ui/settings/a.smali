.class public Lcom/etermax/preguntados/ui/settings/a;
.super Lcom/etermax/gamescommon/i/b/g;
.source "SourceFile"


# instance fields
.field private i:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/b/g;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Z)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/etermax/preguntados/ui/settings/b;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/settings/b;-><init>()V

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 30
    const-string v2, "help_ids"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 31
    const-string v2, "show_purchase"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/settings/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/etermax/preguntados/ui/settings/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/gamescommon/i/b/h;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/etermax/gamescommon/i/b/k;->a(Landroid/content/Context;Lcom/etermax/gamescommon/i/b/h;Z)Lcom/etermax/gamescommon/i/b/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/settings/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/i/b/k;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/gamescommon/i/b/g;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 39
    sget v0, Lcom/etermax/i;->toggle_sound:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/settings/a;->i:Landroid/widget/ToggleButton;

    .line 41
    sget v0, Lcom/etermax/i;->txt_purchase_description:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/settings/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/etermax/o;->purchase_description:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/settings/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/etermax/o;->app_name:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    sget v0, Lcom/etermax/i;->username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/settings/a;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    sget v0, Lcom/etermax/i;->email:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/settings/a;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/etermax/preguntados/ui/settings/a;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget v0, Lcom/etermax/i;->facebook_section_divider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_0
    return-object v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/ui/settings/a;->f:Lcom/etermax/gamescommon/e;

    sget-object v1, Lcom/etermax/gamescommon/g;->d:Lcom/etermax/gamescommon/g;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/settings/a;->i:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Lcom/etermax/gamescommon/g;Z)V

    .line 62
    invoke-super {p0}, Lcom/etermax/gamescommon/i/b/g;->onPause()V

    .line 63
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etermax/preguntados/ui/settings/a;->i:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/settings/a;->f:Lcom/etermax/gamescommon/e;

    sget-object v2, Lcom/etermax/gamescommon/g;->d:Lcom/etermax/gamescommon/g;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Lcom/etermax/gamescommon/g;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 56
    invoke-super {p0}, Lcom/etermax/gamescommon/i/b/g;->onResume()V

    .line 57
    return-void
.end method
