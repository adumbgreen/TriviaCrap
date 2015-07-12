.class Lcom/etermax/preguntados/ui/newgame/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/ViewSwitcher;

.field private final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/ViewSwitcher;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/b/f;->a:Landroid/widget/ViewSwitcher;

    .line 54
    iput-object p2, p0, Lcom/etermax/preguntados/ui/newgame/b/f;->b:Landroid/widget/TextView;

    .line 55
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ViewSwitcher;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/f;->a:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method public b()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/f;->b:Landroid/widget/TextView;

    return-object v0
.end method
