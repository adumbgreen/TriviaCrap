.class Lcom/etermax/preguntados/ui/dashboard/a/a$2;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/a/a;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/a/a;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/a/a$2;->a:Lcom/etermax/preguntados/ui/dashboard/a/a;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/a$2;->a:Lcom/etermax/preguntados/ui/dashboard/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/a/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->get_more_lives_remaining_time_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/a/a$2;->a:Lcom/etermax/preguntados/ui/dashboard/a/a;

    sget v2, Lcom/etermax/o;->full:I

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/ui/dashboard/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .parameter

    .prologue
    .line 102
    invoke-static {p1, p2}, Lcom/etermax/preguntados/h/c;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 103
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/a$2;->a:Lcom/etermax/preguntados/ui/dashboard/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/a/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->get_more_lives_remaining_time_textview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method
