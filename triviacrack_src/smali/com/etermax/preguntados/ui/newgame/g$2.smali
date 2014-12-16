.class Lcom/etermax/preguntados/ui/newgame/g$2;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/newgame/g;->a(I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/newgame/g;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/newgame/g;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/g$2;->a:Lcom/etermax/preguntados/ui/newgame/g;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/g$2;->a:Lcom/etermax/preguntados/ui/newgame/g;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/etermax/preguntados/ui/newgame/g;->b:J

    .line 101
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/g$2;->a:Lcom/etermax/preguntados/ui/newgame/g;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/newgame/g;->a(Lcom/etermax/preguntados/ui/newgame/g;)V

    .line 102
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/g$2;->a:Lcom/etermax/preguntados/ui/newgame/g;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/g;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/g$2;->a:Lcom/etermax/preguntados/ui/newgame/g;

    iput-wide p1, v0, Lcom/etermax/preguntados/ui/newgame/g;->b:J

    .line 97
    return-void
.end method
