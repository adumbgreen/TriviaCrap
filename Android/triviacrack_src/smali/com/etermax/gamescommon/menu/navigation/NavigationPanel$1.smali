.class Lcom/etermax/gamescommon/menu/navigation/NavigationPanel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel$1;->a:Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel$1;->a:Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/menu/navigation/c;

    .line 158
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel$1;->a:Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->a(Lcom/etermax/gamescommon/menu/navigation/c;)V

    .line 160
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel$1;->a:Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->a(Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;)Lcom/etermax/gamescommon/menu/navigation/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel$1;->a:Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->a(Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;)Lcom/etermax/gamescommon/menu/navigation/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/etermax/gamescommon/menu/navigation/b;->a(Lcom/etermax/gamescommon/menu/navigation/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel$1;->a:Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    .line 167
    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel$2;->a:[I

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/c;->c()Lcom/etermax/gamescommon/menu/navigation/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/gamescommon/menu/navigation/f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 187
    :pswitch_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/b;

    invoke-interface {v0}, Lcom/etermax/tools/b;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 188
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 169
    :pswitch_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "facebook_dialog"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/social/e;

    .line 170
    if-nez v0, :cond_2

    .line 171
    const-string v0, "dashboard"

    invoke-static {v0}, Lcom/etermax/gamescommon/social/e;->a(Ljava/lang/String;)Lcom/etermax/gamescommon/social/e;

    move-result-object v0

    .line 173
    :cond_2
    invoke-virtual {v0}, Lcom/etermax/gamescommon/social/e;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "facebook_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/social/e;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :pswitch_2
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "twitter_dialog"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/social/k;

    .line 179
    if-nez v0, :cond_3

    .line 180
    invoke-static {}, Lcom/etermax/gamescommon/social/k;->a()Lcom/etermax/gamescommon/social/k;

    move-result-object v0

    .line 182
    :cond_3
    invoke-virtual {v0}, Lcom/etermax/gamescommon/social/k;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "twitter_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/social/k;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :pswitch_3
    iget-object v2, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel$1;->a:Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
