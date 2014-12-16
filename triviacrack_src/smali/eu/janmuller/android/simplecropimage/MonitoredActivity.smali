.class public Leu/janmuller/android/simplecropimage/MonitoredActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Leu/janmuller/android/simplecropimage/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/MonitoredActivity;->a:Ljava/util/ArrayList;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Leu/janmuller/android/simplecropimage/i;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(Leu/janmuller/android/simplecropimage/i;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/janmuller/android/simplecropimage/i;

    .line 87
    invoke-interface {v0, p0}, Leu/janmuller/android/simplecropimage/i;->a(Leu/janmuller/android/simplecropimage/MonitoredActivity;)V

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 95
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/janmuller/android/simplecropimage/i;

    .line 96
    invoke-interface {v0, p0}, Leu/janmuller/android/simplecropimage/i;->b(Leu/janmuller/android/simplecropimage/MonitoredActivity;)V

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 104
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/janmuller/android/simplecropimage/i;

    .line 105
    invoke-interface {v0, p0}, Leu/janmuller/android/simplecropimage/i;->c(Leu/janmuller/android/simplecropimage/MonitoredActivity;)V

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 113
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/janmuller/android/simplecropimage/i;

    .line 114
    invoke-interface {v0, p0}, Leu/janmuller/android/simplecropimage/i;->d(Leu/janmuller/android/simplecropimage/MonitoredActivity;)V

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method
