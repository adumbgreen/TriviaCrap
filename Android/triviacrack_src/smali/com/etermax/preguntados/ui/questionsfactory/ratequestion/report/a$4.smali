.class Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a$4;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 82
    if-eqz p2, :cond_0

    .line 83
    check-cast p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a$4;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/f;->transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    check-cast p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a$4;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/f;->grayLight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_0
.end method
