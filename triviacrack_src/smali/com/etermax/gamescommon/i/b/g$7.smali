.class Lcom/etermax/gamescommon/i/b/g$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/i/b/g;->a(Landroid/widget/ToggleButton;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ToggleButton;

.field final synthetic b:Lcom/etermax/gamescommon/i/b/g;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/i/b/g;Landroid/widget/ToggleButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/g$7;->b:Lcom/etermax/gamescommon/i/b/g;

    iput-object p2, p0, Lcom/etermax/gamescommon/i/b/g$7;->a:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 302
    new-instance v0, Lcom/etermax/gamescommon/i/b/m;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/g$7;->b:Lcom/etermax/gamescommon/i/b/g;

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/g$7;->a:Landroid/widget/ToggleButton;

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/i/b/m;-><init>(Lcom/etermax/gamescommon/i/b/g;Landroid/widget/ToggleButton;)V

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/g$7;->b:Lcom/etermax/gamescommon/i/b/g;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/i/b/m;->a(Ljava/lang/Object;)Z

    .line 303
    return-void
.end method
