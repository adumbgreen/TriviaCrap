.class public Lcom/etermax/preguntados/ui/profile/ProfileRankingsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;

.field c:Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;

.field d:Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method public setRankings(Lcom/etermax/preguntados/datasource/dto/PodiumDTO;)V
    .locals 3
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/o;->weekly_ranking:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView;->b:Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;

    sget-object v1, Lcom/etermax/preguntados/ui/profile/l;->a:Lcom/etermax/preguntados/ui/profile/l;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/PodiumDTO;->getFirstPlace()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;->a(Lcom/etermax/preguntados/ui/profile/l;I)V

    .line 41
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView;->c:Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;

    sget-object v1, Lcom/etermax/preguntados/ui/profile/l;->b:Lcom/etermax/preguntados/ui/profile/l;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/PodiumDTO;->getSecondPlace()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;->a(Lcom/etermax/preguntados/ui/profile/l;I)V

    .line 42
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView;->d:Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;

    sget-object v1, Lcom/etermax/preguntados/ui/profile/l;->c:Lcom/etermax/preguntados/ui/profile/l;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/PodiumDTO;->getThirdPlace()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;->a(Lcom/etermax/preguntados/ui/profile/l;I)V

    .line 43
    return-void
.end method
