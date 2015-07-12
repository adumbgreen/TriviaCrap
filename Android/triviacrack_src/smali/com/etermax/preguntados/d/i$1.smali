.class Lcom/etermax/preguntados/d/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/d/i;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/etermax/preguntados/d/j;

.field final synthetic c:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

.field final synthetic d:Lcom/etermax/preguntados/d/i;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/d/i;ILcom/etermax/preguntados/d/j;Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/etermax/preguntados/d/i$1;->d:Lcom/etermax/preguntados/d/i;

    iput p2, p0, Lcom/etermax/preguntados/d/i$1;->a:I

    iput-object p3, p0, Lcom/etermax/preguntados/d/i$1;->b:Lcom/etermax/preguntados/d/j;

    iput-object p4, p0, Lcom/etermax/preguntados/d/i$1;->c:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 153
    iget v0, p0, Lcom/etermax/preguntados/d/i$1;->a:I

    iget-object v1, p0, Lcom/etermax/preguntados/d/i$1;->d:Lcom/etermax/preguntados/d/i;

    invoke-static {v1}, Lcom/etermax/preguntados/d/i;->a(Lcom/etermax/preguntados/d/i;)[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/etermax/preguntados/d/i$1;->d:Lcom/etermax/preguntados/d/i;

    iget-object v0, v0, Lcom/etermax/preguntados/d/i;->a:Lcom/etermax/preguntados/d/h;

    iget-object v1, p0, Lcom/etermax/preguntados/d/i$1;->b:Lcom/etermax/preguntados/d/j;

    iget-object v2, p0, Lcom/etermax/preguntados/d/i$1;->c:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/d/h;->a(Lcom/etermax/preguntados/d/h;Lcom/etermax/preguntados/d/j;Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/d/i$1;->d:Lcom/etermax/preguntados/d/i;

    iget-object v0, v0, Lcom/etermax/preguntados/d/i;->a:Lcom/etermax/preguntados/d/h;

    iget-object v1, p0, Lcom/etermax/preguntados/d/i$1;->b:Lcom/etermax/preguntados/d/j;

    iget-object v2, p0, Lcom/etermax/preguntados/d/i$1;->c:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/d/h;->b(Lcom/etermax/preguntados/d/h;Lcom/etermax/preguntados/d/j;Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;)V

    goto :goto_0
.end method
