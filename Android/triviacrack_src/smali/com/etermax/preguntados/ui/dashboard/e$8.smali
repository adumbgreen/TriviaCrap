.class Lcom/etermax/preguntados/ui/dashboard/e$8;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/e;->H()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/e;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/e$8;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e$8;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/e;->h(Lcom/etermax/preguntados/ui/dashboard/e;)V

    .line 542
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e$8;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getQuantity()I

    move-result v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/e$8;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e$8;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->isUnlimited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e$8;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/e;->c(Lcom/etermax/preguntados/ui/dashboard/e;)V

    .line 545
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .parameter

    .prologue
    .line 535
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e$8;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getNextIncrement()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/etermax/preguntados/h/c;->b(J)Ljava/lang/String;

    move-result-object v1

    .line 536
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e$8;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->lives_remaining_time:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    return-void
.end method
