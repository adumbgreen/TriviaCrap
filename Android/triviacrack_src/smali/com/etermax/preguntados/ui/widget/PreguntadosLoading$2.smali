.class Lcom/etermax/preguntados/ui/widget/PreguntadosLoading$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading$2;->a:Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading$2;->a:Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->a(Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 83
    return-void
.end method
