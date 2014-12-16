.class Lcom/etermax/preguntados/ui/rankings/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/social/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/rankings/e;->g()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/rankings/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/rankings/e;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/etermax/preguntados/ui/rankings/e$3;->a:Lcom/etermax/preguntados/ui/rankings/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e$3;->a:Lcom/etermax/preguntados/ui/rankings/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/rankings/e;->b(Lcom/etermax/preguntados/ui/rankings/e;)V

    .line 130
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e$3;->a:Lcom/etermax/preguntados/ui/rankings/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/rankings/e;->c(Lcom/etermax/preguntados/ui/rankings/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/e$3;->a:Lcom/etermax/preguntados/ui/rankings/e;

    sget v2, Lcom/etermax/o;->facebook_link_failed:I

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/ui/rankings/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 135
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e$3;->a:Lcom/etermax/preguntados/ui/rankings/e;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/rankings/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 140
    return-void
.end method
