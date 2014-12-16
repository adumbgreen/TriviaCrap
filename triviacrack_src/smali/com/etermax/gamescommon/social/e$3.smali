.class Lcom/etermax/gamescommon/social/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/social/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/social/e;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/social/e;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/etermax/gamescommon/social/e$3;->a:Lcom/etermax/gamescommon/social/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    .line 129
    new-instance v0, Lcom/etermax/gamescommon/social/e$3$1;

    iget-object v1, p0, Lcom/etermax/gamescommon/social/e$3;->a:Lcom/etermax/gamescommon/social/e;

    sget v2, Lcom/etermax/o;->loading:I

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/social/e;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/etermax/gamescommon/social/e$3;->a:Lcom/etermax/gamescommon/social/e;

    iget-object v3, v1, Lcom/etermax/gamescommon/social/e;->a:Lcom/etermax/tools/social/a/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/social/e$3;->a:Lcom/etermax/gamescommon/social/e;

    iget-object v4, v1, Lcom/etermax/gamescommon/social/e;->d:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/social/e$3;->a:Lcom/etermax/gamescommon/social/e;

    iget-object v5, v1, Lcom/etermax/gamescommon/social/e;->b:Lcom/etermax/gamescommon/login/datasource/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/social/e$3;->a:Lcom/etermax/gamescommon/social/e;

    iget-object v6, v1, Lcom/etermax/gamescommon/social/e;->e:Lcom/etermax/tools/f/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/social/e$3;->a:Lcom/etermax/gamescommon/social/e;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/social/e;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "FROM"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/etermax/gamescommon/social/e$3$1;-><init>(Lcom/etermax/gamescommon/social/e$3;Ljava/lang/String;Lcom/etermax/tools/social/a/b;Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/a;Lcom/etermax/tools/f/a;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/etermax/gamescommon/social/e$3;->a:Lcom/etermax/gamescommon/social/e;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/social/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/social/e$3$1;->a(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e$3;->a:Lcom/etermax/gamescommon/social/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/social/e;->dismiss()V

    .line 134
    return-void
.end method
