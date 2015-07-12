.class Lcom/etermax/preguntados/ui/tvshow/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 193
    iput-object p1, p0, Lcom/etermax/preguntados/ui/tvshow/a/a$2;->a:Lcom/etermax/preguntados/ui/tvshow/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 196
    if-eqz p2, :cond_0

    .line 197
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a$2;->a:Lcom/etermax/preguntados/ui/tvshow/a/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/tvshow/a/a;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a$2;->a:Lcom/etermax/preguntados/ui/tvshow/a/a;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->a(Lcom/etermax/preguntados/ui/tvshow/a/a;)V

    .line 201
    :cond_0
    return-void
.end method
