.class public Lcom/etermax/tools/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;


# direct methods
.method public static a(Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/etermax/tools/g/a;->a:Z

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    sput-object p0, Lcom/etermax/tools/g/a;->b:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/etermax/tools/g/a;->a:Z

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/etermax/tools/g/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/etermax/tools/g/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
