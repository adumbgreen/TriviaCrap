.class Lcom/etermax/preguntados/ui/dashboard/a/e$2;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/a/e;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/a/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/a/e;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/a/e$2;->a:Lcom/etermax/preguntados/ui/dashboard/a/e;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e$2;->a:Lcom/etermax/preguntados/ui/dashboard/a/e;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/a/e$2;->a:Lcom/etermax/preguntados/ui/dashboard/a/e;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 155
    invoke-static {}, Lcom/etermax/preguntados/ui/dashboard/a/a;->a()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 156
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e$2;->a:Lcom/etermax/preguntados/ui/dashboard/a/e;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    const-string v2, "get_more_lives_fragment"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 157
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .parameter

    .prologue
    .line 147
    invoke-static {p1, p2}, Lcom/etermax/preguntados/h/c;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 148
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e$2;->a:Lcom/etermax/preguntados/ui/dashboard/a/e;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->out_of_lives_remaining_time_textview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method
