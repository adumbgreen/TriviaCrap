.class public abstract Lcom/etermax/gamescommon/h/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/view/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/etermax/gamescommon/h/b;",
        ">",
        "Lcom/etermax/tools/navigation/b",
        "<TT;>;",
        "Lcom/etermax/gamescommon/view/c;"
    }
.end annotation


# instance fields
.field protected a:Lcom/etermax/gamescommon/language/Language;

.field public b:Lcom/etermax/gamescommon/view/FlagsLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/h/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/etermax/gamescommon/h/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/h/a$1;-><init>(Lcom/etermax/gamescommon/h/a;)V

    return-object v0
.end method

.method protected a(Lcom/etermax/gamescommon/language/Language;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "last_played_language"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    const-string v1, "selected_flag_item_tag"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a;->b:Lcom/etermax/gamescommon/view/FlagsLayout;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/view/FlagsLayout;->setCallback(Lcom/etermax/gamescommon/view/c;)V

    .line 59
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a;->b:Lcom/etermax/gamescommon/view/FlagsLayout;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a;->c()[Lcom/etermax/gamescommon/language/Language;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/view/FlagsLayout;->setAvailableLanguages(Ljava/util/List;)V

    .line 60
    return-void
.end method

.method public b(Lcom/etermax/gamescommon/language/Language;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/etermax/gamescommon/h/a;->a:Lcom/etermax/gamescommon/language/Language;

    .line 90
    return-void
.end method

.method protected abstract c()[Lcom/etermax/gamescommon/language/Language;
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a;->a:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/h/a;->a(Lcom/etermax/gamescommon/language/Language;)V

    .line 67
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/gamescommon/h/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/h/a;->a:Lcom/etermax/gamescommon/language/Language;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/h/b;->a(Lcom/etermax/gamescommon/language/Language;)V

    .line 68
    return-void
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a;->a:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/h/a;->a(Lcom/etermax/gamescommon/language/Language;)V

    .line 73
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/gamescommon/h/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/h/a;->a:Lcom/etermax/gamescommon/language/Language;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/h/b;->b(Lcom/etermax/gamescommon/language/Language;)V

    .line 74
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a;->a()Lcom/etermax/gamescommon/h/b;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    sget v0, Lcom/etermax/k;->new_game_fragment_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
