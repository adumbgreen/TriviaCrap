.class Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$5;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$5;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$5;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->c(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;)V

    .line 296
    :cond_0
    return-void
.end method
