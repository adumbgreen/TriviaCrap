.class Lcom/etermax/preguntados/ui/tvshow/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field a:Landroid/widget/TextView;

.field final synthetic b:Lcom/etermax/preguntados/ui/tvshow/a/a;


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/ui/tvshow/a/a;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/etermax/preguntados/ui/tvshow/a/c;->b:Lcom/etermax/preguntados/ui/tvshow/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p2, p0, Lcom/etermax/preguntados/ui/tvshow/a/c;->a:Landroid/widget/TextView;

    .line 523
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 527
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 531
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/c;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 532
    return-void
.end method
