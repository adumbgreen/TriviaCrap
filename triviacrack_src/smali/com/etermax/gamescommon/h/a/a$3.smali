.class Lcom/etermax/gamescommon/h/a/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/gamescommon/h/a/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/h/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/h/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/etermax/gamescommon/h/a/a$3;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a$3;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-static {v0, p2}, Lcom/etermax/gamescommon/h/a/a;->a(Lcom/etermax/gamescommon/h/a/a;I)V

    .line 229
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a$3;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/h/a/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->search_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method
