.class Lcom/koushikdutta/ion/IonLog;
.super Ljava/lang/Object;
.source "IonLog.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "ION"

.field public static debug:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 29
    sget-boolean v0, Lcom/koushikdutta/ion/IonLog;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "ION"

    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 12
    sget-boolean v0, Lcom/koushikdutta/ion/IonLog;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "ION"

    .line 13
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ION"

    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "ION"

    .line 17
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ION"

    .line 38
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "ION"

    .line 21
    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ION"

    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "ION"

    .line 25
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
