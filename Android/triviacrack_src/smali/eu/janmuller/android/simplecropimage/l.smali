.class Leu/janmuller/android/simplecropimage/l;
.super Leu/janmuller/android/simplecropimage/h;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Leu/janmuller/android/simplecropimage/MonitoredActivity;

.field private final b:Landroid/app/ProgressDialog;

.field private final c:Ljava/lang/Runnable;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Leu/janmuller/android/simplecropimage/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Leu/janmuller/android/simplecropimage/h;-><init>()V

    .line 133
    new-instance v0, Leu/janmuller/android/simplecropimage/l$1;

    invoke-direct {v0, p0}, Leu/janmuller/android/simplecropimage/l$1;-><init>(Leu/janmuller/android/simplecropimage/l;)V

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/l;->e:Ljava/lang/Runnable;

    .line 144
    iput-object p1, p0, Leu/janmuller/android/simplecropimage/l;->a:Leu/janmuller/android/simplecropimage/MonitoredActivity;

    .line 145
    iput-object p3, p0, Leu/janmuller/android/simplecropimage/l;->b:Landroid/app/ProgressDialog;

    .line 146
    iput-object p2, p0, Leu/janmuller/android/simplecropimage/l;->c:Ljava/lang/Runnable;

    .line 147
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/l;->a:Leu/janmuller/android/simplecropimage/MonitoredActivity;

    invoke-virtual {v0, p0}, Leu/janmuller/android/simplecropimage/MonitoredActivity;->a(Leu/janmuller/android/simplecropimage/i;)V

    .line 148
    iput-object p4, p0, Leu/janmuller/android/simplecropimage/l;->d:Landroid/os/Handler;

    .line 149
    return-void
.end method

.method static synthetic a(Leu/janmuller/android/simplecropimage/l;)Leu/janmuller/android/simplecropimage/MonitoredActivity;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/l;->a:Leu/janmuller/android/simplecropimage/MonitoredActivity;

    return-object v0
.end method

.method static synthetic b(Leu/janmuller/android/simplecropimage/l;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/l;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public b(Leu/janmuller/android/simplecropimage/MonitoredActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/l;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 165
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/l;->d:Landroid/os/Handler;

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/l;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method public c(Leu/janmuller/android/simplecropimage/MonitoredActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/l;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 178
    return-void
.end method

.method public d(Leu/janmuller/android/simplecropimage/MonitoredActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/l;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 172
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 154
    :try_start_0
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/l;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/l;->d:Landroid/os/Handler;

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/l;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void

    .line 156
    :catchall_0
    move-exception v0

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/l;->d:Landroid/os/Handler;

    iget-object v2, p0, Leu/janmuller/android/simplecropimage/l;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
