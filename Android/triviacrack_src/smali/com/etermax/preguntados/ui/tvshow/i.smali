.class Lcom/etermax/preguntados/ui/tvshow/i;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/tvshow/g;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/ui/tvshow/g;JJ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/etermax/preguntados/ui/tvshow/i;->a:Lcom/etermax/preguntados/ui/tvshow/g;

    .line 217
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/etermax/preguntados/ui/tvshow/i;->b:I

    .line 219
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/i;->a:Lcom/etermax/preguntados/ui/tvshow/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/etermax/preguntados/ui/tvshow/g;->p:Z

    .line 238
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/i;->a:Lcom/etermax/preguntados/ui/tvshow/g;

    invoke-static {v0, v2}, Lcom/etermax/preguntados/ui/tvshow/g;->a(Lcom/etermax/preguntados/ui/tvshow/g;Z)V

    .line 239
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/i;->a:Lcom/etermax/preguntados/ui/tvshow/g;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/tvshow/g;->a:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->i:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 240
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/i;->a:Lcom/etermax/preguntados/ui/tvshow/g;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/tvshow/g;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 241
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/i;->a:Lcom/etermax/preguntados/ui/tvshow/g;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/tvshow/g;->t:Landroid/widget/TextView;

    const-string v1, "0\'"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/i;->a:Lcom/etermax/preguntados/ui/tvshow/g;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/tvshow/g;->a(Lcom/etermax/preguntados/ui/tvshow/g;)V

    .line 243
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .parameter

    .prologue
    .line 223
    long-to-double v0, p1

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 224
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/i;->a:Lcom/etermax/preguntados/ui/tvshow/g;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/tvshow/g;->s:Landroid/widget/ProgressBar;

    long-to-int v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 226
    iget v1, p0, Lcom/etermax/preguntados/ui/tvshow/i;->b:I

    if-eq v0, v1, :cond_0

    .line 227
    iput v0, p0, Lcom/etermax/preguntados/ui/tvshow/i;->b:I

    .line 228
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/i;->a:Lcom/etermax/preguntados/ui/tvshow/g;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/tvshow/g;->t:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/i;->a:Lcom/etermax/preguntados/ui/tvshow/g;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/tvshow/g;->a:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->h:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 231
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/i;->a:Lcom/etermax/preguntados/ui/tvshow/g;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/tvshow/g;->t:Landroid/widget/TextView;

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Lcom/etermax/preguntados/ui/a/c;->a(J)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 234
    :cond_0
    return-void
.end method
