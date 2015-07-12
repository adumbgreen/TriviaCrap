.class Leu/janmuller/android/simplecropimage/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Leu/janmuller/android/simplecropimage/b;

.field public b:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Leu/janmuller/android/simplecropimage/b;->b:Leu/janmuller/android/simplecropimage/b;

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/d;->a:Leu/janmuller/android/simplecropimage/b;

    return-void
.end method

.method synthetic constructor <init>(Leu/janmuller/android/simplecropimage/a$1;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Leu/janmuller/android/simplecropimage/d;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/d;->a:Leu/janmuller/android/simplecropimage/b;

    sget-object v1, Leu/janmuller/android/simplecropimage/b;->a:Leu/janmuller/android/simplecropimage/b;

    if-ne v0, v1, :cond_0

    .line 60
    const-string v0, "Cancel"

    .line 66
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/d;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/d;->a:Leu/janmuller/android/simplecropimage/b;

    sget-object v1, Leu/janmuller/android/simplecropimage/b;->b:Leu/janmuller/android/simplecropimage/b;

    if-ne v0, v1, :cond_1

    .line 62
    const-string v0, "Allow"

    goto :goto_0

    .line 64
    :cond_1
    const-string v0, "?"

    goto :goto_0
.end method
