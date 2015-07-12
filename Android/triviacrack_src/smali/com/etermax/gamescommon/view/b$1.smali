.class Lcom/etermax/gamescommon/view/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/view/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/etermax/gamescommon/view/b;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/view/b;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/etermax/gamescommon/view/b$1;->b:Lcom/etermax/gamescommon/view/b;

    iput p2, p0, Lcom/etermax/gamescommon/view/b$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/gamescommon/view/b$1;->b:Lcom/etermax/gamescommon/view/b;

    iget-object v0, v0, Lcom/etermax/gamescommon/view/b;->a:Lcom/etermax/gamescommon/view/FlagsLayout;

    iget v1, p0, Lcom/etermax/gamescommon/view/b$1;->a:I

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/view/FlagsLayout;->a(I)V

    .line 57
    return-void
.end method
