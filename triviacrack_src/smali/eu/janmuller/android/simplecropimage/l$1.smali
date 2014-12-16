.class Leu/janmuller/android/simplecropimage/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/janmuller/android/simplecropimage/l;
.end annotation


# instance fields
.field final synthetic a:Leu/janmuller/android/simplecropimage/l;


# direct methods
.method constructor <init>(Leu/janmuller/android/simplecropimage/l;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Leu/janmuller/android/simplecropimage/l$1;->a:Leu/janmuller/android/simplecropimage/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/l$1;->a:Leu/janmuller/android/simplecropimage/l;

    invoke-static {v0}, Leu/janmuller/android/simplecropimage/l;->a(Leu/janmuller/android/simplecropimage/l;)Leu/janmuller/android/simplecropimage/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/l$1;->a:Leu/janmuller/android/simplecropimage/l;

    invoke-virtual {v0, v1}, Leu/janmuller/android/simplecropimage/MonitoredActivity;->b(Leu/janmuller/android/simplecropimage/i;)V

    .line 137
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/l$1;->a:Leu/janmuller/android/simplecropimage/l;

    invoke-static {v0}, Leu/janmuller/android/simplecropimage/l;->b(Leu/janmuller/android/simplecropimage/l;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/l$1;->a:Leu/janmuller/android/simplecropimage/l;

    invoke-static {v0}, Leu/janmuller/android/simplecropimage/l;->b(Leu/janmuller/android/simplecropimage/l;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 139
    :cond_0
    return-void
.end method
