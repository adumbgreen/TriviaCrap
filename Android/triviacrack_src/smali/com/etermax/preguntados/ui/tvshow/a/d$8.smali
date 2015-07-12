.class Lcom/etermax/preguntados/ui/tvshow/a/d$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/tvshow/a/d;->a(Lorg/a/a/b/a;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/etermax/preguntados/ui/tvshow/a/d;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/tvshow/a/d;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/etermax/preguntados/ui/tvshow/a/d$8;->b:Lcom/etermax/preguntados/ui/tvshow/a/d;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/tvshow/a/d$8;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/d$8;->b:Lcom/etermax/preguntados/ui/tvshow/a/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/a/d$8;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/d;->a(Landroid/widget/TextView;)V

    .line 213
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    return-void
.end method
