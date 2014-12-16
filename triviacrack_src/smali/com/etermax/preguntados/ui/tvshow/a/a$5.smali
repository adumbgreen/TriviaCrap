.class Lcom/etermax/preguntados/ui/tvshow/a/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/tvshow/a/a;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/tvshow/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/tvshow/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/etermax/preguntados/ui/tvshow/a/a$5;->a:Lcom/etermax/preguntados/ui/tvshow/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 225
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a$5;->a:Lcom/etermax/preguntados/ui/tvshow/a/a;

    sget v1, Lcom/etermax/o;->female:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/a/a$5;->a:Lcom/etermax/preguntados/ui/tvshow/a/a;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/tvshow/a/a;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a$5;->a:Lcom/etermax/preguntados/ui/tvshow/a/a;

    sget v1, Lcom/etermax/o;->male:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
